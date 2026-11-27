#!/usr/bin/env python3
"""Herkunfts-Werkzeug (kein Unterrichtsmaterial).

Erwartet im Arbeitsverzeichnis die AÖF-Jahreslisten als fm2019.pdf ...
fm2025.pdf (von den in daten/README.md verlinkten AÖF-URLs) und die Seite
als fm2026.html. Aufruf:

    python3 extract.py fm2025.pdf > fm2025.txt   # je Jahrgang
    python3 build_csv.py                          # schreibt die Roh-CSV

Die Extraktion ist halbautomatisch: die CSV wurde anschliessend zeilenweise
gegen die PDFs geprueft (Zellinhalte, 24 Stichproben, Kopfzahlen).
"""
import xml.etree.ElementTree as ET
import subprocess, re, json, sys

YEARS=[2019,2020,2021,2022,2023,2024,2025]
PAIRS={2019:[(17,18),(19,20)],2021:[(20,21)],2023:[(11,12)],2024:[(28,29)]}
FOOT=('AÖF','aoef.at','facebook.com','twitter.com','Tel. +43','Bacherplatz')
STOP=('Gesamtzahl','Stand:','Zahl laut','Femizid ist','Hinweis','Die Zählung','Diana Russell')
DATE_RE=re.compile(r'^\d{1,2}\.\d{1,2}\.\d{2,4}')
HDRLABEL={'Nr.':'nr','Datum':'datum','Ort':'ort','Beziehung':'bez','Alter':'alter','Herkunft':'herk',
          'Sonstiger':'kontext','Kontext':'kontext','mitbe-':'kinder','Kinder':'kinder',
          'Grober Hergang':'hergang','grober Hergang':'hergang','Quelle/Link':'quelle'}

def elements(pdf):
    out=subprocess.run(['pdftohtml','-xml','-stdout',pdf],capture_output=True,text=True).stdout
    root=ET.fromstring(out); els=[]
    for pg in root.findall('page'):
        for t in pg.iter('text'):
            a=t.find('a')
            els.append(dict(page=int(pg.get('number')),top=int(t.get('top')),left=int(t.get('left')),
                            w=int(t.get('width')),txt=''.join(t.itertext()),
                            href=a.get('href') if a is not None else None))
    return els

def clean(s): return re.sub(r'\s+',' ',s).strip()

def split_nr_date(els):
    """'25  7.11.2023' in one text element -> separate nr and date fragments."""
    out=[]
    for e in els:
        m=re.match(r'^(\d{1,3})(\s{2,})(\d{1,2}\.\d{1,2}\.\d{3,4}.*)$',e['txt'])
        if m and len(e['txt'])<=40:
            n=len(e['txt'])
            frac=m.end(1)/n
            a=dict(e); a['txt']=m.group(1); a['w']=int(e['w']*frac); a['_col']='nr'
            b=dict(e); b['txt']=e['txt'][m.end(1):].strip(); b['left']=e['left']+int(e['w']*frac)
            b['w']=max(4,int(e['w']*(1-frac))); b['href']=e['href']; b['_col']='datum'
            out+= [a,b]
            continue
        m2=re.match(r'^(\d{1,2}\.\d{1,2}\.\d{3,4})(\s+)(.*\S.*)$',e['txt'])
        if m2 and e['left']<400:
            n=len(e['txt']); frac=m2.end(1)/n
            a=dict(e); a['txt']=m2.group(1); a['w']=int(e['w']*frac); a['_col']='datum'
            b=dict(e); b['txt']=e['txt'][m2.end(1):].strip(); b['left']=e['left']+int(e['w']*frac)
            b['w']=max(4,int(e['w']*(1-frac)))
            out+=[a,b]
            continue
        out.append(e)
    return out

def build(year):
    raw=elements(f'fm{year}.pdf')
    raw=split_nr_date(raw)

    # header blocks: anchors per table
    hdrs=sorted([e for e in raw if clean(e['txt'])=='Nr.'],key=lambda e:(e['page'],e['top']))
    hblocks=[]
    for hh in hdrs:
        anchors={}
        cand=[e for e in raw if e['page']==hh['page'] and -45<=e['top']-hh['top']<=75]
        for e in sorted(cand,key=lambda x:(x['top'],x['left'])):
            t=clean(e['txt'])
            for lab,col in HDRLABEL.items():
                if (t==lab or t.startswith(lab)) and col not in anchors and len(t)<=30:
                    anchors[col]=e['left']
                    break
        if 'nr' in anchors and 'datum' in anchors and 'ort' in anchors and 'bez' in anchors:
            hblocks.append((hh['page'],hh['top'],anchors))
    if not hblocks: raise SystemExit(f'keine Kopfzeile in {year}')

    def in_header(e):
        return any(e['page']==hp and -50<=e['top']-ht<=80 for hp,ht,_ in hblocks)

    def keep(e):
        t=clean(e['txt'])
        if not t: return False
        if any(f in t for f in FOOT): return False
        if re.fullmatch(r'\d{1,2}',t) and e['left']>1130: return False
        if t in HDRLABEL and in_header(e): return False
        if t in ('Sonstiger Kontext','Grober Hergang','grober Hergang','Quelle/Link') and in_header(e): return False
        if t in ('Opfer /','Täter','Täter(in)','Täterin','mutmaßlicher','mutmaßliche','Täter(-in)','Nr','Nr.') and in_header(e): return False
        if t in ('|','›','»','•','·'): return False
        return True
    els=[e for e in raw if keep(e)]

    def hdr_at(pos):
        cur=hblocks[0][2]
        for hp,ht,a in hblocks:
            if (hp,ht)<=pos: cur=a
            else: break
        return cur

    # stops (paragraphs after the tables)
    hdrtop=hblocks[0][1]
    stops=sorted([(e['page'],e['top']) for e in els
                  if any(clean(e['txt']).startswith(x) for x in STOP) and (e['page']>1 or e['top']>hdrtop+5)])
    heads=sorted([e for e in els if 'laut Medienberichten' in clean(e['txt'])],key=lambda e:(e['page'],e['top']))
    if stops:
        keepel=[]
        for e in els:
            pos=(e['page'],e['top']); drop=False
            for st in stops:
                if st<=pos:
                    nxt=[(x['page'],x['top']) for x in heads if (x['page'],x['top'])>st]
                    end=nxt[0] if nxt else (99,0)
                    if pos<end: drop=True
                else: break
            if not drop: keepel.append(e)
        els=keepel

    def cols_of(a):
        seq=['nr','datum','ort','bez','alter']
        if 'kontext' in a: seq.append('kontext')
        seq.append('herk')
        if 'kinder' in a: seq.append('kinder')
        seq+= ['hergang','quelle']
        return seq,a

    def col_of(e,a):
        if e['href']: return 'quelle'
        seq,a=cols_of(a)
        c=e['left']+e['w']/2.0
        best=min(range(len(seq)),key=lambda i:abs(c-a[seq[i]]))
        return seq[best]

    def col_of_cluster(cl,a):
        if cl[0].get('_col'): return cl[0]['_col']
        if any(x['href'] for x in cl): return 'quelle'
        seq,a=cols_of(a)
        c=cl[0]['left']+(cl[-1]['left']+cl[-1]['w']-cl[0]['left'])/2.0
        best=min(range(len(seq)),key=lambda i:abs(c-a[seq[i]]))
        return seq[best]

    # row starts
    starts=[]
    for e in els:
        t=clean(e['txt'])
        if not re.fullmatch(r'\d{1,3}',t): continue
        a=hdr_at((e['page'],e['top']))
        if not (a['nr']-35<=e['left']<=a['nr']+30): continue
        if e['page']==1 and e['top']<=hdrtop+5: continue
        starts.append((e['page'],e['top']))
    starts=sorted(set(starts))
    ded=[]
    for s in starts:
        if ded and s[0]==ded[-1][0] and s[1]-ded[-1][1]<8: continue
        ded.append(s)
    starts=ded

    def band_of(e):
        idx=-1
        for i,s in enumerate(starts):
            if s<=(e['page'],e['top']): idx=i
            else: break
        if idx+1<len(starts):
            nxt=starts[idx+1]; a=hdr_at(nxt)
            above = e['href'] or (DATE_RE.match(clean(e['txt'])) and e['left']<a['datum']+30)
            if above and nxt[0]==e['page'] and 0<=nxt[1]-e['top']<=14: idx+=1
        return idx

    cats=[]
    for e in heads[1:]:
        t=clean(e['txt'])
        if not any(c[0]==e['page'] and abs(c[1]-e['top'])<3 for c in cats):
            cats.append((e['page'],e['top'],t))
    cats.sort()

    bands={}
    for e in els:
        if any(c[0]==e['page'] and abs(c[1]-e['top'])<14 for c in cats): continue
        bands.setdefault(band_of(e),[]).append(e)

    rows=[]
    for i in sorted(bands):
        if i<0: continue
        a=hdr_at(starts[i])
        frs=sorted(bands[i],key=lambda e:(e['page'],e['top'],e['left']))
        lines=[]
        for e in frs:
            if lines and lines[-1][0]['page']==e['page'] and abs(lines[-1][0]['top']-e['top'])<=3:
                lines[-1].append(e)
            else: lines.append([e])
        cells={}; qlines=[]
        seq,_=cols_of(a)
        def boundary_after(col):
            i=seq.index(col)
            return ((a[seq[i]]+a[seq[i+1]])/2) if i+1<len(seq) else 10**6
        for ln in lines:
            ln.sort(key=lambda e:e['left']); cluster=[ln[0]]
            for e in ln[1:]:
                gap=e['left']-(cluster[-1]['left']+cluster[-1]['w'])
                punct = len(clean(e['txt']))<=2 and not re.search(r'[0-9A-Za-z]',e['txt']) and gap<=15
                joinable = (not e.get('_col') and not cluster[0].get('_col')) and (
                    punct or (gap<=3 and (e['w']<=40 or e['left']<boundary_after(col_of_cluster(cluster,a)))))
                if joinable: cluster.append(e)
                else:
                    cells.setdefault(col_of_cluster(cluster,a),[]).append(''.join(c['txt'] for c in cluster))
                    qlines.append(cluster); cluster=[e]
            cells.setdefault(col_of_cluster(cluster,a),[]).append(''.join(c['txt'] for c in cluster))
            qlines.append(cluster)
        out={k:clean(' '.join(v)) for k,v in cells.items()}
        out['_qlines']=[(''.join(c['txt'] for c in x),next((c['href'] for c in x if c.get('href')),None))
                        for x in qlines
                        if col_of_cluster(x,a)=='quelle' and ''.join(c['txt'] for c in x).strip()]
        if not clean(out.get('nr','')):
            m=re.match(r'^(\d{1,3})(\d{1,2}\.\d{1,2}\.\d{2,4})$',clean(out.get('datum','')))
            if m:
                out['nr']=m.group(1); out['datum']=m.group(2)
        out['_start']=starts[i]
        rows.append([i,out])

    pairs=PAIRS.get(year,[]); res=[]; k=0
    while k<len(rows):
        cells=rows[k][1]; nrc=clean(cells.get('nr',''))
        m=re.match(r'(\d+)',nrc)
        if k+1<len(rows) and m:
            n=int(m.group(1)); nxt=rows[k+1][1]
            m2=re.match(r'(\d+)',clean(nxt.get('nr','')))
            if m2 and int(m2.group(1))==n+1 and (n,n+1) in pairs:
                for kk,vv in nxt.items():
                    if kk=='_qlines': cells['_qlines']=cells.get('_qlines',[])+vv
                    elif kk=='_start': pass
                    elif kk=='nr': cells['nr']=clean(cells.get('nr','')+' '+vv)
                    elif kk=='quelle': cells['quelle']=clean(cells.get('quelle','')+' '+vv)
                    else: cells[kk]=clean(cells.get(kk,'')+' '+vv)
                k+=1
        res.append([rows[k][0],cells]); k+=1
    rows=res

    # URLs wrapped across a row boundary: move the trailing fragment down
    urlfrag=re.compile(r'^[A-Za-z0-9%_.~/-]+$')
    for k in range(1,len(rows)):
        cur=rows[k][1].get('_qlines',[]); prev=rows[k-1][1].get('_qlines',[])
        while cur and prev and not cur[0][1] and urlfrag.match(cur[0][0].strip()):
            if not prev[-1][0].strip().startswith('http'): break
            cur.insert(0,prev.pop())
    defin=''
    for e in sorted([x for x in els if x['page']==1 and x['top']<hdrtop],key=lambda e:(e['top'],e['left'])):
        t=clean(e['txt'])
        if t.startswith(('Mutmaßliche Femizide','Frauenmorde durch')):
            defin=t; dtop=e['top']; break
    if defin:
        for e in sorted([x for x in els if x['page']==1],key=lambda e:e['top']):
            t=clean(e['txt'])
            if t.startswith('laut Medienberichten') and e['top']>=dtop:
                defin=clean(defin+' '+t); break
    return defin,cats,starts,rows

if __name__=='__main__':
    y=int(sys.argv[1]) if len(sys.argv)>1 else 2025
    d,c,s,r=build(y)
    print('DEF:',d); print('CATS:',c); print('STARTS:',s); print('ROWS',len(r))
    for i,cells in r:
        print(i,json.dumps(cells,ensure_ascii=False))

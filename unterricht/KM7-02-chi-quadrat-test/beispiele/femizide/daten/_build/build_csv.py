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
import csv, re, sys
from html.parser import HTMLParser
import extract as X

URL={'2019':'https://www.aoef.at/images/04a_zahlen-und-daten/Frauenmorde_2019_Liste-AOEF.pdf',
     '2020':'https://www.aoef.at/images/04a_zahlen-und-daten/Frauenmorde_2020_Liste-AOEF.pdf',
     '2021':'https://www.aoef.at/images/04a_zahlen-und-daten/Frauenmorde_2021_Liste-AOEF.pdf',
     '2022':'https://www.aoef.at/images/04a_zahlen-und-daten/Frauenmorde-2022_Liste-AOEF.pdf',
     '2023':'https://www.aoef.at/images/04a_zahlen-und-daten/Frauenmorde-2023_Liste-AOeF.pdf',
     '2024':'https://www.aoef.at/images/04a_zahlen-und-daten/2024/Frauenmorde-2024_Liste-AOeF.pdf',
     '2025':'https://www.aoef.at/images/04a_zahlen-und-daten/2025/Frauenmorde-2025_Liste-AOeF.pdf',
     '2026':'https://www.aoef.at/index.php/zahlen-und-daten/femizide-in-oesterreich'}

def quelle_from_lines(qlines, fallback):
    out=[]; prevraw=None
    for raw,href in qlines:
        t=raw.strip()
        if href:
            if not out or out[-1]!=href: out.append(href)
        elif t:
            if out and out[-1].startswith('http') and t.startswith('http'):
                if t not in out: out.append(t)
            elif out and out[-1].startswith('http'):
                frag=t.replace(' ','')
                if frag not in out[-1]:
                    out[-1]=out[-1]+frag
            elif out:
                out[-1]=out[-1]+' '+t
            else:
                out.append(t)
        prevraw=raw
    res=re.sub(r'\s+',' ',' '.join(out)).strip()
    return res or fallback

def pdf_rows(year):
    d,cats,starts,rows=X.build(year)
    out=[]
    for i,cells in rows:
        st=cells.get('_start')
        cat=''
        for c in cats:
            if c[0]<st[0] or (c[0]==st[0] and c[1]<st[1]): cat=c[2]
        q=quelle_from_lines(cells.get('_qlines',[]),cells.get('quelle',''))
        rec=dict(liste_jahr=year,definition=d,kategorie_roh=cat,nr=cells.get('nr',''),
                 datum_roh=cells.get('datum',''),ort_roh=cells.get('ort',''),beziehung_roh=cells.get('bez',''),
                 alter_roh=cells.get('alter',''),herkunft_roh=cells.get('herk',''),
                 kinder_roh=cells.get('kinder',''),hergang_roh=cells.get('hergang',''),
                 quelle_roh=q,fundstelle=URL[str(year)])
        kontext=cells.get('kontext','')
        if kontext:
            rec['hergang_roh']=(rec['hergang_roh']+' | Sonstiger Kontext: '+kontext).strip(' |')
        nrn=re.findall(r'\d+',rec['nr'])
        if nrn: rec['nr']='/'.join(nrn)
        out.append(rec)
    return out

class Tab(HTMLParser):
    def __init__(s):
        super().__init__(convert_charrefs=True)
        s.tables=[]; s.cur=None; s.row=None; s.cell=None
    def handle_starttag(s,t,a):
        d=dict(a)
        if t=='table': s.cur=[]; s.tables.append(s.cur)
        elif t=='tr' and s.cur is not None: s.row=[]; s.cur.append(s.row)
        elif t in ('td','th') and s.row is not None: s.cell={'txt':'','links':[]}
        elif t=='a' and s.cell is not None and d.get('href'): s.cell['links'].append(d['href'])
        elif t=='br' and s.cell is not None: s.cell['txt']+=' '
    def handle_endtag(s,t):
        if t in ('td','th') and s.cell is not None: s.row.append(s.cell); s.cell=None
        elif t=='tr': s.row=None
        elif t=='table': s.cur=None
    def handle_data(s,d):
        if s.cell is not None: s.cell['txt']+=d

def html_rows():
    p=Tab(); p.feed(open('fm2026.html',encoding='utf-8').read())
    t=p.tables[0]
    out=[]
    for r in t[1:]:
        links=[]
        for c in r:
            for h in c['links']:
                if h not in links: links.append(h)
        out.append(dict(liste_jahr=2026,definition='Zählung Femizide 2026',kategorie_roh='',nr='',
            datum_roh=X.clean(r[0]['txt']),ort_roh=X.clean(r[1]['txt']),beziehung_roh=X.clean(r[2]['txt']),
            alter_roh=X.clean(r[3]['txt']),herkunft_roh='',kinder_roh=X.clean(r[4]['txt']),
            hergang_roh='',quelle_roh=' '.join(links) or X.clean(r[5]['txt']),
            fundstelle=URL['2026']))
    return out

if __name__=='__main__':
    rows=[]
    for y in X.YEARS: rows+=pdf_rows(y)
    rows+=html_rows()
    cols=['liste_jahr','definition','kategorie_roh','nr','datum_roh','ort_roh','beziehung_roh','alter_roh',
          'herkunft_roh','kinder_roh','hergang_roh','quelle_roh','fundstelle']
    with open('aoef_faelle_2019-2026_roh.csv','w',newline='',encoding='utf-8') as f:
        w=csv.DictWriter(f,fieldnames=cols)
        w.writeheader(); w.writerows(rows)
    from collections import Counter
    print('total',len(rows)); print(Counter(r['liste_jahr'] for r in rows))

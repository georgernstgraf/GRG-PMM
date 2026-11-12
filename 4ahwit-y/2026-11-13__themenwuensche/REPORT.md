# Wunschthemen Statistik — Auswertung der Hausübung 2026-10-23

**Kohorte:** 4AHWIT-y
**Anlass:** Unterricht am 2026-11-13 (erster Durchlauf der Themenfindung)
**Datenstand:** 2026-11-12, alle 14 Schüler-Repos frisch gepullt
**Issue:** [#50](https://github.com/georgernstgraf/GRG-PMM/issues/50)

---

## 1. Was aufgegeben war

`4ahwit-y/README.md`, Abschnitt *2026-10-23 → Aufgabe über die Ferien:
Interessensbekundung*:

> bitte schaue die Projekte/fragestellungen-statistik an und nenne (als Abgabe
> in Deinem Repo) Wunschthemen zur statistischen Bearbeitung! (darf auch was
> völlig Anderes sein!)

Kein Abgabeformat, kein Termin, keine Vorlage — bewusst offen.

---

## 2. Pull-Protokoll

14 echte Repos unter `~/gits/4ahwit-y-pmm/<user>/PMM` (14 weitere Einträge
sind Symlinks auf Dubletten). Lokaler Stand war 2026-11-01.

| Repo | Ergebnis |
|---|---|
| DavidSchmutterer | neu, 3 Commits |
| FelixRatzenberger | neu, 5 Commits |
| JakobNicklaus | neu, 2 Commits |
| JakobPichlerMini | unverändert |
| JakobRatzenberger09 | neu, 3 Commits |
| LenaP17 | neu, 8 Commits |
| LinoKnaus | unverändert |
| Marc-Julian | neu, 2 Commits |
| NoahZohmann | neu, 5 Commits |
| PatrickSchweitzer | neu, 6 Commits |
| PIC230136 | neu, 9 Commits |
| SCH230140 | neu, 1 Commit |
| TKing-9 | unverändert |
| tol230145 | neu, 2 Commits |

**11 neu, 3 unverändert, 0 Fehler.** Alle Pulls liefen als Fast-Forward, keine
Konflikte, keine lokalen Änderungen in den Repos.

---

## 3. Abgabequote: 2 von 14

| | Anzahl |
|---|---|
| Repos geprüft | 14 |
| Abgabe gefunden | **2** |
| keine Abgabe | 12 |

**Suchmethode** (damit die niedrige Zahl nicht als Suchfehler gilt): geprüft
wurden alle Dateien (nicht nur Markdown), alle Branches, `git log --since=2026-10-20`
inkl. gelöschter Dateien, Dateinamen mit `wunsch`/`thema`/`interesse`, Ordner
`2026-10-23*` sowie alle `README.md`. Treffer nur bei zwei Repos.

---

## 4. Die beiden Abgaben

### Diego T. (`tol230145`) — 4 Wünsche, priorisiert

Abgabe: `2026-10-23_wunschthemen/README.md`, sauber im Katalog-Format
(Ausgangsfrage, Daten, R-Idee, UE-Anker) und zusätzlich im Repo-README verlinkt.

| # | Thema | Katalog | UE-Anker | Daten |
|---|---|---|---|---|
| 1 | Strompreise in Europa, Österreich im Vergleich | **KM7 F1** (+ F3) | UE 1–5 | `strompreise-eu-haushalte.csv` |
| 2 | Lohnunterschiede nach Beruf/Geschlecht (t-Test, ANOVA) | **KM7 F5** | UE 6, 8 | `cps1985.csv` |
| 3 | Vornamen über die Zeit — „Wie stirbt mein Name aus?" | **F-C1** | UE 1–3, KM5 | `vornamen-oesterreich-top100.csv` |
| 4 | Kontingenztafeln mit echten Daten (χ²) | **KM7 F6** | UE 7 | `gss7402.csv` |

Priorisierung des Schülers: **Strompreise → Vornamen → CPS-Löhne → GSS/χ²**.
Begründung für Platz 1 im Original: „Die Daten sind bereits im Repo, die
Fragestellung ist klar und man kann von der EDA bis zum Konfidenzintervall
alles daran zeigen."

### Lena P. (`LenaP17`) — 3 Wünsche, unsortiert

Abgabe: `Hausübungen/Hausübung am 23.10.2026` (Textdatei ohne Endung,
committet 2026-11-01). Vollständiger Inhalt:

```
Hausübung: Wunschthemen für statistische Bearbeitung
Streuungsmaße
Häufigkeitsverteilung
Normalverteilung
```

Kein Datensatz, keine Fragestellung — drei **Methodenbegriffe** aus KM5.
Das ist eher der Wunsch nach Wiederholung/Vertiefung der Grundlagen als nach
einem neuen Datensatz.

---

## 5. Häufigkeitstabelle

| Thema | Nennungen | Wer |
|---|---|---|
| Strompreise EU/AT | 1 | Diego T. |
| Löhne nach Beruf/Geschlecht | 1 | Diego T. |
| Vornamen über die Zeit | 1 | Diego T. |
| Kontingenztafeln / χ² | 1 | Diego T. |
| Streuungsmaße | 1 | Lena P. |
| Häufigkeitsverteilung | 1 | Lena P. |
| Normalverteilung | 1 | Lena P. |

**7 Nennungen, 7 verschiedene Themen, höchste Häufigkeit = 1.** Es gibt
**keinen einzigen Doppelwunsch** — auch nicht zwischen den beiden Abgaben.

Das ist das zentrale Ergebnis: Die Stichprobe ist zu klein und zu
heterogen, um daraus eine Themenrangliste zu bauen. Der Unterricht am
2026-11-13 kann also nicht „das meistgewünschte Thema" bedienen — er muss
die Wünsche erst **erheben**.

---

## 6. Zwei Profile, die sich sauber trennen

Auffällig ist nicht die Überschneidung, sondern die **Nicht-Überschneidung**:

| | Diego T. | Lena P. |
|---|---|---|
| Ausrichtung | angewandt, datengetrieben | methodisch, grundlagenorientiert |
| Stoffebene | KM7 (Tests, Inferenz) | KM5 (Deskriptiv, Verteilungen) |
| Form | fertige Fragestellung + Datensatz | Stichwortliste |
| Aufwand | hoch (4 ausgearbeitete Blöcke) | niedrig (3 Zeilen) |

Das sind die zwei realistischen Erwartungshaltungen in der Klasse. Für die
morgige Erhebung heißt das: die Frage „welches Thema?" reicht nicht — es
braucht zusätzlich die Achse **„Grundlagen wiederholen oder an echten Daten
arbeiten?"**.

---

## 7. Die 12 ohne Abgabe

| Schüler:in | letzter Commit | Stand |
|---|---|---|
| David S. | 2026-11-06 | Chi²-HÜ vorhanden |
| Felix R. | 2026-11-06 | Chi²-HÜ vorhanden |
| Jakob N. | 2026-11-06 | Chi²-HÜ vorhanden |
| Jakob P. | 2026-10-09 | nichts seit der OpenCode-HÜ |
| Jakob R. | 2026-11-06 | Chi²-HÜ vorhanden |
| Lino K. | 2026-10-09 | nichts seit der OpenCode-HÜ |
| Marc-Julian T. | 2026-11-06 | Chi²-HÜ vorhanden |
| Noah Z. | 2026-11-06 | Chi²-HÜ vorhanden |
| Patrick S. | 2026-11-06 | Chi²-HÜ vorhanden |
| Clara P. | 2026-11-11 | Chi²-HÜ + Nacharbeit am 11.11. |
| Papan S. | 2026-11-06 | Chi²-HÜ vorhanden |
| Toni T. | 2026-10-16 | nichts seit der Binomial-HÜ |

**Wichtig:** 9 der 12 haben die Chi²-Hausübung vom 2026-11-06 abgegeben. Sie
sind also aktiv — die Wunschthemen-HÜ ist schlicht untergegangen, nicht die
Mitarbeit. Nur Jakob P., Lino K. und Toni T. haben seit zwei bzw. vier Wochen
nichts gepusht (das ist ein separates Thema, nicht Teil dieses Reports).

---

## 8. Konsequenz für morgen

1. **Die Erhebung ist der Unterrichtsinhalt**, nicht die Auswertung. Zwei
   Abgaben sind keine Basis für eine Themenwahl.
2. **Erhebung in der Stunde, nicht als Hausübung.** Die HÜ-Variante ist
   nachweislich gescheitert (2/14) — vermutlich weil das Format unklar war
   und kein Termin gesetzt wurde.
3. **Zwei Achsen abfragen:** (a) Grundlagen (KM5: Streuung, Verteilungen)
   vs. angewandte Datensätze (KM7: Tests); (b) welcher Datensatz.
4. **Katalog als Menü zeigen, nicht als Link.** Die vorhandenen
   `Projekte/fragestellungen-statistik/`-Dateien (KM7 F1–F9, F-C1…F-C16)
   sind fertig formuliert — als Auswahlvorlage in der Stunde einsetzbar,
   statt die Schüler:innen selbst suchen zu lassen.
5. **Diego T.s Abgabe als Muster vorzeigen** — sie zeigt genau das Format,
   das die anderen nicht getroffen haben.
6. **Nicht-Abgeber nicht als Säumige behandeln:** 9 von 12 sind bei der
   Chi²-HÜ aktiv gewesen.

---

## 9. Rohdaten / Reproduktion

```sh
cd ~/gits/4ahwit-y-pmm
for d in */PMM; do git -C "$d" pull --ff-only; done
grep -ril --exclude-dir=.git -E "wunsch|interessensbekundung" .
```

Originalabgaben:
- `~/gits/4ahwit-y-pmm/tol230145/PMM/2026-10-23_wunschthemen/README.md`
- `~/gits/4ahwit-y-pmm/LenaP17/PMM/Hausübungen/Hausübung am 23.10.2026`

# Daten zu `beispiele/femizide` — Herkunft, Stand, Lizenz

Alle Dateien sind **roh**: so, wie sie aus den Quellen kommen. Wer sie
vorreinigt, nimmt der Aufgabe ihren Stoff. Die Aufbereitung passiert in
`R/01`–`R/03`, nicht hier.

| Datei | Inhalt | Herkunft | Lizenz |
|---|---|---|---|
| `pks_morde-frauen_2019-2023_roh.csv` | 793 Zeilen aus der 30-seitigen PKS-Beilage: Morde und Mordversuche an Frauen 2019–2023, je Bundesland × Geschlecht × Altersklasse × Nationalität | Beilage zur Anfragebeantwortung **17838/AB** (BMI/Bundeskriminalamt, Büro 4.3, Datenstand 02.05.2024) zu **18374/J** | amtliches Dokument, öffentlich zugänglich; Weiterverwendung als Fakten |
| `aoef_faelle_2019-2026_roh.csv` | alle Fälle der AÖF-Jahreslisten 2019–2025 plus die laufende 2026er-Zählung, 1 Zeile = 1 Fall | [Femizid-Zählung des Vereins Autonome Österreichische Frauenhäuser](https://www.aoef.at/index.php/zahlen-und-daten/femizide-in-oesterreich) — Medienauswertung, kein PKS-Zugang | Fakten aus Medienberichten; die Listen selbst (PDF) liegen **nicht** im Repo |
| `herkunft-mapping.csv` | 45 Nationalitäten → Österreich / EU / Drittstaat / ungeklärt | eigene Zuordnung, Stand 2026-11-27 | projekt-eigen |

**Nicht im Repo:** die Original-PDFs. Der Slot wird auf GitHub Pages
deployt; fremde PDFs gehören nicht dorthin. Die Beilagen-PDF wird bei Bedarf
frisch geladen — `daten/_build/build_pks.py` macht das und erzeugt die CSV
neu:

```
https://www.parlament.gv.at/dokument/XXVII/AB/17838/imfname_1636158.pdf
```

## PKS: was in der CSV steht

Spalten: `abschnitt`, `zeile`, `jahr_2019` … `jahr_2023`.

`abschnitt` benennt den Druckblock der Beilage; die Blöcke mit zwei
Messreihen pro Jahr sind in zwei Abschnitte getrennt, damit jede Zeile genau
fünf Werte hat:

| `abschnitt` | Inhalt | Zeilen |
|---|---|---|
| `mord_vollendet_opfer` | Opfer je Bundesland, gesamt | 10 |
| `mord_vollendet_opfer_geklaert` | davon aufgeklärt | 10 |
| `mord_vollendet_beziehung_taeter` / `_opfer` | Täter bzw. Opfer nach Beziehungsstatus | 2 × 26 |
| `mord_vollendet_opfer_alter_nation` | Opfer: Alter × Nationalität | 137 |
| `mord_vollendet_taeter_geschlecht_alter_nation` | Tatverdächtige | 140 |
| `mordversuch_opfer` | Opfer je Bundesland | 194 |
| `mordversuch_taeter_geschlecht_alter_nation` | Tatverdächtige | 198 |
| `mordversuch_beziehung_taeter` / `_opfer` | Beziehungsstatus | 2 × 26 |

`zeile` enthält den gedruckten Text **mit seiner Einrückung**. Die Tiefe ist
die einzige Information über die Ebene — und sie ist nicht immer verlässlich
(siehe Falle 2 im Projekt-`README.md`).

Jeder Abschnitt endet mit der gedruckten Summenzeile (`Österreich`, `Gesamt`
oder `Gesamtergebnis`). Sie gehört **nicht** in die Auswertung, ist aber die
Kontrollzahl: die neun Bundesländer müssen sie ergeben.

## AÖF: was in der CSV steht

Spalten: `liste_jahr`, `definition`, `kategorie_roh`, `nr`, `datum_roh`,
`ort_roh`, `beziehung_roh`, `alter_roh`, `herkunft_roh`, `kinder_roh`,
`hergang_roh`, `quelle_roh`, `fundstelle`.

Alles, was `_roh` heißt, ist unverändert der Quelltext — inklusive `k.A.`,
`---`, `beide ca. 60` und `Tat vermutlich 12/2025 (Medienbericht vom
09.02.2026)`. Zeilenumbrüche innerhalb einer Zelle sind zu einem Leerzeichen
zusammengezogen; Worttrennungen am Zeilenende bleiben stehen
(`Mürzzu- schlag`).

**200 Zeilen, 2019–2026.** Zeilen sind nicht dasselbe wie Fälle: wo die
Quelle zwei Nummern in einer Tabellenzeile führt (`17/18`, `20/21`,
`28/29`), steht eine Zeile mit `nr` = `17/18`.

| `liste_jahr` | Zeilen | Fälle laut Quelle | Besonderheit |
|---|---|---|---|
| 2019 | 20 | 22 Nummern (Kopf nennt BMI-Zahl 39) | zwei Doppelnummern; die 39 sind eine **andere** Grundgesamtheit (alle § 75-Tötungen) |
| 2020 | 24 | 24 | Kopf nennt zusätzlich PKS-Zahl 31 |
| 2021 | 30 | 31 (Nr. 20/21 in einer Zeile) | — |
| 2022 | 31 | 29 Hauptliste + 2 Täterinnen | Liste mit Frauen als Täterinnen separat |
| 2023 | 31 | 26 Hauptliste + 1 Zufallsopfer + 1 Täterin + 4 „weitere Fälle" | vier Sonderblöcke |
| 2024 | 28 | 29 (Nr. 28/29 in einer Zeile) | — |
| 2025 | 16 | 16 | — |
| 2026 | 20 | 20 (Stand 18.11.2026) | HTML-Tabelle, keine PDF-Liste |

`kategorie_roh` markiert die Sonderblöcke wörtlich; leer heißt: Hauptliste.
Für die Auswertung sind das 192 Fälle — die acht Sonderzeilen (Zufallsopfer,
Täterinnen, „weitere Mordfälle") bleiben in der Datei, sind aber keine
Femizide im Sinne der Zählung.

`definition` unterscheidet die Listen von 2019/2020 („Frauenmorde …") von
denen ab 2021 („Mutmaßliche Femizide …"). Das ist keine Kosmetik: die
AÖF-Zählung hat ihre Bezeichnung geändert, die Zahl der Fälle aber nicht —
wer über die Jahre vergleicht, muss das wissen.

`hergang_roh` enthält bei den Jahrgängen 2019–2023 zusätzlich die Spalte
„Sonstiger Kontext" der Quelle, angehängt als
`… | Sonstiger Kontext: <Text>`. Sie passte in kein eigenes Feld, sollte aber
nicht verloren gehen.

## Wie die AÖF-CSV entstanden ist

Halbautomatisch: `daten/_build/extract.py` liest die sieben Jahres-PDFs über
`pdftohtml -xml` aus, `build_csv.py` ergänzt die 2026er-HTML-Tabelle und
schreibt die CSV. Beide erwarten die PDFs als `fm2019.pdf` … `fm2025.pdf`
und die Seite als `fm2026.html` im Arbeitsverzeichnis — Downloads von den
oben verlinkten AÖF-URLs.

Danach wurde **jede** Zeile gegen die Quelle geprüft: Zellinhalte maschinell
gegen den PDF-Text, 24 Stichproben (drei je Jahrgang) von Hand, Zeilenzahlen
gegen die Kopfzahlen der Listen. Die Prüfschritte und die verbliebenen
Unsicherheiten stehen im Issue #36.

## Warum es keine amtliche Femizid-Statistik gibt

Österreich kennt keinen eigenen Straftatbestand „Femizid". Tötungen von
Frauen laufen unter § 75 StGB (Mord). Das BMI hat das in der Beantwortung
von 18374/J ausdrücklich festgehalten:

> „Der Begriff ‚Femizid' ist dem Strafgesetzbuch fremd, weswegen eine
> objektivierbare und für die Kriminalpolizei anwendbare Definition in
> diesem Kontext gar nicht möglich ist."

Deshalb zählen drei Stellen drei verschiedene Dinge: die PKS alle Tötungen
weiblicher Opfer, der AÖF die medienberichteten Femizide, die IKF-Studie die
nach EIGE-Definition klassifizierten Justizakten. Für 2023 etwa 42 (PKS) vs.
26 (AÖF). Beide Zahlen sind richtig — sie messen nur nicht dasselbe.

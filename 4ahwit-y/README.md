# 4AHWIT — Kohorte y

## PMM Unterlagen

> Teilung der Klasse 4AHWIT (große Klasse → Kohorten x/y).
> Gemeinsames Material: `unterricht/` (vorbereitete Einheiten mit
> `KM<#>`-/`SA`-Präfix) und `lehrplan/pmm-hwit/` (Semesterpläne).
> Hier liegt kohorten-spezifisches Material und Log.

## Lessons-Übersicht (Bestellzettel für On-demand)

| Nr. | Ziel-UE | Thema | Quelle | Typ | Quiz | Status |
|-----|---------|-------|--------|-----|------|--------|
| SA-01 | UE 1 (schulautonom, 4HWIT WS) | Datenvisualisierung mit ggplot | schulautonom, R4DS Kap. 1 | Erstkontakt | C | kanonisch unter unterricht/ |
| SA-02 | UE 2 (schulautonom, 4HWIT WS) | Daten transformieren mit dplyr | schulautonom, R4DS Kap. 3 | Erstkontakt | B | kanonisch unter unterricht/ |
| SA-03 | UE 3 (schulautonom, 4HWIT WS) | Daten einlesen & deskriptive Statistik | schulautonom, R4DS Kap. 7+10 | Erstkontakt | A | kanonisch unter unterricht/ |
| 04 | UE 4 (KM7, 4HWIT WS) | R rechnet: Kennzahlen & Verteilungen | KM5, Navarro Kap. 9–10 | Wiederholung | D·C·B·A | live (DS 2026-09-25) |

Nächste freie Nr.: **05** · nächste Quiz-Richtige: **D**.

**Ablage (2026-09-28):** Terminierte Lessons liegen im Datums-Ordner
`YYYY-MM-DD__thema/` (`lesson.html` + Tages-README). Vorbereitete Lektionen
liegen kanonisch unter `../unterricht/` (`SA-01…SA-03`); das frühere
Kohorten-`prepared-lessons/` wurde aufgelöst.

## 2026-09-18

Heute war Installationstag.

im terminal mit winget:

```sh
> winget install git.git
> winget install vscode
> winget install RProject.R
> winget install Posit.RStudio
> winget install openjs.nodejs.lts

> git config --global user.name "Dein Name"
> git config --global user.email "deine@email.at"

```

wir haben einen github user angelegt und mit diesem ein Repository erzeugt, name "PMM"
und an grafg@... den Link zum Repo geschickt.

## Lektionen SA-01–SA-03 (UE 1–3, schulautonome R-Toolchain)

Teach-Workspace als Spiegel von Kohorte x: MISSION, RESOURCES, NOTES.
Die Lessons liegen kanonisch unter `../unterricht/` (R-Code verifiziert,
je 1 Quiz, HÜ-Links auf die gemeinsamen Einheiten-Master). Gemeinsame
Assets: `../assets/`.

- Lektion SA-01 (UE 1, ggplot): `../unterricht/SA-01-datenvisualisierung-ggplot/lesson.html`
- Lektion SA-02 (UE 2, dplyr): `../unterricht/SA-02-daten-transformieren-dplyr/lesson.html`
- Lektion SA-03 (UE 3, einlesen & deskriptiv, Betriebsdaten): `../unterricht/SA-03-daten-einlesen-deskriptiv/lesson.html`
- Hausaufgaben (Master): `../unterricht/SA-01-datenvisualisierung-ggplot/hausaufgabe.md`,
  `../unterricht/SA-02-daten-transformieren-dplyr/hausaufgabe.md`,
  `../unterricht/SA-03-daten-einlesen-deskriptiv/hausaufgabe.md`

**Pflegeregel:** Kohorte x ist der Master — Korrekturen immer zuerst in
`4ahwit-x/` einpflegen, dann nach `4ahwit-y/` spiegeln.

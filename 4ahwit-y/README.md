# 4AHWIT — Kohorte y

## PMM Unterlagen

> Teilung der Klasse 4AHWIT (große Klasse → Kohorten x/y).
> Gemeinsames Unterrichtsmaterial: `unterricht/HWIT-PMM/`
> (Semesterpläne + UE-Ordner). Hier liegt kohorten-spezifisches
> Unterrichtsmaterial und Log.

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

## Lektionen 0001–0003 (UE 1–3, KM7 R-Toolchain)

Teach-Workspace als Spiegel von Kohorte x: MISSION, RESOURCES, NOTES,
`assets/` (lesson.css, quiz.js), `lessons/` — alle Lessons byte-identisch
mit `4ahwit-x/lessons/` (R-Code verifiziert, je 1 Quiz, HÜ-Links auf die
gemeinsamen UE-Master unter `unterricht/HWIT-PMM/`).

- Lektion 0001 (UE 1, ggplot): `lessons/0001-daten-visualisieren-ggplot.html`
- Lektion 0002 (UE 2, dplyr): `lessons/0002-daten-transformieren-dplyr.html`
- Lektion 0003 (UE 3, einlesen & deskriptiv, Betriebsdaten): `lessons/0003-daten-einlesen-deskriptiv.html`
- Hausaufgaben (Master): `../unterricht/HWIT-PMM/01-datenvisualisierung-ggplot/hausaufgabe.md`,
  `../unterricht/HWIT-PMM/02-daten-transformieren-dplyr/hausaufgabe.md`,
  `../unterricht/HWIT-PMM/03-daten-einlesen-deskriptiv/hausaufgabe.md`

**Pflegeregel:** Kohorte x ist der Master — Korrekturen immer zuerst in
`4ahwit-x/` einpflegen, dann nach `4ahwit-y/` spiegeln.

# 4AHWIT — Kohorte x

## PMM Unterlagen

> Teilung der Klasse 4AHWIT (große Klasse → Kohorten x/y).
> Gemeinsames Unterrichtsmaterial: `unterricht/HWIT-PMM/`
> (Semesterpläne + UE-Ordner). Hier liegt kohorten-spezifisches
> Unterrichtsmaterial und Log.

## 2026-09-15

- Ordner angelegt (Kohorten-Teilung)
- Teach-Workspace aufgesetzt: MISSION, RESOURCES, NOTES, Assets
  (`assets/lesson.css`, `assets/quiz.js`)
- Lektionen gebaut: `lessons/0001-daten-visualisieren-ggplot.html`
  (UE 1), `lessons/0002-daten-transformieren-dplyr.html` (UE 2);
  R-Code verifiziert (palmerpenguins 344 Zeilen)

**Hausübung** R installieren, optional Rstudio, Git installieren, GitHub-Account erstellen, GitHub-Repository klonen, RStudio-Projekt öffnen, Lektionen in RStudio öffnen und R-Code ausführen.

Tip: "winget" im Terminal. "winget install openjs.nodejs.lts"
dann kann man auch opencode installieren.

## 2026-09-22

Heute: HÜ-Kontrolle + Start R-Basics (UE 1).

Setup (im Terminal mit winget, falls noch nicht geschehen — analog
Kohorte y am 2026-09-18):

```sh
> winget install git.git
> winget install vscode
> winget install RProject.R
> winget install Posit.RStudio
> winget install openjs.nodejs.lts

> git config --global user.name "Dein Name"
> git config --global user.email "deine@email.at"
```

Danach in RStudio (einmal pro Rechner):

```r
install.packages(c("tidyverse", "palmerpenguins"))
```

Kontrolle mit Verifikation: `2026-09-22_hue-kontrolle.md`
(erwartet: `glimpse(penguins)` → 344 Zeilen, 8 Spalten).

Weiteres Material (nur Verweise, keine Kopien):

- Übersichtsfolie „Was kann R?":
  `../unterricht/HWIT-PMM/00-was-kann-r/praesentation.html`
- Lektion 0001 (heute live): `lessons/0001-daten-visualisieren-ggplot.html`
- Lektion 0002 (nächste DS): `lessons/0002-daten-transformieren-dplyr.html`
- Hausaufgabe UE 1:
  `../unterricht/HWIT-PMM/01-datenvisualisierung-ggplot/hausaufgabe.md`

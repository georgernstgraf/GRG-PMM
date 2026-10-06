# 4AHWIT-X — PMM Unterlagen

## 2026-10-06__was kann r

## 2026-09-22

Heute: HÜ-Kontrolle + Start R-Basics (UE 1).

Setup:

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

Ausführliche Schritt-für-Schritt-Anleitung (R zuerst, dann RStudio,
Prüfung, Troubleshooting): `rstudio-installation-winget.md`.

Kontrolle mit Verifikation: `2026-09-22_hue-kontrolle.md`
(erwartet: `glimpse(penguins)` → 344 Zeilen, 8 Spalten).

Weiteres Material (nur Verweise, keine Kopien):

- Übersichtsfolie „Was kann R?":
  `../unterricht/SA-00-was-kann-r/praesentation.html`
- Lektion SA-01 (heute live): `../unterricht/SA-01-datenvisualisierung-ggplot/lesson.html`
- Lektion SA-02 (nächste DS): `../unterricht/SA-02-daten-transformieren-dplyr/lesson.html`
- Hausaufgabe UE 1:
  `../unterricht/SA-01-datenvisualisierung-ggplot/hausaufgabe.md`

## 2026-09-15

- Ordner angelegt (Kohorten-Teilung)
- Teach-Workspace aufgesetzt: MISSION, RESOURCES, NOTES
  (Assets liegen seit 2026-09-27 zentral unter `../assets/`)
- Lektionen (jetzt kanonisch unter `../unterricht/`):
  `SA-01-datenvisualisierung-ggplot/lesson.html` (UE 1),
  `SA-02-daten-transformieren-dplyr/lesson.html` (UE 2);
  R-Code verifiziert (palmerpenguins 344 Zeilen)

**Hausübung** R installieren, optional Rstudio, Git installieren, GitHub-Account erstellen, GitHub-Repository klonen, RStudio-Projekt öffnen, Lektionen in RStudio öffnen und R-Code ausführen.

Tip: "winget" im Terminal. "winget install openjs.nodejs.lts"
dann kann man auch opencode installieren.

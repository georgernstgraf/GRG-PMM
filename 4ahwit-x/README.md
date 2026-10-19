# 4AHWIT-X — PMM Unterlagen

## Aufgaben

- 2026-10-06: SA-01 ggplot als Selbststudium-Aufgabe, ins persönliche git pushen → [unterricht/SA-01-datenvisualisierung-ggplot/](../unterricht/SA-01-datenvisualisierung-ggplot/)
- 2026-09-22: HÜ-Kontrolle Setup (git/VS Code/R/RStudio) + Start R-Basics UE 1 → [2026-09-22_git_vscode_Rstudio_installation/](./2026-09-22_git_vscode_Rstudio_installation/)

## 2026-10-06__was kann r

Heute: SA-00 „Was kann R?" live. SA-01 (ggplot) gab es als
Selbststudium-Aufgabe — nicht live unterrichtet.

- alle Übungen von der Folie selber commiten!

Aufgabe: <https://georgernstgraf.github.io/GRG-PMM/unterricht/SA-01-datenvisualisierung-ggplot/praesentation.html>

Ins persönliche git pushen!!

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
- Lektion SA-01 (ggplot — **nicht** live am 22.9.; am 2026-10-06 als
  Selbststudium-Aufgabe verteilt, siehe Eintrag oben):
  `../unterricht/SA-01-datenvisualisierung-ggplot/lesson.html`
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

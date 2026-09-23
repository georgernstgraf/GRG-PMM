# 4AHWIT — Kohorte x

## PMM Unterlagen

> Teilung der Klasse 4AHWIT (große Klasse → Kohorten x/y).
> Gemeinsames Unterrichtsmaterial: `unterricht/HWIT-PMM/`
> (Semesterpläne + UE-Ordner). Hier liegt kohorten-spezifisches
> Unterrichtsmaterial und Log.

## Lessons-Übersicht (Bestellzettel für On-demand)

| Nr. | Ziel-UE | Thema | Quelle | Typ | Quiz | Status |
|-----|---------|-------|--------|-----|------|--------|
| 01 | UE 1 (KM7, 4HWIT WS) | Datenvisualisierung mit ggplot | KM7, R4DS Kap. 1 | Erstkontakt | C | live (DS 2026-09-22) |
| 02 | UE 2 (KM7, 4HWIT WS) | Daten transformieren mit dplyr | KM7, R4DS Kap. 3 | Erstkontakt | B | bereit |
| 03 | UE 3 (KM7, 4HWIT WS) | Daten einlesen & deskriptive Statistik | KM7, R4DS Kap. 7+10 | Erstkontakt | A | bereit |

Nächste freie Nr.: **04** · nächste Quiz-Richtige: **D** ·
Pflegeregel: x = Master, y = Kopie (Spiegel nach `4ahwit-y/`).

## 2026-09-15

- Ordner angelegt (Kohorten-Teilung)
- Teach-Workspace aufgesetzt: MISSION, RESOURCES, NOTES, Assets
  (`assets/lesson.css`, `assets/quiz.js`)
- Lektionen gebaut: `lessons/01-daten-visualisieren-ggplot.html`
  (UE 1), `lessons/02-daten-transformieren-dplyr.html` (UE 2);
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

Ausführliche Schritt-für-Schritt-Anleitung (R zuerst, dann RStudio,
Prüfung, Troubleshooting): `rstudio-installation-winget.md`.

Kontrolle mit Verifikation: `2026-09-22_hue-kontrolle.md`
(erwartet: `glimpse(penguins)` → 344 Zeilen, 8 Spalten).

Weiteres Material (nur Verweise, keine Kopien):

- Übersichtsfolie „Was kann R?":
  `../unterricht/HWIT-PMM/00-was-kann-r/praesentation.html`
- Lektion 01 (heute live): `lessons/01-daten-visualisieren-ggplot.html`
- Lektion 02 (nächste DS): `lessons/02-daten-transformieren-dplyr.html`
- Hausaufgabe UE 1:
  `../unterricht/HWIT-PMM/01-datenvisualisierung-ggplot/hausaufgabe.md`

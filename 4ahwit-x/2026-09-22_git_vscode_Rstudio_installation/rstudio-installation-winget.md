# RStudio-Installation mit winget — 4AHWIT Kohorte x

Schritt-für-Schritt-Anleitung für Schul-Laptops (Windows 10/11).
Alle Befehle im **Terminal** (PowerShell oder Eingabeaufforderung).
Ausprobiert von Kohorte y am 2026-09-18.

> Reihenfolge beachten: **zuerst R, dann RStudio.**
> RStudio ist nur die Oberfläche — rechnen tut R.

## 0. winget prüfen

```sh
winget --version
```

- Zeigt eine Versionsnummer → weiter bei Schritt 1.
- „Befehl nicht gefunden" → **App-Installer** aus dem Microsoft Store
  installieren (enthält winget), danach Terminal neu öffnen.

## 1. R installieren

```sh
winget install RProject.R
```

- Dauert je nach Laptop 2–5 Minuten (Download + Setup).
- Falls Windows nach Admin-Rechten fragt: zulassen (oder Lehrkraft rufen).

## 2. RStudio installieren

```sh
winget install Posit.RStudio
```

- Ebenfalls Admin-Rechte zulassen, falls gefragt.
- Nach der Installation **Terminal schließen und neu öffnen**
  (sonst kennt es die neuen Pfade noch nicht).

## 3. Prüfen, ob alles läuft

RStudio starten (Startmenü → „RStudio") und in die Console tippen:

```r
R.version.string
```

- Erwartet: eine Zeile wie `R version 4.5.x (...)` → R und RStudio
  reden miteinander. Fertig.
- Erscheint stattdessen eine Fehlermeldung („R not found" o. ä.):
  RStudio → Menü **Tools → Global Options → General → R version →
  Change** → installiertes R auswählen.

Danach die Unterrichts-Pakete (einmal pro Rechner):

```r
install.packages(c("tidyverse", "palmerpenguins"))
```

Kontrolle:

```r
library(tidyverse)
library(palmerpenguins)
glimpse(penguins)
```

Erwartet: **344 Zeilen, 8 Spalten** (siehe auch
`2026-09-22_hue-kontrolle.md`, Punkte 3 + 4).

## 4. Wenn etwas klemmt

| Symptom | Abhilfe |
|---------|---------|
| `winget` unbekannt | App-Installer aus dem Microsoft Store, Terminal neu öffnen |
| Installation hängt bei „Admin" | Lehrkraft rufen — ohne Admin-Rechte geht es nicht weiter |
| RStudio findet kein R | Tools → Global Options → R version → Change (siehe Schritt 3) |
| `install.packages` scheitert | Internet prüfen (WLAN/Proxy); Fehlermeldung wörtlich notieren und in der DS zeigen |
| Alles ok, aber Plot geht nicht | HÜ-Kontrolle Punkte 3 + 4 erneut durchgehen |

Komplettes Setup (git, VS Code, GitHub, Repo-Klon): siehe
`README.md`, Abschnitt 2026-09-22.

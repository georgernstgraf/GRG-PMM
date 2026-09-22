# HÜ-Kontrolle 2026-09-22 — 4AHWIT Kohorte x

Kontrolle der Hausübung vom 2026-09-15 (Setup: R, RStudio, Git, GitHub,
Repo-Klon, Lektion öffnen). Anonyme Strichliste — **keine Namen**.

Anwesend: ___ / ___

## Checkliste (pro Punkt: Anzahl „ok" eintragen)

| # | Kontrolle | Wie prüfen | ok | nachholen |
|---|-----------|------------|----|-----------|
| 1 | R installiert | Terminal: `R --version` (oder RStudio → Console: `R.version.string`) | ___ | ___ |
| 2 | RStudio installiert | RStudio startet, Console zeigt `>` | ___ | ___ |
| 3 | tidyverse + palmerpenguins | In RStudio ausführen: `library(tidyverse); library(palmerpenguins)` — ohne Fehler | ___ | ___ |
| 4 | Daten-Verifikation | `glimpse(penguins)` → erwartet **344 Zeilen, 8 Spalten** | ___ | ___ |
| 5 | Git installiert + konfiguriert | Terminal: `git --version`; `git config user.name` und `git config user.email` liefern Werte | ___ | ___ |
| 6 | GitHub-Account + Repo geklont | Ordner `PMM` vorhanden; darin `git remote -v` zeigt das eigene Repo | ___ | ___ |
| 7 | Lektion 0001 geöffnet | `lessons/0001-daten-visualisieren-ggplot.html` im Browser geöffnet | ___ | ___ |
| 8 | Ziel-Plot gebaut | Streudiagramm Flosse vs. Masse mit `color = species` in RStudio erzeugt | ___ | ___ |

## Auswertung

- Alles ok (8/8): ___ Personen
- Nachholbedarf (Name nur mündlich, hier nur Anzahl): ___ Personen
- Häufigster offener Punkt: _______________

## Nachbereitung

Offene Punkte aus dieser Liste werden in der nächsten DS zuerst
nachgeholt (Partner-Prinzip: wer 8/8 hat, hilft am Nachbar-Laptop).
Blocking für UE 1 ist Punkt 3 + 4 — ohne Pakete kein Plot.

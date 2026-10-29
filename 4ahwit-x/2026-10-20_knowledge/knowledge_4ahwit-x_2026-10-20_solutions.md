# Wissensüberprüfung PMM — R-Toolchain, Werkzeuge & Datenvisualisierung
## LÖSUNGEN (Lehrerversion)

**Datum:** 2026-10-20
**Klasse:** 4AHWIT-x
**Punkte:** 185 (35 MC à 4 P + 3 Freitext à 15 P)

**Bewertung MC:** 1 Punkt pro korrekt behandelter Option (angekreuzt oder
freigelassen), 4 Punkte pro Frage. Eine mit `-` markierte und begründete Option
zählt wie eine korrekt behandelte (kein Abzug).

---

## Multiple-Choice-Fragen

| Nr. | Block | Richtige Optionen | Kernaussage |
|-----|-------|-------------------|-------------|
| 1 | A | **A, B, C** | Git, RStudio, R per winget; Excel nicht |
| 2 | A | **A, B** | R = Engine, RStudio = IDE |
| 3 | A | **A, B** | `git config --global user.name/-email` |
| 4 | A | **A, C, D** | Anführungszeichen bei `install.packages`, nicht bei `library()` |
| 5 | A | **A, C** | zwei Pakete in einem Aufruf; `c()` = Liste |
| 6 | A | **A, C, D** | Installation bleibt erhalten (nicht sitzungsgebunden) |
| 7 | B | **A, B, D** | Skript = wiederholbar, persistent, versionierbar |
| 8 | B | **A, B, C** | betriebsdaten M1–M3, Sollmaß 10,00 ± 0,15 |
| 9 | B | **A, B, D** | längere Flosse ↔ mehr Masse; Bild statt Formel |
| 10 | B | **A, B, D** | Pipe = weiterreichen; Gentoo > 1 kg schwerer |
| 11 | B | **A, B, C** | Reproduzierbarkeit, Nachvollziehbarkeit, Skalierung |
| 12 | B | **A, B, D** | p ≈ 5·10⁻¹⁶ ⇒ echter Unterschied; C ist falsch |
| 13 | B | **A, B** | `glimpse()` + `head()`; verändert nichts |
| 14 | B | **A, B** | 344 × 8 |
| 15 | B | **A, B, C** | species = fct, body_mass_g = int |
| 16 | B | **A, B** | Paket-Paket, Semester-Werkzeugkasten |
| 17 | B | **A, B** | NA = fehlend; `na.rm = TRUE` entfernt vor der Rechnung |
| 18 | C | **A, B, C** | Skelett: Daten + aes + geom |
| 19 | C | **A, B** | leeres Koordinatensystem, kein Fehler |
| 20 | C | **A, B** | Punkt pro Beobachtung; `+` = Schichten kombinieren |
| 21 | C | **A, B** | Mapping vs. feste Einstellung |
| 22 | C | **A, B** | Mini-Grafik pro Art; Farbe vs. Facette |
| 23 | C | **A, B** | Trend-Schleier, eine Linie pro Art (color gemappt) |
| 24 | C | **A, B** | Achsen + Titel; keine Datenänderung; nicht „reine Dekoration“ |
| 25 | C | **A, B, C** | `+` am Zeilenanfang bricht den Plot |
| 26 | C | **A, B, C** | Adélie nicht am längsten (D falsch) |
| 27 | C (demo.R) | **A, B, C** | x = year (2007–2009), eine Trendlinie, `labs(x=)` wirkt |
| 28 | C (Fehler) | **A, B, D** | Tippfehler im Spaltennamen; Meldung nennt Objekt |
| 29 | C (Typen) | **A, B** | Faktor → Kategorien; int → Zahlenmaßstab |
| 30 | D | **A, B, C, D** | vollständiger Workflow |
| 31 | D | **A, B, D** | Remote; persönliches Repo; kleine Commits; C falsch (Nachricht Pflicht, sonst Abbruch) |
| 32 | D | **A, B, C, D** | `Ctrl+S` ≠ Commit |
| 33 | D | **A, C** | status → add → commit → push |
| 34 | E | **A, B, C** | Engine / mitgelieferte GUI / IDE auf derselben Engine |
| 35 | E | **A, B, D** | Skript; gleiche Ergebnisse; `library()` im Skript |

**Verifikation:** Pinguin-Werte (`344 × 8`, `species` fct, `body_mass_g` int,
Gentoo ≈ 5076 g vs. Adélie ≈ 3701 g, Chinstrap ≈ 3733 g, `t.test` p = 4,79·10⁻¹⁶)
per `Rscript` gegen `palmerpenguins` geprüft (2026-10-19).

---

## Freitext-Fragen

### F1 — Mapping vs. feste Einstellung (15 P)

**Erwartung (Punkteverteilung):**

- **Linker Plot (5 P):** `color = "red"` steht **außerhalb** von `aes()`, im
  `geom_point()` → feste Einstellung (Dekoration). **Alle** Punkte werden rot,
  **keine Legende**. Die Kategorien auf der x-Achse werden nur durch die
  Position getrennt, die Farbe trägt **keine Information** über die Art.
- **Rechter Plot (5 P):** `color = species` steht **in** `aes()` → Mapping einer
  Datenspalte auf die Farbe. Jede Art bekommt eine eigene Farbe, ggplot2 baut
  **automatisch eine Legende** auf. Farbe transportiert hier Information.
- **Begriff (3 P):** der Unterschied *Mapping* (`aes()`, Daten → Erscheinungsbild)
  versus *feste Einstellung* (außerhalb `aes()`, für alle gleich).
- **Konsequenz (2 P):** rechter Plot erlaubt Vergleich/Erkennen der Arten, linker
  nicht — nur die Anordnung unterscheidet sie.

### F2 — R, R-GUI, RStudio & Skripte ohne RStudio (15 P)

**Erwartung:**

- **R (4 P):** der Interpreter/die Rechen-Engine — führt die Befehle aus,
  enthält alle Pakete (`library()`), liefert die Ergebnisse.
- **R-GUI / `RGui` (3 P):** die mit R unter Windows mitgelieferte, schlichte
  Fenster-Oberfläche (Console, Editor, Grafikfenster) — direkt auf der Engine,
  ohne Zusatzinstallation.
- **RStudio (3 P):** eine benutzerfreundliche IDE, die **dieselbe** R-Engine
  darunter verwendet (Console, Skript-Editor, Environment, Plots, Terminal).
  Kein separates R.
- **Abgrenzung (2 P):** beim Ausführen von `ggplot(...)` rechnet immer R;
  RStudio/RGui zeigen nur das Ergebnis.
- **Ohne RStudio / `Rscript demo.R` (3 P), mind. zwei von:**
  - `library(ggplot2)`/`library(tidyverse)` **im Skript** (frische Session kennt
    kein geladenes Paket),
  - relative/richtige Pfade zu Dateien (z. B. `read_csv("data/betriebsdaten.csv")`)
    bzw. Arbeitsverzeichnis berücksichtigen,
  - der gesamte Code steht im Skript (nichts manuell in der Console Erzeugte),
  - ggf. Shebang/Umgang mit der Kommandozeile.

### F3 — Git-Workflow (15 P)

**Erwartung (Schritt × Punkte):**

1. **Datei ändern/speichern** (`Ctrl + S`), (2 P)
2. **`git status`** — zeigt geänderte Dateien (2 P)
3. **`git add`** — Staging, Änderungen für den Commit vormerken (3 P)
4. **`git commit -m "Nachricht"`** — lokal mit Nachricht speichern (3 P)
5. **`git push`** — Commits auf GitHub hochladen (3 P)
6. **`git remote -v`** — zeigt den Namen und die URL des Remotes (2 P)

**Zusatzpunkte/Ausführlichkeit:** Commit/Push im persönlichen Repo erwähnt.

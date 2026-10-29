# Wissensüberprüfung PMM — Setup, R-On-Ramp & Chi-Quadrat-Test
## LÖSUNGEN (Lehrerversion)

**Datum:** 2026-10-21
**Klasse:** 5AHWIT
**Punkte:** 185 (35 MC à 4 P + 3 Freitext à 15 P)

**Bewertung MC:** 1 Punkt pro korrekt behandelter Option (angekreuzt oder
freigelassen), 4 Punkte pro Frage. Eine mit `-` markierte und begründete Option
zählt wie eine korrekt behandelte (kein Abzug).

---

## Multiple-Choice-Fragen

| Nr. | Block | Richtige Optionen | Kernaussage |
|-----|-------|-------------------|-------------|
| 1 | A | **A, B, C** | Git, VS Code, R installiert; Excel nicht |
| 2 | A | **A, B, D** | R = Engine, RStudio = IDE; Skript ohne RStudio lauffähig |
| 3 | A | **A, C, D** | zwei Pakete in einem Aufruf; `c()` = Liste; nicht sitzungsgebunden |
| 4 | A | **A, B, D** | laden ≠ installieren; ohne Anführungszeichen |
| 5 | A | **A** | `--global` = alle Repos des Benutzers |
| 6 | A | **A, C** | R allein; Interpreter ohne GUI |
| 7 | A | **A** | `>` = bereit für Eingabe |
| 8 | B | **A** | autofetch = regelmäßiger Fetch, kein Auto-Commit |
| 9 | B | **A, C, D** | getrennte Repos, ein Fenster; eigenes Remote pro Ordner |
| 10 | B | **A, B, C** | global vs. repo-lokal; ins Terminal, nicht ins README |
| 11 | B | **A, B, C** | public + personenbezogen + Historie |
| 12 | B | **A, B, C** | System-Shell; Speichern ≠ Commit; Source-Control-Anzeige |
| 13 | C | **A, B** | public + README (die zwei „unbedingt") |
| 14 | C | **A, B, C** | status braucht kein Remote |
| 15 | C | **A, B, C** | push überträgt nur Commits |
| 16 | C | **A, B** | Name (`origin`) + URL |
| 17 | C | **A, B, D** | clone holt Historie + setzt origin |
| 18 | D | **A, B** | Ritual: ansehen, nicht blind benutzen |
| 19 | D | **A, B** | 344 × 8, Typen sichtbar |
| 20 | D | **A, B, C** | Skelett: Daten + aes + geom |
| 21 | D | **A, B** | leeres Koordinatensystem, kein Fehler |
| 22 | D | **A, B** | Mapping vs. feste Einstellung |
| 23 | D | **A, B, D** | Pipe = weiterreichen; Gentoo > 1 kg schwerer |
| 24 | D | **A, B** | Trend-Schleier; eigene Linie pro Art, wenn color gemappt |
| 25 | D | **A, B** | Faktor → Kategorien; int → Zahlenachse |
| 26 | E | **A, B, C** | 116 gültig; Testarten; Tabellen-Befund |
| 27 | E | **A, B, D** | erwartete Häufigkeit aus Randsummen; `$expected` |
| 28 | E | **A, B** | 37·6/116 ≈ 1,91; NA-Zeilen raus |
| 29 | E | **A, D** | (6−2,069)²/2,069 ≈ 7,47; größter Beitrag |
| 30 | E | **A, B, D** | 5-Regel verletzt; Warnung; Fisher als Ausweg |
| 31 | E | **A, B, D** | X² = 12,02, df = 2, p ≈ 0,0025 → H₀ verwerfen |
| 32 | E | **A, C** | df = 2; nicht aus n |
| 33 | E | **A, B, D** | Fisher exakt ≈ 0,0032; andere Zahl als Chi |
| 34 | E | **A, B, C** | beobachtet 0 < erwartet 1,91; 5-Regel |
| 35 | E | **A, B, D** | M1/M2 = 0, M3 = 6/40 = 15 % |

**Verifikation:** Alle Zahlen in Block E per `Rscript` gegen
`assets/betriebsdaten.csv` gerechnet (2026-10-19): Tabelle wie angegeben,
Gesamtsumme 116, erwartete Werte M1/M2/M3 ausserhalb ≈ 1,914/2,017/2,069,
Chi-Beiträge ≈ 1,914/2,017/7,469 (M3 größter Beitrag), X² = 12,02, df = 2,
p(Chi) = 0,00245, p(Fisher) = 0,00318. M1: n = 37, mean ≈ 10,0005, sd ≈ 0,0315.

---

## Freitext-Fragen

### F1 — Setup von Null (15 P)

**Erwartung (Schritte in Reihenfolge):**

1. **GitHub-Repo anlegen** (2 P): public + README.md — beide „unbedingt".
2. **In VS Code klonen** (3 P): Repo-URL → `git clone` (oder VS-Code-Kommando) → lokaler Ordner.
3. **Workspace verbinden** (2 P): privates Repo + GRG-PMM als Multi-Root-Workspace; Material und eigene Arbeit bleiben getrennt.
4. **`git config`** (2 P): `git config --global user.name` / `user.email` im **Terminal**, nicht im README.
5. **Erste Änderung + Commit** (3 P): Datei ändern → `git add` → `git commit -m "…"` mit sinnvoller Nachricht.
6. **Push** (1 P): `git push` auf GitHub.
7. **Datenschutz-Begründung (2 P):** README wird bei public öffentlich ausgeliefert; E-Mails sind personenbezogen; die Git-Historie bewahrt gelöschte Zeilen in alten Commits.

### F2 — Chi-Test von Hand (15 P)

**a) Erwartete Häufigkeit (5 P):**

- Zellensummen: Zeile M2 = 39, Spalte „ausserhalb" = 6, Gesamt = 116.
- 39 · 6 / 116 = 2,0172… ≈ **2,02**.

**b) Chi-Beitrag (5 P):**

- beobachtet = 0.
- (0 − 2,02)² / 2,02 = 4,073 / 2,02 ≈ **2,02**.

**c) p-Wert in Sprache (5 P):**

- Formulierung mit 0,0025: „Wenn die Maschinen tatsächlich gleich viel Ausschuss produzierten, wäre eine Tabelle wie diese nur in etwa 0,25 % der Fälle zu erwarten."
- Konsequenz: **H₀ verwerfen** (p < 0,05).
- Inhaltlich: Die Maschinen produzieren unterschiedlich viel Ausschuss — der Unterschied steckt im Wesentlichen bei M3.

### F3 — Mapping vs. feste Einstellung (15 P)

**Erwartung (Punkteverteilung):**

- **Linker Plot (5 P):** `color = "red"` außerhalb `aes()` → feste Einstellung. Alle Punkte rot, **keine Legende**, Farbe trägt keine Information.
- **Rechter Plot (5 P):** `color = species` in `aes()` → Mapping der Spalte auf die Farbe. Eigene Farbe pro Art, **automatische Legende**.
- **Fachbegriff (3 P):** Mapping (in `aes()`, Daten → Erscheinungsbild) vs. feste Einstellung (außerhalb `aes()`).
- **Konsequenz (2 P):** nur der rechte Plot erlaubt, die Arten an der Farbe zu unterscheiden; der linke trennt sie nur durch die Position auf der x-Achse.

# Notes — 5AHWIT (Teach-Workspace)

## Präferenzen (aus docs/stil-leitfaden.md, verbindlich)
- Du-Form, warm, direkt; motivieren vor definieren; eine Idee pro
  Abschnitt; Fragen statt Behauptungen.
- Echte Daten: penguins (Lektion 01–02), Betriebsdaten
  (`unterricht/HWIT-PMM/assets/betriebsdaten.csv`, synthetisch,
  `set.seed(20260916)`) ab Lektion 03.
- Fachwörter zweisprachig: „Mapping (Zuordnung)". Verbindliche Wortwahl
  steht im Glossar (`reference/glossar-r-statistik.html`).
- Code: `<-`, Snake_case, natives `|>`, 4 Leerzeichen, Zeilen ≤ 72 Zeichen.
- Output als `# →`-Kommentar, Erklärung als `#`-Kommentar.
- Lektüre-Box mit Pflicht-Charakter (R4DS-Kapitel-URL) bei buchverankerten
  Lektionen; HA-Fragen dürfen Lektüre verlangen.
- Quiz-Antworten: exakt gleiche Wortzahl (möglichst Zeichenzahl) — keine
  Format-Hinweise auf die richtige Antwort.

## Didaktik (teach-Skill)
- Retrieval Practice: erst Vorhersage mit der Hand, dann R prüfen.
- Eine Lektion = ein eng umrissener Win, 15–20 min.
- Interleaving in Übungen ab Lektion 03 (ggplot + dplyr mischen).

## Stand
- 2026-09-16: Workspace im SWP-Muster (`teach/`-Unterordner) aufgesetzt;
  Lektionen 01 (ggplot), 02 (dplyr) adaptiert von 4ahit-x (R-Code dort
  bereits verifiziert), 03 (einlesen & deskriptiv) neu gebaut auf
  Betriebsdaten. HA-Kopien in `5ahwit/hausaufgaben/` (Master in
  `unterricht/HWIT-PMM/NN-*/hausaufgabe.md` bleibt unangetastet).
- Quiz-Richtige-Rotation: 01 = C, 02 = B, 03 = A.
- Vorwissen der Klasse unbestätigt — Einstiegstest 5HWIT steht noch aus;
  siehe learning-record 0001.

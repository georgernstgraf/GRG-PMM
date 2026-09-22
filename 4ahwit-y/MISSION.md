# Mission: PMM-Datenarbeit für 4AHWIT Kohorte y

## Why
Die Schüler:innen der Kohorte y sollen im KM7-Jahr (Winter 2026/27) mit
R echte Qualitäts- und Prozessdaten auswerten können — von der
Visualisierung bis zur Annahmestichprobenprüfung. Das Matura-Fach PMM
fordert datengestützte Entscheidungen, nicht Formelwissen.

## Success looks like
- Schüler:in beantwortet eine Frage über einen realen Datensatz
  (penguins, dann Betriebsdaten) mit einem selbst gebauten ggplot-Plot
- Schüler:in berechnet eine Kennzahl (Mittelwert, Ausschussanteil)
  per dplyr-Pipe und kann das Ergebnis in einem Satz deuten
- Schüler:in erkennt typische Fehler (Syntax, NA, Mapping) selbst
  an der Fehlermeldung, statt zu rätseln

## Constraints
- 1 DS/Woche, 13 echte UE im Semester; Lektionen sind Selbststudium
  vor/nach der DS, nicht Ersatz dafür
- Deutsch (Fachbegriffe zweisprachig — Lektüre ist englisch)
- R4DS-Stimme: Didaktik übernehmen, Wortlaut nie (`docs/stil-leitfaden.md`)
- Schul-Laptops: R/RStudio installiert; Lektionen offline lesbar
  (self-contained HTML, keine CDN-Abhängigkeiten)

## Out of scope
- Inferenz-Formalismen (Tests, Konfidenz) — kommt erst ab UE 4/6
- Annahmestichprobenprüfung (UE 9–11) — eigene Lektionen später
- **Pflegeregel: Kohorte x ist der Master.** Korrekturen immer zuerst in
  `4ahwit-x/` einpflegen, dann als Kopie nach `4ahwit-y/` spiegeln
  (Lessons + Assets sind byte-identisch).

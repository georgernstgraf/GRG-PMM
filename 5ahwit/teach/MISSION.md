# Mission: PMM-Datenarbeit für 5AHWIT

## Why

Die 5AHWIT steht im KM9a-Jahr (Winter 2026/27): DoE/RSM — Daten **gezielt
erzeugen** statt analysieren, was „einfach da" ist. DoE baut direkt auf
`lm()`/ANOVA (KM7) und auf Datenarbeit in R (KM8) auf. Der
`jg5-semesterplan-ws.md` setzt dieses Vorwissen voraus — die Klasse hat es
aber nicht nachweisbar (Einstiegstest 5HWIT offen), und das Setup-Log
(2026-09-09: git, VS Code, Repo-Klon) zeigt einen Frisch-Start in die
Werkzeuge. Deshalb: **R-Basics-On-Ramp** in drei Lektionen, bevor UE 1
(DOE-Einführung) beginnt.

## Success looks like

- Schüler:in beantwortet eine Frage über einen realen Datensatz
  (penguins, dann Betriebsdaten) mit einem selbst gebauten ggplot-Plot
- Schüler:in berechnet eine Kennzahl (Mittelwert, Ausschussanteil) per
  dplyr-Pipe und kann das Ergebnis in einem Satz deuten
- Schüler:in liest eine Betriebsdaten-CSV selbst ein und prüft die
  Spaltentypen, bevor sie rechnet
- Schüler:in erkennt typische Fehler (Syntax, NA, Mapping, Pfad) an der
  Fehlermeldung, statt zu rätseln

## Constraints

- 1 DS/Woche, 13 echte UE im Semester (KM9a-Zeitmodell). Die On-Ramp
  verschiebt den DoE-Start: Lektionen sind Selbststudium vor/nach der DS,
  nicht Ersatz dafür; UE-Nummern des Semesterplans rutschen entsprechend.
- Deutsch (Fachbegriffe zweisprachig — Lektüre ist englisch)
- R4DS-Stimme: Didaktik übernehmen, Wortlaut nie (`docs/stil-leitfaden.md`)
- Schul-Laptops: Lektionen offline lesbar (self-contained HTML, keine
  CDN-Abhängigkeiten)
- Master/Kopien-Modell: Master-Dateien in `unterricht/HWIT-PMM/` bleiben
  unangetastet; Kopien + Adaptionen liegen hier (`hausaufgaben/`,
  `teach/lessons/`)

## Out of scope

- DoE/RSM-Inhalte — kommen ab UE 1 nach der On-Ramp (Lektüre-Anker:
  NIST/SEMATECH e-Handbook, Kap. 5)
- Inferenz-Formalismen (KM7-Rückblick) — nur soweit nötig, um `lm()`
  lesen zu können
- Annahmestichprobenprüfung — KM9b (Sommersemester)

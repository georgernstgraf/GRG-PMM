# Stundenvolumen-Korrektur: 30 → 15 Doppelstunden pro Semester

Die anfängliche Annahme von 30 Doppelstunden/Semester (4 h/Woche = 2 DS) war
falsch. Der tatsächliche PMM-Unterricht umfasst **1 Doppelstunde pro Woche**,
sowohl in der 4. als auch der 5. Klasse — also ~15 Doppelstunden netto pro
Semester und Kompetenzmodul (KM7, KM8, KM9a, KM9b).

## Evidence

- Selbstauskunft des Lernenden: „Ich habe initial einen Fehler gemacht. Ich
  habe **eine** Doppelstunde pro Woche, sowohl in der 4. als auch der 5. Klasse."
- `docs/lehrplan/METADATA.md` Zeitmodell: 15 Doppelstunden netto pro Semester
  — das had already stated the correct number, confirming the user's correction.
- `docs/ai/DECISIONS.md` (2026-06-02): „Lesson plans target 15 double-periods
  per semester" — die Entscheidung war richtig, die Umsetzung (30 im Plan) war
  falsch.

## Implications

- **Alle KM-Kurse** bekommen ~15 Doppelstunden (≠30). KM9b war bereits korrekt.
- **Selbststudium KM7:** 30 Lektionen → 15 Unterrichtseinheiten (UE) komprimiert
  (2 alte → 1 neue); Tiefe erhalten. Jede UE = 1 Doppelstunde.
- **Artefakt-Modell pro UE:** (1) Lern-Lektion (Georg, Meisterschaft+Didaktik),
  (2) Schüler-Präsentation (reveal.js), (3) Hausaufgabe (md).
- **Repo:** vier Semesterpläne wurden umgeschrieben; AGENTS.md/README.md um
  NN-slug-Konvention erweitert.
- **Issue #1** (Offene Fragen Fachzuordnung): Stundenvolumen jetzt geklärt.
  Fachzuordnung bleibt offen; Kommentar beim nächsten Commit fällig.

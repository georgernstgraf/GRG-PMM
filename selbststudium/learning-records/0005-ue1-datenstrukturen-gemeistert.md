# UE 1 vollständig gemeistert: Datenstrukturen & Factor-Falle

Nachtrag zu Record 0002, der nur den R-Grundlagen-Teil abdeckte. Hier wird der
**Datenstrukturen-Teil** (Teil 2 der zusammengeführten UE 1) nachgetragen.

Nachgewiesenes Verständnis:
- **Coercion-Hierarchie** (`logical < integer < double < character`) — das
  Prinzip, dass der höchste Typ in `c()` alle anderen mit sich zieht.
- **matrix** (2D, homogen, spaltenweise Füllung) vs **data.frame** (2D,
  heterogen, pro Spalte ein eigener Typ).
- **list** — `[` vs `[[` und die Box-Metapher.
- **factor** — Integer mit Labels drunter; die Factor-Falle
  (`as.numeric(factor("10"))` → Codes, nicht Werte); Umkehrung
  `as.numeric(as.character(f))`.
- **Inspektion** — `str()` als erstes Ritual, `summary()`, `head()`, `dim()`,
  `rownames` vs Spalten.

## Evidence

- Die Box-Metapher (`modell[1]` = „die Box aus Fach 1", `modell[[1]]` = „öffne
  die Box, gib den Inhalt") wurde vom Lernenden selbst formuliert und am
  Beginn der Folgesession bestätigt („super, ich glaub jetzt hab ichs").
- `identical(modell[1][[1]], modell[[1]])` als Beweis verstanden — die
  Idempotenz von `[` („`[` öffnet nie").
- Factor-Falle wurde in der Lektion durch Quiz 5 („Eins zwei drei kommt")
  abgefragt und als gemeistert gemeldet.
- Coercion-Quiz (Quiz 3) korrekt gelöst.
- UE 1 als Ganzes abgeschlossen und bestätigt — Verlaufsmap steht auf ✅.

## Implications

- **Glossar:** `data.frame`, `list`, `factor`, `matrix`, `Coercion` können
  aufgenommen werden. Verständnis für alle fünf nachgewiesen.
- **UE 2:** Kann voll starten. Vektor, data.frame, factor, `str()`, `summary()`
  als bekannt voraussetzen. Fokus auf `dplyr`-Verben und deskriptive Statistik
  (Lage-/Streuungsmaße).
- **Beobachtung für Didaktik:** Die Box-Metapher hat sich als tragfähig
  erwiesen — sie wurde vom Lernenden verinnerlicht und spontan reproduziert.
  Metaphern, die der Lernende selbst formuliert, sind stärker als vorgegebene.
  Für den Unterricht festhalten: „Box aus Fach N" als didaktisches Werkzeug für
  `[` vs `[[`.

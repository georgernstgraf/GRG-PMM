# Klassenauswertung — Wissensüberprüfung PMM, 2026-10-20

**Klasse:** 4AHWIT-x (14 Abgaben)
**Maximalpunkte:** 185 (35 MC à 4 P + 3 Freitext à 15 P)

Diese Auswertung ist anonymisiert und für das öffentliche Repository gedacht.

## Ergebnisbild

- **Mittelwert:** 146,6 von 185 · **Median:** 156 von 185
- **Streuung:** 6 Abgaben ab 160 Punkten, 4 zwischen 150 und 159, 3 zwischen
  140 und 149, 1 Abgabe ohne jede Bearbeitung (0 Punkte).
- Die Multiple-Choice-Blöcke tragen das Ergebnis, die Freitexte kosten die
  meisten Punkte.

| Bereich | Mittelwert | Anteil am Maximum |
|---|---|---|
| Block A — Setup & Werkzeug (1–6) | 20,5 | von 24 |
| Block B — R-Basics (7–17) | 36,4 | von 44 |
| Block C — ggplot2 (18–29) | 40,1 | von 48 |
| Block D — Git/GitHub (30–33) | 13,3 | von 16 |
| Block E — R/R-GUI/RStudio (34–35) | 7,1 | von 8 |
| F1 — Mapping vs. feste Einstellung | 8,7 | von 15 |
| F2 — R, R-GUI, RStudio, Skripte | 9,4 | von 15 |
| F3 — Git-Workflow | 11,1 | von 15 |

## Häufigste Fehler

**1. Richtige Optionen bleiben leer (der größte Einzelposten).**
Das Muster zieht sich durch fast alle Abgaben: Es wird angekreuzt, was sicher
richtig klingt, und dann aufgehört. Besonders betroffen sind Fragen mit
„interpretativen" Zusatzoptionen — Frage 9 („die Antwort war ein Bild statt einer
Formel"), Frage 10 (Gentoo als schwerste Art), Frage 15 (`body_mass_g` ist
integer), Frage 17 (`na.rm = TRUE`), Frage 20 (das `+` kombiniert Schichten),
Frage 21 (Mapping in `aes()`), Frage 26 (Schichtung der Farbgruppen), Frage 32
(gespeichert ist nicht committet) und Frage 35 (`library()` im Skript).

**2. Plausibel klingende, aber falsche Aussagen werden mitangekreuzt.**
Typisch: Frage 21 D (`color = "red"` erzeuge eine Legende), Frage 23 C (alle drei
Arten würden im Trend steigen), Frage 29 C (`species` werde stillschweigend in
1, 2, 3 umgewandelt), Frage 31 C (ein Commit ohne Nachricht sei zulässig) und
Frage 12 C (der p-Wert sage, dass die Differenz praktisch bedeutungslos sei).
Auffällig: Aussagen mit „automatisch" oder „immer" werden selten hinterfragt.

**3. Das Begriffspaar „Mapping vs. feste Einstellung" fehlt in F1.**
Viele beschreiben richtig, dass der eine Plot rot ist und der andere nach Art
gefärbt — nennen aber weder `aes()` als Ort der Zuordnung noch die automatische
Legende und den Informationsgehalt der Farbe. Der Vergleichsnutzen (Arten
erkennen und vergleichen) bleibt meist implizit.

**4. F2: die gemeinsame Engine und der Lauf ohne RStudio fehlen.**
R, `RGui` und RStudio werden meist korrekt unterschieden; die Abgrenzung „beim
Rechnen ist immer dieselbe R-Engine beteiligt, RStudio zeigt nur das Ergebnis"
fehlt aber häufig. Der zweite Aufgabenteil (`Rscript demo.R`, mindestens zwei
Dinge, die im Skript stehen müssen) wird oft ganz ausgelassen oder nur mit
`library()` beantwortet.

**5. Git-Workflow: Rahmenschritte fallen weg.**
`git status` und `git remote -v` fehlen in vielen Antworten, das Speichern
(`Ctrl + S`) als erster Schritt ebenfalls. Die Reihenfolge `add → commit → push`
sitzt dagegen fast durchgehend. Wiederholt beobachtet: `git commit "Text"` ohne
`-m` und die Gleichsetzung von Speichern und Committen (auch in Frage 32).

**6. Formales Dateihandling.**
Drei Abgaben kamen mit vollständig escaped Markdown-Code (`* \[x]`, `#### 1\.`)
an, eine mit beschädigter Überschrift, eine mit einer komplett leeren Datei.
Das ist kein Fachfehler, kostet aber Zeit und führt im schlimmsten Fall zu einer
unbewertbaren Abgabe.

## Empfehlungen für den Unterricht

1. **Mapping vs. feste Einstellung** einmal kontrastiv wiederholen: derselbe
   Plot zweimal, einmal `color = "red"` außerhalb `aes()`, einmal
   `color = species` darin — mit Blick auf Legende, Informationsgehalt und
   Vergleichbarkeit. Genau diese drei Aspekte wurden in F1 am häufigsten
   ausgelassen.
2. **MC-Strategie trainieren:** Jede Option einzeln mit „stimmt / stimmt nicht"
   prüfen, bevor angekreuzt wird. Eine kurze Übung mit einer Frage, bei der drei
   von vier Optionen richtig sind, macht den Punktverlust durch Auslassen
   unmittelbar sichtbar.
3. **Git als Kette an die Tafel:** ändern/speichern → `git status` → `git add` →
   `git commit -m "…"` → `git push` → `git remote -v`. Besonders betonen:
   Speichern ist kein Commit, und `-m` gehört zur Commit-Nachricht.
4. **R einmal ohne RStudio zeigen:** `Rscript demo.R` im Terminal, mit
   `library()` im Skript, sauberen Pfaden und vollständigem Code. Damit wird der
   abstrakte Teil von F2 greifbar.
5. **Datei-Handling vor dem Upload:** Export aus dem Editor prüfen (sind die
   Kreuze als `- [x]` sichtbar?), Datei speichern, dann hochladen. Zwei Minuten
   investiert, ein leerer Datensatz verhindert.

## Prompt Injection Attempts

0 — in keiner Abgabe wurden Anweisungen an die Bewertung oder Versuche gefunden,
das Bewerten zu beeinflussen.

## Hinweis

Die y-Gruppe derselben Klasse schreibt am 23.10.2026; deren Auswertung ist in
diesem Dokument nicht enthalten.

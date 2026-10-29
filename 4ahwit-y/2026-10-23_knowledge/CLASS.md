# Klassenauswertung — Wissensüberprüfung PMM, 2026-10-23

**Klasse:** 4AHWIT-y (12 Abgaben)
**Maximalpunkte:** 185 (35 MC à 4 P + 3 Freitext à 15 P)

Diese Auswertung ist anonymisiert und für das öffentliche Repository gedacht.

## Ergebnisbild

- **Mittelwert:** 166,2 von 185 · **Median:** 165,5 von 185
- **Streuung:** 3 Abgaben ab 175 Punkten, 1 zwischen 170 und 174, 2 zwischen 165
  und 169, 3 zwischen 160 und 164, 3 zwischen 150 und 159.
- Die Multiple-Choice-Blöcke sind stark (Mittel 129,4 von 140). Die
  Freitext-Fragen kosten deutlich mehr Punkte, vor allem F1.

| Bereich | Mittelwert | Anteil am Maximum |
|---|---|---|
| Block A — Setup & R-Grundlagen (1–7) | 26,0 | von 28 |
| Block B — Kennzahlen & Verteilungen (8–15) | 30,1 | von 32 |
| Block C — Binomialverteilung (16–27) | 44,0 | von 48 |
| Block D — Stichprobe, sd/var & n−1 (28–35) | 29,3 | von 32 |
| F1 — Binomialversuch komplett | 11,1 | von 15 |
| F2 — sd/var und n−1 | 12,5 | von 15 |
| F3 — Kennzahlen & `pnorm` | 13,2 | von 15 |

## Häufigste Fehler

**1. Richtige Optionen bleiben leer (der größte Einzelposten).**
Fast alle Punktverluste in den MC-Blöcken entstehen durch nicht gesetzte Kreuze,
nicht durch falsche. Besonders betroffen sind die Fragen zur Binomialverteilung:
Frage 18 (B — p = 0,8 als Gegenwahrscheinlichkeit, 8 Abgaben), Frage 19 (C —
`size`/`prob`), Frage 20 (C — 0,8³), Frage 21 (D — `pbinom` > `dbinom`),
Frage 22 (D — `lower.tail`), Frage 23 (D — `qbinom` als Annahmeschwelle) und
Frage 26 (C — `pbinom(2, n, 0.1)` sinkt mit wachsendem n). Das Muster ist immer
dasselbe: die erste richtige Aussage wird angekreuzt, die zweite und dritte
bleiben stehen.

**2. Die Abgrenzung Terminal / R-Konsole fehlt.**
Frage 3 C (`Rscript` startet eine frische R-Sitzung) wurde in 9 von 12 Abgaben
nicht angekreuzt. Damit ist das die am häufigsten ausgelassene richtige Option
der ganzen Überprüfung — obwohl Terminal und R-Konsole im Unterricht Thema waren.

**3. Plausibel klingende Zusatzaussagen werden mitangekreuzt.**
Typisch: Frage 14 D („Histogramm prüft exakt, ob alle Werte in der Toleranz
liegen", 3 Abgaben), Frage 34 D (Prüfplan per Definition mit 95 %/10 %),
Frage 31 C (Standardabweichung „quadratisch zu den Daten"), Frage 32 C
(Stichprobenvarianz sei exakt der Populationsparameter) und Frage 20 D
(„ergibt etwa 2,05"). Aussagen mit „exakt", „immer" und „automatisch" werden
selten hinterfragt.

**4. F1 b): Die Handrechnung fehlt.**
In der Hälfte der Abgaben stehen Formel und `dbinom`-Aufruf da, aber nicht die
Rechnung mit eingesetzten Zahlen (10 · 0,04 · 0,512) und kein Vergleich der
beiden Ergebnisse. R-Aufruf plus Ergebnis ist die halbe Aufgabe.

**5. F1 c): `dbinom` und `pbinom` werden verwechselt.**
Mehrere Abgaben nennen `pbinom` als „Punktwahrscheinlichkeit" oder `dbinom` als
„kumuliert"; der additive Zusammenhang (kumuliert = Summe der
Einzelwahrscheinlichkeiten) wird fast nie ausgesprochen.

**6. F2 b): Der Mechanismus der n−1-Korrektur bleibt ungenannt.**
Der Fachbegriff „erwartungstreu" und die Richtung („Division durch n
unterschätzt") sind meist vorhanden, die Ursache — die Abweichungen werden vom
eigenen Stichprobenmittelwert gemessen und fallen dadurch kleiner aus — fehlt in
den meisten Antworten.

**7. F3: R-Zeile oder Beispiel fehlen.**
Zwei Abgaben beschreiben nur die Deutung, ohne die geforderte R-Zeile; mehrere
nennen in c) keine konkrete Verletzung der Normalannahme. In einem Fall ist
`pnorm(10.15)` als „Wahrscheinlichkeit für zu groß" gedeutet worden — der obere
Rand braucht `lower.tail = FALSE` oder `1 - pnorm(...)`.

**8. Formales Dateihandling.**
Eine Abgabe kam als escapter Markdown-Export (`* \[x]`, `#### 1\.`), eine mit
`&`-Einleitungen statt Checkboxen, eine unter abweichendem Dateinamen. Kein
fachlicher Fehler, aber es kostet Auswertungszeit.

## Empfehlungen für den Unterricht

1. **R, RStudio und `Rscript` kontrastiv wiederholen.** Der Unterschied zwischen
   der R-Konsole (`>`-Prompt), dem Terminal und einem Skript, das `Rscript`
   ausführt, ist der häufigste Einzelverlust. Ein zehnminütiger Probelauf im
   Terminal (`Rscript --version`, dann `Rscript demo.R`) macht die drei Ebenen
   sichtbar.
2. **MC-Strategie trainieren: jede Option einzeln bewerten.** Eine Übungsfrage,
   bei der drei von vier Optionen richtig sind, zeigt unmittelbar, was das
   Auslassen kostet. Die Fragen 19 bis 24 sind dafür ideal, weil dort fast immer
   zwei oder drei Optionen stimmen.
3. **`d`/`p`/`q`/`r` als Tabelle sichern.** `dbinom` = genau k, `pbinom` =
   höchstens k, `qbinom` = k zu einer Wahrscheinlichkeit, `rbinom` =
   Zufallszahlen; dazu `choose(n, k)`. Damit sind sechs Fragen des Blocks C
   abgedeckt.
4. **Den Dreischritt bei Rechenaufgaben einüben:** Formel → Zahlen einsetzen →
   R-Funktion, und die beiden Ergebnisse ausdrücklich vergleichen. Genau dieser
   Dreischritt fehlt in F1 b) in der Hälfte der Abgaben.
5. **Oberer und unterer Rand der Normalverteilung.** Einmal
   `pnorm(10.15, 10, s)` und `pnorm(10.15, 10, s, lower.tail = FALSE)`
   nebeneinander stellen; die Summe ist 1. Das klärt sowohl F3 b) als auch
   Frage 22.
6. **Beispiele mit Einheiten verlangen.** Bei „Nenne ein Beispiel aus den
   Betriebsdaten" reicht der Hinweis auf mm gegen mm²; mehrere Abgaben ließen das
   Beispiel weg, obwohl die Erklärung stimmte.

## Prompt Injection Attempts

0 — in keiner Abgabe wurden Anweisungen an die Bewertung oder Versuche gefunden,
das Bewerten zu beeinflussen.

## Hinweis

Die x-Gruppe derselben Klasse hat am 20.10.2026 geschrieben; deren Auswertung ist
in diesem Dokument nicht enthalten.

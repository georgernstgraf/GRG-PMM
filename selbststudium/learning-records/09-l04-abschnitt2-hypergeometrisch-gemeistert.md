# L04 Abschnitt 2 (Hypergeometrisch) gemeistert — Formel selbst gebaut

**Datum:** 2026-10-04 (2. Session zu L04) · **Dauer:** ~90 min
**Lektion:** `prepared-lessons/04-diskrete-verteilungen.html`, Abschnitt 2
**Voraussetzung:** Record [08](08-l04-binomial-dp-gefestigt.md) (Binomial
d/p gefestigt)

## Was gelernt wurde

- **Warum Binomial bricht:** Ohne Zurücklegen ist p keine Konstante,
  sondern eine bedingte Wahrscheinlichkeit (10/200 = 5 % → 9/199 ≈
  4,52 % nach einem Defekt). Georg hat das selbst ausgerechnet und daraus
  geschlossen, dass Binomial „nicht das geeignete Werkzeug" ist.
- **Formel selbst gebaut** (nicht auswendig gelernt):
  `choose(M,x) · choose(N−M, n−x) / choose(N, n)` — über die
  Beschriftungs-Denkhilfe (`D1…D10`, `G1…G190`) und „günstige durch
  mögliche Fälle". Weg über `choose(10,2)=45`, `choose(190,18)≈7,08e24`,
  `choose(200,20)≈1,61e27`.
- **`dhyper`/`phyper` sicher:** inklusive Parameter-Falle (R's `n` =
  *Non-matches*, die Guten N−M) und `?dhyper` als Urnen-Modell (weiße
  Kugeln = Matches). Eigene Eselsbrücken geprägt: **N** = *Number of
  items*, **M/m** = *Matches*, **n** = *Non-matches*, **k** = *Kugeln
  gezogen*.
- **±1-Feinheit gemeistert:** „mehr als 2" = `1 − phyper(2)` vs. „2 oder
  mehr" = `1 − phyper(1)` — bewusst bedacht und selbst erkannt, dass ich
  nach „mehr als" gefragt hatte (nicht „oder mehr").
- **Erwartungswert vs. Modalwert** (Exkurs auf Georgs Nachfrage): E(X) =
  n·M/N ist der Schwerpunkt (Durchschnitt über Wiederholungen, darf 1,5
  oder 0,8 oder 3,5 sein), Modalwert der höchste Balken. Gegenbeispiele
  durchgerechnet (M=15-Los: Modalwert 1, E=1,5; Würfel: E=3,5; Lotto:
  E=0,8).
- **Lotto „6 aus 45" komplett:** `phyper(2,6,39,6)` = 0,9762 (97,6 %
  höchstens 2 Richtige), konsistent mit der früheren Hand-Summe
  `sum(dhyper(3:5,6,39,6))` = 0,0238.
- **5-%-Faustregel verifiziert:** n/N=10 % → 4,5 % relative Abweichung
  (0,1975 vs. 0,1887), n/N=1 % → 0,5 % (0,2866 vs. 0,2852).

## Wie gelernt wurde (Didaktik-Beobachtungen)

- **Sehr kleine Häppchen** bestätigt: Georg bittet explizit darum, Teil-
  Fragen zurückzustellen und die Vorbedingungen zu wiederholen („mein
  Screen ist klein und ich vergesslich") — komplette Angabe bei jeder
  Aufgaben-Wiederholung mitgeben.
- **Präzises Wording wird eingefordert:** „aus 10 defekten genau 2
  auswählen" war missverständlich (klang nach Ziehprozess/Ereignis).
  Beschriftete Symbole (`D1…D10`) + „verschiedene 2er-Gruppen, Menge
  ohne Reihenfolge" lösten es. Formulierungen vor dem Stellen auf
  Zähl- vs. Ereignis-Lesart prüfen.
- **Begriffe sauber einführen, nichts voraussetzen:** „Los", „endlich",
  „Vereinbarung/Grenze" mussten erst geklärt werden. Keine neuen
  Begriffe nebenbei in Aufgabenstellungen einführen.
- **Selbstkorrektur funktioniert:** Georg erkennt eigene Verwechslungen
  (10 vs. 20, x-Werte vs. Stichproben) und fragt nach — das ist die
  gewünschte Metakognition, nicht „lästig" (seine Sorge: kognitive
  Fähigkeiten — unbegründet, Qualität der Antworten war durchgehend
  hoch).
- **R als Verifikations-Instrument willkommen:** `?dhyper` selbst
  entdeckt; Verifikation per `Rscript` gegen echte Daten geschätzt.

## Konsequenzen

- **Poisson (L04 Abschnitt 3)** bleibt offen — nächste Session.
- **qhyper/q-Funktionen** noch nicht geübt — bewusst verschoben bis
  L09/L10 (Konfidenzintervalle), wo Quantile strukturell gebraucht
  werden.
- **Unterrichtsmaterial KM5-03** gebaut (Issue #26): Die
  Session-Erkenntnisse (Beschriftungs-Denkhilfe, Eselsbrücken,
  E-vs-Modalwert, ±1-Falle, Faustregel) sind jetzt Unterrichtsmaterial —
  validiert an einem echten Lernenden vor dem Klasseneinsatz.
- Selbststudiums-Lektion 04, Abschnitt 2 um die Session-Erkenntnisse
  vertieft (Beschriftungs-Idee, Eselsbrücken-Callout, E-vs-Modalwert-
  Callout, ±1-Falle, Näherungszahlen).

## Nächste Schritte

1. L04 Abschnitt 3 (Poisson) in der nächsten Session — Einstieg über
   „Ereignisse pro Einheit statt Stücke pro Los".
2. Danach L05 (Normalverteilung & Standardisierung) bauen.
3. `jg3-verlauf.html`: L04 bleibt ➤ bis Poisson sitzt, dann ✅.

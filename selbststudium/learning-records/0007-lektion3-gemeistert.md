# L0003 (Zufallsvariablen & Wahrscheinlichkeit) gemeistert

L0003 abgeschlossen: Verständnis für diskret vs. stetig, die Zwei-Funktionen-Statik
(f(x) vs. F(x)) und das d/p/q/r-Schema ist nachgewiesen. Damit steht das Vokabular,
auf dem alle weiteren Verteilungs-Lektionen aufbauen.

## Evidence

- **P(X = x) = 0 bei stetigen ZV** selbstständig begründet („Messwert mit
  unendlich vielen Nachkommastellen exakt zu treffen hat Wkeit 0") — inklusive
  der Auflösung des Paradoxons über Intervalle.
- **Dichte ≠ Wahrscheinlichkeit** mit eigener, tragfähiger Metapher erklärt:
  präzise Fertigung → schmaler hoher Gipfel, Fläche trotzdem 1; f(20) = 2,5 ist
  kein Fehler. Dichte als „Wkeit pro Werteinheit" verinnerlicht.
- **f(0) vs. P(X = 0)** sauber getrennt (`dnorm(0)` = 0,399 als Kurvenhöhe,
  P(X = 0) = 0 als Wahrscheinlichkeit) — der klassische Anfängerirrtum wurde
  korrigiert.
- **F = Integral über f**, für P(X ≤ 5) wird F benötigt (nicht f) — korrekt
  zugeordnet, inkl. `p`-Präfix in R.
- **d/p/q/r** inkl. `q` als Umkehrung von `p` (Quantil) sicher beherrscht.
- **Gesetz der großen Zahlen** experimentell bestätigt: 1000 Würfe pendeln enger
  um 1/6 (Spanne 0,04) als 100 Würfe (Spanne 0,09).

## Implications

- L0004 (Diskrete Verteilungen: Binomial, Hypergeometrisch, Poisson) kann
  starten — d/p/q/r wird dort auf konkrete Verteilungen angewendet, die
  Begriffs-Statik f/F und diskret/stetig werden vorausgesetzt.
- Dichte-als-Wkeit-pro-Einheit und das Intervall-Paradox sind tragfähige
  didaktische Werkzeuge für den eigenen Unterricht (KM7-Einstieg).

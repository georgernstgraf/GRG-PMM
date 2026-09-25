# Einstiegstest 4AHWIT — Vorwissen Jahrgang 3 (KM5+KM6)

**Datum:** 2026-09-07
**Klasse:** 4AHWIT
**Punkte:** 200 (50 Multiple-Choice-Fragen à 4 Punkte)

---

## Hinweise zur Bearbeitung

Dieser Test überprüft Ihr Wissen aus dem **Jahrgang 3** (Kompetenzmodule 5 und 6,
Bereich *Statistische Methoden*). Er dient dazu festzustellen, welche Themen Sie
bereits gut beherrschen — und wo wir im Jahrgang 4 noch einmal ansetzen müssen.
Es geht **nicht** in erster Linie um eine Benotung, sondern um eine ehrliche
Bestandsaufnahme Ihres Vorwissens.

**Themenbereiche:**

1. Wahrscheinlichkeitsverteilungen (KM5)
2. Parameter & Schätzwerte (KM5)
3. Zufallsstreu- & Vertrauensbereiche (KM6)
4. Auswertung & Darstellung von Prüfergebnissen (KM6)
5. Lebensdauerverteilungen (KM6)

**Bearbeitung pro Frage:**

- Kreuzen Sie **alle** richtigen Antworten an.
- Pro Frage können **0 bis 4** Antworten richtig sein.
- Pro korrekt behandelter Antwortoption (richtig angekreuzt **oder** richtig
  freigelassen) erhalten Sie 1 Punkt — insgesamt 4 Punkte pro Frage.
- Wenn Sie eine Antwort für unklar, mehrdeutig oder kontextabhängig halten,
  dürfen Sie stattdessen `-` ankreuzen und kurz begründen.

_Viel Erfolg — und ganz wichtig: ehrlich antworten, nicht raten!_

---

## Multiple-Choice-Fragen

### Block 1 — Wahrscheinlichkeitsverteilungen (KM5)

#### 1. Welche der folgenden Verteilungen sind *diskret*?

- [ ] A. Normalverteilung
- [ ] B. Binomialverteilung
- [ ] C. Exponentialverteilung
- [ ] D. Poissonverteilung

#### 2. Für eine Binomialverteilung B(n, p) gilt:

- [ ] A. Der Erwartungswert ist μ = n · p.
- [ ] B. Die einzelnen Versuche (Bernoulli-Versuche) sind voneinander unabhängig.
- [ ] C. Die Erfolgswahrscheinlichkeit p darf größer als 1 sein.
- [ ] D. Die Varianz ist σ² = n · p · (1 − p).

#### 3. Welche Voraussetzungen muss ein Bernoulli-Experiment erfüllen, damit die Binomialverteilung anwendbar ist?

- [ ] A. Die Versuchsanzahl n muss zwingend größer als 30 sein.
- [ ] B. Die Erfolgswahrscheinlichkeit p darf bei jedem Versuch einen anderen Wert annehmen.
- [ ] C. Es gibt genau zwei mögliche Ausgänge pro Versuch (Treffer / Niete).
- [ ] D. Die einzelnen Versuche dürfen voneinander abhängig sein.

#### 4. Hypergeometrische vs. Binomialverteilung — welche Aussagen sind korrekt?

- [ ] A. Für große Grundgesamtheit N und kleine Stichprobe nähert sich die
  hypergeometrische Verteilung der Binomialverteilung an.
- [ ] B. Die hypergeometrische Verteilung modelliert das Ziehen *ohne* Zurücklegen.
- [ ] C. Die hypergeometrische Verteilung benötigt die Größe N der Grundgesamtheit.
- [ ] D. Die Binomialverteilung modelliert das Ziehen *mit* Zurücklegen bzw. eine
  unendlich große Grundgesamtheit.

#### 5. Zur Poissonverteilung trifft zu:

- [ ] A. Der Parameter λ muss positiv sein (λ > 0).
- [ ] B. Sie beschreibt die Anzahl seltener Ereignisse in einem festen Intervall
  (Zeit, Fläche, Stückzahl).
- [ ] C. Erwartungswert und Varianz sind beide gleich λ.
- [ ] D. Sie kann als Approximation der Binomialverteilung dienen, wenn n groß
  und p klein ist.

#### 6. Normalverteilung N(μ, σ²):

- [ ] A. σ (sigma) bezeichnet die Varianz der Verteilung.
- [ ] B. Die Dichtefunktion ist symmetrisch um 0 (nicht um μ).
- [ ] C. Etwa 99 % aller Werte liegen im Intervall μ ± 2σ.
- [ ] D. Etwa 68 % aller Werte liegen im Intervall μ ± 2σ.

#### 7. Bei der Standardisierung einer normalverteilten Zufallsgröße X ~ N(μ, σ²) zu Z:

- [ ] A. Z ist standardnormalverteilt mit Erwartungswert 0 und Varianz 1.
- [ ] B. Die Transformation lautet Z = (X − μ) / σ.
- [ ] C. Nach der Standardisierung kann die Φ-Tabelle der
  Standardnormalverteilung verwendet werden.
- [ ] D. Z nimmt ausschließlich positive Werte an.

#### 8. Zusammenhang zwischen Verteilungsfunktion F(x) und Dichtefunktion f(x) einer *stetigen* Verteilung:

- [ ] A. F(x) ist das Integral über die Dichte f von −∞ bis x.
- [ ] B. Für stetige Verteilungen gilt P(X = x) = 0 für jeden einzelnen Wert x.
- [ ] C. F(x) ist monoton steigend.
- [ ] D. f(x) ist die Ableitung von F(x).

#### 9. Die Exponentialverteilung ist gekennzeichnet durch:

- [ ] A. Eine symmetrische, glockenförmige Dichtefunktion um ihren Mittelwert.
- [ ] B. Die „Gedächtnislosigkeit" (memorylessness) gilt nur für diskrete Verteilungen.
- [ ] C. Einen Parameter λ, der die Rate (z. B. Ausfälle pro Zeiteinheit) angibt.
- [ ] D. Einen Erwartungswert von 1/λ.

#### 10. Diskrete vs. stetige Zufallsvariablen — was stimmt?

- [ ] A. Diskrete Zufallsvariablen nehmen abzählbar viele Werte an.
- [ ] B. Bei stetigen Zufallsvariablen entspricht die Wahrscheinlichkeit eines
  Intervalls der Fläche unter der Dichtefunktion.
- [ ] C. Stetige Zufallsvariablen haben eine Dichtefunktion in Form einer
  Sprungfunktion (Treppenfunktion).
- [ ] D. Diskrete Zufallsvariablen besitzen eine Wahrscheinlichkeitsfunktion
  f(x) = P(X = x).

#### 11. Welche der folgenden Kennzahlen sind *Lagemaße*?

- [ ] A. Spannweite (Range)
- [ ] B. Median
- [ ] C. Standardabweichung
- [ ] D. Varianz

#### 12. Wann sollte der Median dem arithmetischen Mittel vorgezogen werden?

- [ ] A. Bei ausgeprägt schiefen Verteilungen.
- [ ] B. Wenn die Daten perfekt normalverteilt und ausreißerfrei sind.
- [ ] C. Wenn die Daten stark ausreißerbehaftet sind.
- [ ] D. Wenn Ausreißer nach oben oder unten vorliegen.

#### 13. Welche der folgenden Größen sind *Streumaße*?

- [ ] A. Median
- [ ] B. Varianz
- [ ] C. Standardabweichung
- [ ] D. Spannweite (Range = Max − Min)

#### 14. Zusammenhang zwischen Varianz σ² und Standardabweichung σ:

- [ ] A. Die Standardabweichung hat dieselbe Einheit wie die Messwerte selbst.
- [ ] B. Varianz und Standardabweichung sind stets identisch.
- [ ] C. Die Varianz ist das Quadrat der Standardabweichung.
- [ ] D. σ = √(σ²).

#### 15. Der Stichprobenmittelwert x̄ als Schätzer für den wahren Mittelwert μ:

- [ ] A. x̄ ist eine Punktschätzung für μ.
- [ ] B. x̄ ist erwartungstreu, das heißt E(x̄) = μ.
- [ ] C. Die Varianz von x̄ beträgt σ²/n (bzw. s²/n bei geschätztem σ).
- [ ] D. Die Genauigkeit von x̄ nimmt mit größer werdendem Stichprobenumfang n zu.

#### 16. Warum wird bei der *Stichproben*varianz durch (n − 1) statt durch n geteilt (Bessel-Korrektur)?

- [ ] A. Weil die Varianz sonst systematisch überschätzt würde.
- [ ] B. Damit die Varianz stets positiv bleibt.
- [ ] C. Um die Schätzung erwartungstreu zu machen.
- [ ] D. Weil bei der Schätzung des Mittelwerts ein Freiheitsgrad verloren geht.

#### 17. Punktschätzung vs. Intervallschätzung:

- [ ] A. Eine Punktschätzung liefert einen einzigen Wert als Schätzung.
- [ ] B. Eine Intervallschätzung liefert einen Wertebereich, der den Parameter
  mit einer vorgegebenen Wahrscheinlichkeit überdeckt.
- [ ] C. Ein Konfidenzintervall ist ein Beispiel für eine Intervallschätzung.
- [ ] D. Eine Punktschätzung gibt zusätzlich die Unsicherheit der Schätzung an.

#### 18. Das Gesetz der großen Zahlen besagt:

- [ ] A. Das Stichprobenmittel x̄ konvergiert gegen 0, wenn n → ∞ wächst.
- [ ] B. Jede einzelne Stichprobe liefert exakt den wahren Parameterwert.
- [ ] C. Die Streuung der Stichprobenmittel über mehrere Stichproben nimmt mit
  wachsendem n zu.
- [ ] D. Größere Stichproben liefern im Mittel ungenauere Schätzungen.

#### 19. Welche statistischen Kennzahlen charakterisieren eine Verteilung *zusätzlich* zu Lage und Streuung?

- [ ] A. Erwartungstreue
- [ ] B. Schiefe (Skewness)
- [ ] C. Wölbung (Kurtosis / Exzess)
- [ ] D. Quantile (z. B. Quartile, Perzentile)

#### 20. Welche der folgenden Größen sind *Parameter der Grundgesamtheit* (keine Stichprobenkennzahlen)?

- [ ] A. x̄ (Stichprobenmittel)
- [ ] B. μ (wahrer Mittelwert der Grundgesamtheit)
- [ ] C. s (Stichprobenstandardabweichung)
- [ ] D. p (wahrer Anteil / wahre Erfolgswahrscheinlichkeit in der Grundgesamtheit)

#### 21. Ein 95 %-Konfidenzintervall für μ bedeutet:

- [ ] A. Bei wiederholter Stichprobenziehung enthalten etwa 95 % der so
  konstruierten Intervalle den wahren Parameter μ.
- [ ] B. Das Konfidenzniveau ist 1 − α = 0,95.
- [ ] C. Die Irrtumswahrscheinlichkeit α beträgt 0,05.
- [ ] D. Ein höheres Konfidenzniveau (z. B. 99 %) führt zu einem breiteren Intervall.

#### 22. Die Formel für ein zweiseitiges Konfidenzintervall für μ bei *bekanntem* σ lautet x̄ ± z_(1−α/2) · σ/√n. Dazu passend:

- [ ] A. Der kritische Wert z_(1−α/2) ist bei 95 % ≈ 1,96.
- [ ] B. Der Term σ/√n ist der Standardfehler des Mittelwerts.
- [ ] C. Ein größeres σ führt zu einem breiteren Intervall (bei festem n).
- [ ] D. Das Intervall ist symmetrisch um x̄.

#### 23. Wie verändert sich die Breite eines Konfidenzintervalls (bei sonst gleichen Bedingungen)?

- [ ] A. Ein größerer Stichprobenumfang n führt zu einem schmaleren Intervall.
- [ ] B. Wenn sich der Stichprobenumfang n vervierfacht, halbiert sich die
  Intervallbreite näherungsweise.
- [ ] C. Ein höheres Konfidenzniveau (z. B. 99 % statt 95 %) führt zu einem
  breiteren Intervall.
- [ ] D. Eine größere Standardabweichung σ führt zu einem breiteren Intervall.

#### 24. t-Verteilung vs. Standardnormalverteilung — was ist richtig?

- [ ] A. Die t-Verteilung weicht für n → ∞ immer stärker von der
  Standardnormalverteilung ab.
- [ ] B. Die t-Verteilung kommt zum Einsatz, wenn σ bekannt ist.
- [ ] C. Die t-Verteilung hat „dickere Ränder" (heavy tails) als die
  Standardnormalverteilung.
- [ ] D. Die t-Verteilung ist durch die Freiheitsgrade (df = n + 1) charakterisiert.

#### 25. Einseitiges vs. zweiseitiges Konfidenzintervall:

- [ ] A. Ein zweiseitiges Intervall hat die Form [x̄ − c ; x̄ + c].
- [ ] B. Ein einseitiges Intervall liefert gleichzeitig eine untere und eine
  obere Schranke.
- [ ] C. Ein einseitiges Intervall hat die Form (−∞ ; x̄ + c] oder [x̄ − c ; ∞).
- [ ] D. Bei gleichem Konfidenzniveau ist der kritische Wert beim einseitigen
  Intervall kleiner als beim zweiseitigen.

#### 26. Der Standardfehler des Mittelwerts:

- [ ] A. Er berechnet sich als σ/√n (bzw. s/√n bei geschätztem σ).
- [ ] B. Er wird kleiner, wenn der Stichprobenumfang wächst.
- [ ] C. Er ist identisch mit der Standardabweichung σ der Grundgesamtheit.
- [ ] D. Er beschreibt die Streuung des Stichprobenmittels über wiederholte
  Stichprobenziehungen hinweg.

#### 27. Welche Werte für das Konfidenzniveau 1 − α sind in der Praxis *gebräuchlich*?

- [ ] A. 90 % (α = 0,10)
- [ ] B. 50 % (α = 0,50)
- [ ] C. 99 % (α = 0,01)
- [ ] D. 95 % (α = 0,05)

#### 28. Wann darf die Normalverteilungsapproximation (z) statt der t-Verteilung verwendet werden?

- [ ] A. Die z-Approximation ist immer zulässig, völlig unabhängig von n und σ.
- [ ] B. Die z-Approximation ist nur zulässig, wenn σ der Grundgesamtheit unbekannt ist.
- [ ] C. Die z-Approximation ist nur bei kleinen Stichproben (n < 30) zulässig.
- [ ] D. Die z-Approximation erfordert eine streng diskrete Grundgesamtheit.

#### 29. Um ein *schmaleres* Konfidenzintervall zu erhalten, kann man (bei sonst gleichen Bedingungen):

- [ ] A. Den Stichprobenumfang n erhöhen.
- [ ] B. Das Konfidenzniveau senken (z. B. von 99 % auf 95 %).
- [ ] C. Den Stichprobenumfang n halbieren.
- [ ] D. Einen Prozess / eine Grundgesamtheit mit kleinerer Streuung σ wählen,
  falls das technisch möglich ist.

#### 30. Die χ²-Verteilung (Chi-Quadrat-Verteilung) wird verwendet, um:

- [ ] A. Den Mittelwert μ bei unbekanntem σ in kleinen Stichproben zu schätzen.
- [ ] B. Ein Konfidenzintervall für die Varianz σ² zu konstruieren.
- [ ] C. Anpassungstests (Goodness-of-Fit-Tests) durchzuführen.
- [ ] D. Die Streuung einer normalverteilten Grundgesamtheit zu beurteilen.

#### 31. Ein Histogramm:

- [ ] A. Ist eine graphische Darstellung der Häufigkeitsverteilung.
- [ ] B. Teilt den Wertebereich in Klassen („Bins") ein.
- [ ] C. Eignet sich auch für stetige Daten mit vielen Ausprägungen.
- [ ] D. Die Fläche (bzw. bei gleichen Klassenbreiten die Höhe) der Balken
  repräsentiert die Häufigkeit.

#### 32. Ein Boxplot zeigt standardmäßig:

- [ ] A. Mögliche Ausreißer als einzelne Punkte.
- [ ] B. Die Spannweite über die Whisker (Min / Max innerhalb der
  Ausreißergrenze).
- [ ] C. Median sowie unteres und oberes Quartil (Q1 / Q3).
- [ ] D. Den exakten arithmetischen Mittelwert als eigene Markierung.

#### 33. Der Interquartilabstand (IQR, auch Quartilabstand):

- [ ] A. Ist identisch mit der Spannweite (Maximum − Minimum).
- [ ] B. Berechnet sich als IQR = Q3 − Q1.
- [ ] C. Umfasst die mittleren 50 % der geordneten Daten.
- [ ] D. Ist besonders empfindlich gegenüber Ausreißern.

#### 34. Ausreißer in einem Boxplot werden nach der 1,5·IQR-Regel gekennzeichnet, wenn sie:

- [ ] A. Unterhalb von Q1 − 1,5·IQR liegen.
- [ ] B. Oberhalb von Q3 + 1,5·IQR liegen.
- [ ] C. Als einzelne Punkte jenseits der Whisker dargestellt werden.
- [ ] D. Die 1,5·IQR-Regel ist eine Konvention; andere Schwellen (z. B. 3·IQR)
  sind möglich.

#### 35. Ein QQ-Plot (Quantil-Quantil-Plot):

- [ ] A. Liefert immer eindeutige Ja-/Nein-Aussagen ohne Interpretationsspielraum.
- [ ] B. Dient der Beurteilung, ob Daten einer bestimmten Verteilung (z. B. der
  Normalverteilung) folgen.
- [ ] C. Vergleicht die empirischen Quantile der Daten mit den theoretischen
  Quantilen der Referenzverteilung.
- [ ] D. Bei gutem Fit liegen die Punkte näherungsweise auf einer Geraden.

#### 36. Welche Diagrammtypen eignen sich typischerweise für *kategoriale* Merkmale?

- [ ] A. Balkendiagramm (Bar Chart)
- [ ] B. Histogramm
- [ ] C. Liniendiagramm (für Zeitreihen)
- [ ] D. Kreisdiagramm (Pie Chart)

#### 37. Eine Häufigkeitstabelle:

- [ ] A. Listet die absoluten oder relativen Häufigkeiten der
  Merkmalsausprägungen auf.
- [ ] B. Kann kumulierte (aufsummierte) Häufigkeiten enthalten.
- [ ] C. Funktioniert für sowohl diskrete als auch stetige Merkmale.
- [ ] D. Ist oft die Datengrundlage für ein Balken- oder Histogramm.

#### 38. Warum werden Prüfergebnisse (z. B. Messreihen) zusammengefasst und graphisch dargestellt?

- [ ] A. Um Muster, Tendenzen und Streuung auf einen Blick zu erkennen.
- [ ] B. Um die eigentlichen Messwerte zu verbergen und nur einen einzigen
  Schätzwert zu zeigen.
- [ ] C. Um Ausreißer zu identifizieren.
- [ ] D. Um die Datenlage zu kommunizieren und Entscheidungen zu unterstützen.

#### 39. Ein Streudiagramm (Scatterplot / Punktwolke):

- [ ] A. Funktioniert nur für kategoriale Variablen.
- [ ] B. Stellt Wertepaare (x, y) von zwei Messgrößen dar.
- [ ] C. Eignet sich zur Beurteilung von Zusammenhängen (Korrelation) zweier
  Variablen.
- [ ] D. Zeigt mögliche lineare oder nichtlineare Trends.

#### 40. Welche Kennzahlen reichen aus, um eine Stichprobe für eine erste Übersicht zu charakterisieren?

- [ ] A. Mittelwert und Standardabweichung.
- [ ] B. Minimum und Maximum (Spannweite).
- [ ] C. Die laufende Nummer des jeweiligen Datenpunkts im Datensatz.
- [ ] D. Median und IQR (robuste Alternativen).

#### 41. Lebensdauerverteilungen modellieren:

- [ ] A. Die Zeit zwischen aufeinanderfolgenden Ausfällen (bei reparierbaren
  Systemen).
- [ ] B. Die Zeit bis zum Ausfall (Versagen) eines Bauteils oder Systems.
- [ ] C. Die Überlebensdauer von Produkten, Bauteilen oder Organismen.
- [ ] D. Die Zuverlässigkeit (Reliability) technischer Systeme.

#### 42. Die Weibull-Verteilung:

- [ ] A. Hat einen Formparameter β, der den Ausfalltyp (Frühausfall,
  Zufallsausfall, Verschleiß) bestimmt.
- [ ] B. Ist eine rechtsschiefe Verteilung (im Allgemeinen).
- [ ] C. Hat einen Skalenparameter η (charakteristische Lebensdauer).
- [ ] D. Umfasst die Exponentialverteilung als Sonderfall (für β = 1).

#### 43. Die Zuverlässigkeitsfunktion R(t):

- [ ] A. R(t) steigt mit wachsender Zeit t an.
- [ ] B. R(0) = 1 (zum Zeitpunkt 0 ist das Element intakt).
- [ ] C. R(t) gibt die Wahrscheinlichkeit an, dass ein Element zum Zeitpunkt t ausfällt.
- [ ] D. Es gilt R(t) = P(X > t) = 1 − F(t).

#### 44. Die Ausfallrate λ(t):

- [ ] A. λ(t) beschreibt die unbedingte Ausfallwahrscheinlichkeit eines neuen
  Elements.
- [ ] B. Bei der Weibull-Verteilung ist die Ausfallrate λ(t) unabhängig vom
  Formparameter β.
- [ ] C. Bei der Exponentialverteilung ist die Ausfallrate λ(t) zeitabhängig.
- [ ] D. Ist immer eine monoton abnehmende Funktion der Zeit.

#### 45. Die „Badewannenkurve" (Bad-Bath-Curve) der Ausfallrate über der Zeit zeigt typischerweise:

- [ ] A. Einen Bereich *abnehmender* Ausfallrate am Anfang (Frühausfälle).
- [ ] B. Einen Bereich *konstanter* Ausfallrate in der Nutzungsphase
  (Zufallsausfälle).
- [ ] C. Einen Bereich *steigender* Ausfallrate am Ende (Verschleißausfälle).
- [ ] D. Über die gesamte Lebensdauer hinweg einen einzigen konstanten Wert.

#### 46. MTBF und MTTF:

- [ ] A. MTBF = Mean Time Between Failures (mittlere Zeit zwischen Ausfällen).
- [ ] B. MTTF und Ausfallrate λ sind völlig unabhängig voneinander.
- [ ] C. MTTF = Mean Time To Failure (mittlere Zeit bis zum letzten Ausfall).
- [ ] D. Bei Exponentialverteilung gilt MTTF = λ.

#### 47. Die Exponentialverteilung als Lebensdauerverteilung:

- [ ] A. Sie eignet sich besonders gut zur Modellierung von Verschleißausfällen
  am Lebensdauerende.
- [ ] B. Sie entspricht der Weibull-Verteilung mit β = 0.
- [ ] C. Sie ist gedächtnislos — ein gebrauchtes Bauteil ist genauso
  zuverlässig wie ein neues.
- [ ] D. Die Ausfallrate λ ist konstant.

#### 48. Der Formparameter β der Weibull-Verteilung:

- [ ] A. β < 1 beschreibt Frühausfälle (abnehmende Ausfallrate).
- [ ] B. β = 1 beschreibt Zufallsausfälle (konstante Ausfallrate,
  Exponentialfall).
- [ ] C. β > 1 beschreibt Verschleißausfälle (steigende Ausfallrate).
- [ ] D. β bestimmt die Form der Ausfallrate λ(t) maßgeblich.

#### 49. Die charakteristische Lebensdauer η der Weibull-Verteilung:

- [ ] A. Verschiebt die Verteilung entlang der Zeitachse.
- [ ] B. Ist die Zeit, bei der rund 63,2 % der Einheiten ausgefallen sind
  (F(η) ≈ 0,632).
- [ ] C. Ist der Skalenparameter (charakteristische Lebensdauer).
- [ ] D. Ist identisch mit dem Median der Verteilung.

#### 50. Die Verteilungsfunktion der Weibull-Verteilung lautet F(t) = 1 − e^(−(t/η)^β). Daraus folgt:

- [ ] A. Für t → ∞ gilt F(t) → 1.
- [ ] B. Die Zuverlässigkeitsfunktion ist R(t) = e^(−(t/η)^β).
- [ ] C. Für t = 0 gilt F(0) = 0.
- [ ] D. F(t) liegt stets im Intervall [0; 1].

---

**Gesamtpunkte: 200** (50 Fragen × 4 Punkte)

_Gutes Gelingen — eine saubere Bestandsaufnahme hilft uns allen im kommenden Schuljahr!_

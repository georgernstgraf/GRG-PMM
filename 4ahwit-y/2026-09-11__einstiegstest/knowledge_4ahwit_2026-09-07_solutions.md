# Lösungen — Einstiegstest 4AHWIT (Vorwissen JG3, KM5+KM6)

**Datum:** 2026-09-07
**Klasse:** 4AHWIT
**Punkte:** 200 (50 Multiple-Choice-Fragen à 4 Punkte)

> Lehrer-Version. Separate Datei — nicht an Schülerinnen und Schüler aushändigen.

## Bewertungsschlüssel

Pro Frage gibt es genau 4 Antwortoptionen. Pro **korrekt behandelter** Option
(richtig angekreuzt **oder** richtig freigelassen) wird 1 Punkt vergeben, insgesamt
also 4 Punkte pro Frage. Eine als `-` markierte Antwortmöglichkeit wird wie eine
korrekt behandelte Option bewertet, sofern die Kurz­begründung plausibel ist.

Die folgende Übersicht listet nur die **richtigen** Antworten je Frage auf.
Alle nicht genannten Optionen sind falsch (und müssen freigelassen werden, um den
Punkt zu erhalten). Bei Fragen ohne richtige Antwortoption (Kennzeichnung „—")
müssen **alle** Optionen freigelassen werden.

| Frage | Richtige Optionen | Punkte |
|------:|-------------------|------:|
| 1  | B, D             | 4 |
| 2  | A, B, D          | 4 |
| 3  | C               | 4 |
| 4  | A, B, C, D      | 4 |
| 5  | A, B, C, D      | 4 |
| 6  | -               | 4 |
| 7  | A, B, C         | 4 |
| 8  | A, B, C, D      | 4 |
| 9  | C, D            | 4 |
| 10 | A, B, D         | 4 |
| 11 | B               | 4 |
| 12 | A, C, D         | 4 |
| 13 | B, C, D         | 4 |
| 14 | A, C, D         | 4 |
| 15 | A, B, C, D      | 4 |
| 16 | C, D            | 4 |
| 17 | A, B, C         | 4 |
| 18 | -               | 4 |
| 19 | B, C, D         | 4 |
| 20 | B, D            | 4 |
| 21 | A, B, C, D      | 4 |
| 22 | A, B, C, D      | 4 |
| 23 | A, B, C, D      | 4 |
| 24 | C               | 4 |
| 25 | A, C, D         | 4 |
| 26 | A, B, D         | 4 |
| 27 | A, C, D         | 4 |
| 28 | -               | 4 |
| 29 | A, B, D         | 4 |
| 30 | B, C, D         | 4 |
| 31 | A, B, C, D      | 4 |
| 32 | A, B, C         | 4 |
| 33 | B, C            | 4 |
| 34 | A, B, C, D      | 4 |
| 35 | B, C, D         | 4 |
| 36 | A, D            | 4 |
| 37 | A, B, C, D      | 4 |
| 38 | A, C, D         | 4 |
| 39 | B, C, D         | 4 |
| 40 | A, B, D         | 4 |
| 41 | A, B, C, D      | 4 |
| 42 | A, B, C, D      | 4 |
| 43 | B, D            | 4 |
| 44 | -               | 4 |
| 45 | A, B, C         | 4 |
| 46 | A               | 4 |
| 47 | C, D            | 4 |
| 48 | A, B, C, D      | 4 |
| 49 | A, B, C         | 4 |
| 50 | A, B, C, D      | 4 |

---

## Ausführliche Begründungen

### Block 1 — Wahrscheinlichkeitsverteilungen (KM5)

**1.** Binomial- und Poissonverteilung sind diskret (abzählbare Ergebnis­menge).
Normal- und Exponentialverteilung sind stetig. → **B, D**

**2.** Bei B(n, p) ist μ = n·p, σ² = n·p·(1−p), und die Bernoulli-Versuche sind
unabhängig. p ist eine Wahrscheinlichkeit und liegt stets in [0; 1]. → **A, B, D**

**3.** Ein Bernoulli-Experiment verlangt genau zwei Ausgänge (Treffer/Niete). n > 30
ist keine Voraussetzung; p muss bei jedem Versuch gleich bleiben (nicht variieren);
abhängige Versuche verletzen die Annahme. → **C**

**4.** Hypergeometrisch = ohne Zurücklegen, benötigt N; binomial = mit Zurücklegen /
unendliche Grundgesamtheit. Für großes N und kleine Stichprobe nähert sich die
hypergeometrische der Binomialverteilung an. → **A, B, C, D** (Alle korrekt.)

**5.** Alle vier Aussagen sind zur Poissonverteilung korrekt. λ > 0 (nicht λ > 1) ist die einzige Vorbedingung. → **A, B, C, D** (Alle korrekt.)

**6.** σ ist die Standardabweichung (σ² ist die Varianz), die Dichte ist symmetrisch
um μ (nicht um 0), ~99 % liegen in μ ± 3σ (nicht μ ± 2σ), und ~68 % liegen in
μ ± σ (nicht μ ± 2σ). Alle vier Aussagen sind falsch. → **—** (Keine Option korrekt.)

**7.** Z = (X−μ)/σ ist standardnormal­verteilt (μ=0, σ=1); damit lässt sich die
Φ-Tabelle nutzen. Z kann negative Werte annehmen (nicht nur positive). → **A, B, C**

**8.** F ist das Integral der Dichte f bis zur Stelle x; f ist die Ableitung von F.
Für stetige Verteilungen ist P(X = x) = 0. F(x) ist zudem monoton steigend. → **A, B, C, D** (Alle korrekt.)

**9.** Die Exponentialverteilung hat Parameter λ (Rate) und Erwartungswert 1/λ. Sie
ist rechtsschief (nicht symmetrisch); die Gedächtnislosigkeit gilt gerade für
stetige Verteilungen (nicht nur diskrete). → **C, D**

**10.** Diskrete ZV sind abzählbar und haben eine Wahrscheinlichkeitsfunktion
f(x) = P(X = x). Bei stetigen ZV entspricht die Intervall-Wahrscheinlichkeit der
Fläche unter der Dichte; eine Sprungfunktion ist bei stetigen ZV gerade nicht
gegeben. → **A, B, D**

---

### Block 2 — Parameter & Schätzwerte (KM5)

**11.** Nur der Median ist ein Lagemaß. Spannweite, Standardabweichung und Varianz
sind Streumaße. → **B**

**12.** Bei schiefen Verteilungen, stark ausreißerbehafteten Daten und einseitiger
Ausreißer­lage ist der Median robuster als das arithmetische Mittel. Bei perfekter
Normalverteilung sind beide nahezu gleich — dort ist kein Vorzug begründet. → **A, C, D**

**13.** Varianz, Standardabweichung und Spannweite sind Streumaße. Der Median ist ein Lagemaß. → **B, C, D**

**14.** σ = √(σ²); die Standardabweichung hat die Einheit der Messwerte; die Varianz
ist das Quadrat der Standardabweichung. Beide sind nur in Sonderfällen (σ² = 0
oder σ² = 1) identisch. → **A, C, D**

**15.** x̄ ist eine erwartungstreue Punktschätzung für μ; die Varianz von x̄ beträgt
σ²/n; die Genauigkeit wächst mit n. → **A, B, C, D** (Alle korrekt.)

**16.** Die Bessel-Korrektur (÷ (n−1)) macht die Stichprobenvarianz erwartungstreu,
da ein Freiheitsgrad durch die Schätzung von x̄ verloren geht. Ohne sie wird die
Varianz **unter**schätzt (nicht überschätzt); ihre Rolle hat nichts mit der
Streuungs­positivität zu tun. → **C, D**

**17.** Punktschätzungen liefern einen einzelnen Wert, Intervallschätzungen ein
Intervall (Konfidenzintervall). Eine Punktschätzung allein gibt **keine**
Unsicherheit an. → **A, B, C**

**18.** Keine der vier Aussagen ist korrekt: x̄ konvergiert gegen μ (nicht gegen 0);
keine einzelne Stichprobe liefert exakt μ; die Streuung der Stichprobenmittel
nimmt mit wachsendem n **ab** (nicht zu); größere Stichproben liefern im Mittel
**genauere** (nicht ungenauere) Schätzungen. → **—** (Keine Option korrekt.)

**19.** Schiefe, Wölbung und Quantile charakterisieren die Form bzw. Lage zusätzlich.
Die Erwartungstreue ist eine Eigenschaft eines Schätzers, keine Kennzahl einer
Verteilung. → **B, C, D**

**20.** μ und p sind Parameter der Grundgesamtheit. x̄ und s sind
Stichproben­kennzahlen. → **B, D**

---

### Block 3 — Zufallsstreu- & Vertrauensbereiche (KM6)

**21.** Langfristig decken ~95 % der Intervalle den wahren Parameter ab;
Konfidenzniveau = 1−α = 0,95; folglich α = 0,05. Ein höheres Konfidenzniveau
(99 %) führt zu einem breiteren Intervall. → **A, B, C, D** (Alle korrekt.)

**22.** z_(1−α/2) ≈ 1,96 bei 95 %; σ/√n ist der Standardfehler; das Intervall ist
symmetrisch um x̄. Ein größeres σ führt zu einem breiteren Intervall (bei festem n). → **A, B, C, D** (Alle korrekt.)

**23.** Größeres n → schmaler; höheres Niveau → breiter; größeres σ → breiter.
Zudem halbiert eine Vervierfachung von n die Breite näherungsweise (wegen des
Faktors 1/√n: √4 = 2). → **A, B, C, D** (Alle korrekt.)

**24.** Die t-Verteilung hat „dickere Ränder" als die Standardnormalverteilung. Sie
kommt bei **unbekanntem** σ zum Einsatz (nicht bei bekanntem); sie ist durch
df = n−1 charakterisiert (nicht n+1); und für n → ∞ konvergiert sie **gegen** die
Standardnormalverteilung, nicht weg von ihr. → **C**

**25.** Zweiseitige Intervalle haben die Form [x̄−c; x̄+c]; einseitige Intervalle
liefern nur eine Schranke. Bei gleichem Niveau ist der einseitige kritische Wert
kleiner als der zweiseitige (da beim Zweiseitigen α/2 auf jeder Seite liegt). → **A, C, D**

**26.** Standardfehler = σ/√n (bzw. s/√n); er sinkt mit wachsendem n und streut das
Stichprobenmittel über wiederholte Ziehungen. Er ist **nicht** identisch mit σ der
Grundgesamtheit. → **A, B, D**

**27.** 90 %, 95 % und 99 % sind die gängigen Konfidenzniveaus. 50 % ist in der
Praxis unüblich. → **A, C, D**

**28.** Keine der vier Aussagen ist korrekt: Die z-Approximation ist nicht „immer
zulässig"; sie setzt bekanntes σ voraus (nicht unbekanntes); sie gilt für große n
(nicht nur kleine); und sie erfordert eine näherungsweise normalverteilte
(stetige) Grundgesamtheit, keine streng diskrete. → **—** (Keine Option korrekt.)

**29.** n erhöhen, Konfidenzniveau senken und kleinere Streuung verschaffen ein
schmaleres Intervall. n halbieren verbreitert es. → **A, B, D**

**30.** χ² dient zur Konstruktion eines KI für σ², für Goodness-of-Fit-Tests und
zur Beurteilung der Streuung einer normalverteilten Grundgesamtheit. Den
Mittelwert μ bei unbekanntem σ in kleinen Stichproben schätzt man mit der
t-Verteilung, nicht mit χ². → **B, C, D**

---

### Block 4 — Auswertung & Darstellung von Prüfergebnissen (KM6)

**31.** Ein Histogramm ist die graphische Häufigkeits­verteilung, teilt den
Wertebereich in Klassen ein und repräsentiert Häufigkeit durch Fläche bzw. Höhe.
Es eignet sich auch für stetige Daten mit vielen Ausprägungen (nicht nur für
diskrete mit wenigen). → **A, B, C, D** (Alle korrekt.)

**32.** Boxplots zeigen Ausreißer als einzelne Punkte, Whisker (Spannweite innerhalb
der Ausreißergrenze) und Median/Q1/Q3. Der arithmetische Mittelwert ist
standardmäßig **nicht** eingezeichnet (kann ergänzt werden). → **A, B, C**

**33.** IQR = Q3 − Q1 (mittlere 50 % der geordneten Daten). Er ist **nicht**
identisch mit der Spannweite und ist robust (nicht empfindlich) gegenüber
Ausreißern. → **B, C**

**34.** Ausreißer liegen unter- bzw. oberhalb der 1,5·IQR-Grenzen und werden als
einzelne Punkte dargestellt. Die 1,5·IQR-Regel ist eine Konvention; andere
Schwellen (z. B. 3·IQR) sind möglich. Boxplots löschen niemals automatisch Daten. → **A, B, C, D** (Alle korrekt.)

**35.** QQ-Plots vergleichen empirische mit theoretischen Quantilen; bei gutem Fit
liegen Punkte auf einer Geraden. Die Beurteilung erfordert Interpretation — es
gibt kein automatisches Ja/Nein. → **B, C, D**

**36.** Balken und Kreis sind Diagramme für kategoriale Merkmale. Histogramme sind
für **stetige** Daten; Liniendiagramme eignen sich für Zeitreihen (metrische,
trendhafte Daten), nicht primär für kategoriale Merkmale. → **A, D**

**37.** Häufigkeitstabellen listen absolute/relative und ggf. kumulierte Häufigkeiten
auf und sind oft Grundlage für Balken- oder Histogramme. Sie funktionieren für
sowohl diskrete als auch stetige Merkmale. → **A, B, C, D** (Alle korrekt.)

**38.** Zusammenfassen und Darstellen dient dem Erkennen von Mustern, Identifizieren
von Ausreißern und Kommunizieren der Datenlage. Daten werden dabei **nicht**
verbergen. → **A, C, D**

**39.** Streudiagramme zeigen Wertepaare, Korrelationen und Trends. Sie eignen sich
für **metrische**, nicht für kategoriale Variablen. → **B, C, D**

**40.** Mittelwert/Std, Min/Max und Median/IQR liefern eine erste Übersicht. Die
laufende Nummer des Datenpunkts ist keine Kennzahl der Verteilung. → **A, B, D**

---

### Block 5 — Lebensdauerverteilungen (KM6)

**41.** Lebensdauerverteilungen modellieren die Zeit bis Ausfall, die Zeit zwischen
Ausfällen (bei reparierbaren Systemen), die Überlebensdauer und die
Zuverlässigkeit. Stückzahlen pro Zeiteinheit sind eine Produktivitäts­kennzahl,
keine Lebensdauer. → **A, B, C, D** (Alle korrekt.)

**42.** β bestimmt den Ausfalltyp, η ist die charakteristische Lebensdauer, und für
β = 1 entsteht die Exponentialverteilung. Die Weibull-Verteilung ist im
Allgemeinen **rechtsschief**. → **A, B, C, D** (Alle korrekt.)

**43.** R(t) = 1 − F(t) und R(0) = 1. R(t) ist die Überlebens­wahrscheinlichkeit bis
t; sie **fällt** monoton (steigt nicht) und gibt nicht die Ausfall­wahrscheinlichkeit
zum Zeitpunkt t an. → **B, D**

**44.** Keine der vier Aussagen ist korrekt: λ(t) ist die **bedingte**
Ausfallrate (nicht unbedingte); bei Weibull ist λ(t) **abhängig** von β (nicht
unabhängig); bei Exponentialverteilung ist λ(t) **konstant** (nicht zeitabhängig);
und λ(t) ist nicht zwingend monoton abnehmend (sie kann steigen, fallen oder
konstant sein). → **—** (Keine Option korrekt.)

**45.** Die Badewannenkurve hat drei Phasen: abnehmend (Frühausfälle), konstant
(Zufall), steigend (Verschleiß). Ein einziger konstanter Wert über die gesamte
Lebensdauer ist gerade **nicht** typisch. → **A, B, C**

**46.** MTBF = Mean Time Between Failures. MTTF und Ausfallrate λ sind über
MTTF = 1/λ (bei Exponentialverteilung) verknüpft, also nicht unabhängig. MTTF ist
die mittlere Zeit bis zum **ersten** (nicht letzten) Ausfall; und bei
Exponentialverteilung gilt MTTF = 1/λ (nicht MTTF = λ). → **A**

**47.** Exponentialverteilung ist gedächtnislos mit konstanter λ. Verschleiß­ausfälle
(steigende Rate, β > 1) sind gerade **nicht** der Fall; die Weibull-Verteilung mit
β = 0 ist degeneriert (der Sonderfall ist β = 1). → **C, D**

**48.** β < 1 (Frühausfall), β = 1 (Zufall), β > 1 (Verschleiß). β bestimmt die Form
der Ausfallrate λ(t) maßgeblich. → **A, B, C, D** (Alle korrekt.)

**49.** η ist der Skalenparameter; bei t = η sind 63,2 % ausgefallen; er verschiebt
die Verteilung entlang der Zeitachse. Der Median liegt bei η·(ln 2)^(1/β), ist also
**nicht** mit η identisch. → **A, B, C**

**50.** R(t) = e^(−(t/η)^β), F(0) = 0, F(∞) → 1, und F(t) liegt stets in [0; 1]. → **A, B, C, D** (Alle korrekt.)

---

**Gesamtpunkte: 200** (50 × 4)

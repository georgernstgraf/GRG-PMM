# Mission: R und industrielle Statistik fuer PMM-Unterricht

## Why

Ab Herbst 2026 unterrichte ich Prozessmanagement (PMM) an der HTL Spengergasse
(Wirtschaftsingenieure — Technisches Management). Ich muss R und industrielle
Statistik selbst beherrschen, um 4 Semester selbstsicher zu leiten: KM7
(Statistik-Grundlagen, Annahmestichprobenpruefung), KM8 (SPC, Prozessfaehigkeit),
KM9a (DOE, Response Surface Methodology) und KM9b (Zuverlaessigkeit,
Energiemanagement).

**Phase 0 — JG3-Vorwissen (KM5+KM6).** Die Statistik beginnt laut Lehrplan in
JG3, nicht erst in JG4. Ich selber bin Statistik-Anfänger (siehe Learning Record
0001), darum lerne ich zuerst das JG3-Fundament, bevor ich KM7 unterrichte.
Drei Tracks (Curriculum-Map: `reference/jg3-verlauf.html`):

1. **Verteilungen** (KM5) — Zufallsvariablen, diskrete/stetige Verteilungen,
   Normalverteilung & Standardisierung, Exponentialverteilung. Lektionen 0003–0006.
2. **Schätzen & Inferenz** (KM5+KM6) — Lage-/Streumaße, Parameter vs. Schätzwerte,
   Erwartungstreue, Konfidenzintervalle (z, t, χ²). Lektionen 0007–0011.
3. **Anwendung & Lebensdauer** (KM6) — Prüfergebnisse darstellen, Kennzahlen, und
   Lebensdauerverteilungen (Weibull, Exponential, R(t), Ausfallrate). Lektionen 0012–0015.

Der Einstiegstest im Test-Repo [GRG-PMM-T](https://github.com/georgernstgraf/GRG-PMM-T)
prueft genau dieses Vorwissen bei den Schuelern. Werden dort Luecken sichtbar,
muss KM7 kompensieren.

## Success looks like

- R-Code fuer deskriptive Statistik, t-Tests, ANOVA und chi-Quadrat-Tests selbst schreiben
- Regelkarten (`qcc`) und Prozessfaehigkeitsanalysen (Cp, Cpk) eigenstaendig durchfuehren
- Vollfaktorielle und teilfaktorielle Versuchsplaene (`FrF2`) inklusive Auswertung erstellen
- Response Surface Methodology (`rsm`) inklusive Optimierung anwenden
- Annahmestichprobenplaene (ISO 2859) mit R berechnen
- Die Semesterplaene in `4AHWIT/` und `5AHWIT/` mit echtem Wissen hinterfuellen
- Studenten-Fragen souveraen beantworten

## Constraints

- Selbststudium, keine formelle Schulung
- Zeithorizont: bereit bis Herbst 2026
- Werkzeug: R / RStudio (bewusst gewaehlt, nicht Python)
- Unterrichtssprache: Deutsch, Fachbegriffe teils englisch
- Das PMM-Curriculum basiert auf BGBl. II Nr. 262/2015, Anlage 1.28

## Out of scope

- Python als Alternative (bewusst ausgeschlossen — industrielle Statistik-Pakete fehlen)
- Machine Learning / Deep Learning
- Reine Data Science ohne Qualitätsbezug
- Web-Entwicklung mit R (Shiny) ueber grundlegende Dashboards hinaus

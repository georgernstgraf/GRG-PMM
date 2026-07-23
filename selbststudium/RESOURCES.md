# R und Statistik Resources

## Knowledge

### Universitaere Online-Kurse (MOOCs)

- [Coursera: Duke University — Statistics with R Specialization](https://www.coursera.org/specializations/statistics)
  Der Goldstandard fuer Statistik + R kombiniert. 5 Kurse: Wahrscheinlichkeit, Inferenz, Regression, Bayesian. Audit kostenlos, Zertifikat ~$49/Mon. 4.7/5 (7700+ Reviews).

- [Coursera: Johns Hopkins — Data Science: Foundations using R Specialization](https://www.coursera.org/specializations/data-science-foundations-r)
  Breiteste Abdeckung: R Programming, Data Cleaning, EDA, Reproducible Research. 5 Kurse. Audit kostenlos.

- [edX: Harvard — Statistics and R (PH525)](https://www.edx.org/learn/r-programming/harvard-university-statistics-and-r)
  Biostatistik-Fokus mit echten Forschungsdaten. 4 Wochen. Audit kostenlos, Zertifikat $149.

- [edX: Stanford — Statistical Learning](https://www.edx.org/learn/statistics/stanford-university-statistical-learning)
  Hastie & Tibshirani (ISLR-Autoren) lehren ML/DOE mit R. Kostenlos. Annahmt Statistik-Vorwissen.

### Interaktive Plattformen

- [DataCamp](https://www.datacamp.com)
  Aehnlich boot.dev. Interaktive Coding-Uebungen im Browser, kurze Video-Lektionen. R-Track mit 20+ Kursen und "Statistics with R" Skill Track. ~$25/Monat (Premium).

- [Codecademy: Learn R + Learn Statistics with R](https://www.codecademy.com/learn/learn-r)
  Interaktiv, projektbasiert. "Learn R" (14h) + "Learn Statistics with R" (4h). Freemium, Pro ~$20/Monat.

- [swirl](https://swirlstats.com)
  Interaktives Lernen direkt in der R-Konsole. Installiert als R-Package. Kostenlos. Deutsch verfuegbar. Ideal fuer Muskelgedaechtnis.

- [Exercism R Track](https://exercism.org/tracks/r)
  Coding-Aufgaben mit menschlichem Mentor-Feedback. Kostenlos. Einzigartig fuer Code-Qualitaet.

- [Kaggle Learn: R](https://www.kaggle.com/learn/r)
  3-4h Micro-Kurs im Live-Notebook. Kostenlos. Sofort auf echten Datasets uebbar.

### Deutschsprachige Kurse

- [openHPI: Programmieren mit R fuer Einsteiger](https://open.hpi.de/courses/programmieren-r2022)
  Deutsch, kostenlos, HPI-Qualitaet. TOP-Empfehlung fuer den Einstieg.

- [Udemy: Statistik mit R](https://www.udemy.com/course/r-statistik/)
  Deutsch, ~15 Euro im Sale. Praxisorientiert.

- [derstatistiker.at — R-Kurse Wien](https://www.derstatistiker.at/r-kurs/)
  Oesterreichischer Anbieter. Vor Ort & online.

### Buecher (kostenlos online)

- [R for Data Science (2nd Ed.) — Hadley Wickham](https://r4ds.hadley.nz/)
  DAS Standardwerk. Kostenlos online (CC BY-NC-ND 3.0). Vom tidyverse-Erfinder. Kompletter Data-Science-Workflow. **Hauptmaterial fuer die R-Toolchain (KM7 UE 1-3).**

- [R4DS — Solutions to Exercises (offiziell, WIP)](https://mine-cetinkaya-rundel.github.io/r4ds-solutions)
  Musterloesungen zu allen Buch-Uebungen der 2e. Ideal zur Selbstkontrolle und Unterrichtsvorbereitung.

- [NIST/SEMATECH e-Handbook of Statistical Methods](https://www.itl.nist.gov/div898/handbook/)
  US-Government-Handbuch (gemeinfrei, Zitat mit Quellenangabe). Kap. 1 EDA · Kap. 2 Messprozess (Gage R&R) · Kap. 3 Prozesscharakterisierung (Faehigkeit) · Kap. 5 DoE/RSM · Kap. 6 SPC + Acceptance Sampling · Kap. 7 Vergleichstests · Kap. 8 Zuverlaessigkeit/Weibull. **Faktisch das PMM-Handbuch: deckt KM8/KM9 ab.**

- [ModernDive — Statistical Inference via Data Science (2e)](https://moderndive.com/v2/)
  Kostenlos (CC BY-NC-SA 4.0). Inferenz tidyverse-konsistent: Sampling/CLT (Kap. 7), Bootstrap & Konfidenzintervalle (Kap. 8), Hypothesentests (Kap. 9), t-Test-Beispiele in Anhang B. **Bruecke KM5/KM6 -> KM7-Tests.**

- [Learning Statistics with R — Danielle Navarro](https://learningstatisticswithr.com/)
  Kostenlos (CC BY-SA 4.0). Speziell fuer Statistik-Einsteiger geschrieben. Konversationeller, ehrlicher Ton. Kap. 9 Wahrscheinlichkeit · 10 Schaetzen · 11 Hypothesentests · 12 Chi-Quadrat · 13 t-Test · 14/16 ANOVA. **Deckt KM5-Kern + KM7-Tests ab.**

- [An Introduction to Statistical Learning (ISLR)](https://www.statlearning.com/)
  Kostenloses PDF. Regression, Klassifikation, Resampling, Regularisierung, Baeume, SVM. Jedes Kapitel mit R-Labs.

- [Advanced R (2nd Ed.) — Hadley Wickham](https://adv-r.hadley.nz/)
  Kostenlos. Wie R unter der Haube funktioniert: Environments, OO, Functional Programming. Macht R-Nutzer zu R-Programmierern.

- [Tidy Modeling with R — Max Kuhn & Julia Silge](https://www.tmwr.org/)
  Kostenlos. Modernes ML mit R (tidymodels-Framework).

### R-DSLs (Domain-Specific Languages)

R hat mehrere **interne DSLs** – sie sind nicht als separate Parser mit BNF/Grammatik realisiert,
sondern nutzen R's eigenen Parser + Non-Standard Evaluation (NSE) und fangen Ausdruecke als
ungepruefte R-Syntax ab (`enquo()`, Data Masks, Formulae), die erst spaeter im Kontext der
Daten ausgewertet werden. Die "Grammatik" steckt also im Verhalten der R-Funktionen, nicht in
einem separaten Parser.

| DSL | Syntax-Beispiel | Zweck |
|-----|-----------------|-------|
| **Formel-Interface** | `y ~ x + z` | `lm()`, `glm()`, `lme4`, `aggregate()`, `aov()` |
| **ggplot2 (Grammar of Graphics)** | `aes(x, y)` + Layer | Visualisierung |
| **dplyr / Tidy Eval** | `filter(df, x > 3)`, `{{ }}`, `!!` | Datenmanipulation |
| **data.table** | `DT[i, j, by]` | Alternative zu dplyr, extrem schnell |
| **rlang (Meta-DSL)** | Quosures, Data Masks, `enquo()` | Basis-Engine hinter den obigen |

Relevante Kapitel:
- **Advanced R:** [Metaprogramming (Kap. 17–21)](https://adv-r.hadley.nz/metaprogramming.html) – Expressions, Quasiquotation, Evaluation
- **Advanced R:** [Domain-Specific Languages (Kap. 22)](https://adv-r.hadley.nz/dsl.html) – Wie diese DSLs gebaut werden
- **rlang Vignette:** `vignette("tidy-eval")` – Data Masks und Tidy Evaluation im Detail

## Wisdom (Communities)

- [Posit Community (ehemals RStudio Community)](https://community.rstudio.com)
  Offizielles R/RStudio-Forum. Use for: Tidyverse-Fragen, Best Practices, Paket-Support.

- [Stack Overflow [r]-Tag](https://stackoverflow.com/questions/tagged/r)
  Groesste Q&A fuer spezifische Code-Fragen. Use for: Debugging, konkrete Loesungen.

- [Reddit r/rstats](https://reddit.com/r/rstats)
  Community-Diskussionen. Use for: Best Practices, Lerntipps, Werkzeugvergleich.

- [TidyTuesday (GitHub)](https://github.com/rfordatascience/tidytuesday)
  Woechentlich neues Dataset zum Ueben. Use for: Portfolio-Aufbau, regelmssige Praxis. Setzt dplyr/ggplot2-Grundkenntnisse voraus.

## Gaps

- Kein deutsches kostenpflichtiges Online-Seminal gefunden, das spezifisch SPC, DOE und Prozessfaehigkeit mit R deckt (statistik-seminare.de deckt Grundlagen ab, ist aber InPraesenz). → **Teilweise geschlossen (englisch):** NIST e-Handbook Kap. 2/3/5/6 deckt SPC, Faehigkeit, MSA, DoE/RSM fachlich ab (siehe `docs/lehrplan/r4ds-abdeckung.md`).
- Keine R-Kurse gefunden, die oesterreichische Normen (OENORM) in der Annahmestichprobenpruefung behandeln. → **Bleibt Eigenmaterial:** ISO 2859/3951-Spezifika (AQL/LTPD, Tabellen) mit `AcceptanceSampling`.

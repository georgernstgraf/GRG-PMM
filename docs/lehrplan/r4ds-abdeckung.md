# R4DS ↔ PMM-Lehrplan — Abdeckungsmatrix

**Fragestellung:** Welche Teile des PMM-Lehrplans (JG3–JG5, KM5–KM9b) deckt
*R for Data Science* (2e) ab — und welche Open-Source-Materialien füllen die
Restlücke? Entscheidungsgrundlage für „Buch als Hauptmaterial, wo es geht".

Erstellt: 2026-07-18 · Issue: #6 · Lehrplan-Quelle: `docs/lehrplan/pmm-lehrplan-text.md`

---

## 1. Lizenz-Grundregeln

| Ressource | Lizenz (verifiziert 2026-07-18) | Erlaubte Nutzung |
|---|---|---|
| **R4DS 2e online** (r4ds.hadley.nz) | **CC BY-NC-ND 3.0 US** (Repo-LICENSE geprüft) | Lesen, verlinken, als Lektüre zuweisen ✓ · **keine** Übersetzung/Adaptierung des Wortlauts in eigenen Dokumenten ✗ · eigene Texte mit gleicher *Didaktik* sind zulässig (Methodik ist nicht schützbar) |
| palmerpenguins (Datensatz-Paket) | **CC0 1.0** | uneingeschränkt, auch in eigenen Materialien |
| r4ds-solutions (Übungslösungen, offiziell, WIP) | keine explizite Lizenz auf der Site | verlinken |
| **ModernDive 2e** (moderndive.com/v2) | **CC BY-NC-SA 4.0** | Adaptieren mit Namensnennung, nicht-kommerziell, Weitergabe unter gleicher Lizenz |
| **Learning Statistics with R** (Navarro) | **CC BY-SA 4.0** | Adaptieren mit Namensnennung, Weitergabe unter gleicher Lizenz (kommerziell erlaubt) |
| **NIST/SEMATECH e-Handbook** (Handbook 151, NISTIR 2002) | US-Government-Work → in den USA gemeinfrei; Zitat mit Quellenangabe üblich | frei nutz-/zitierbar: Heckert, Filliben, Croarkin et al. (2002) |
| Paket-Vignetten (`qcc`, `FrF2`, `rsm`, `AcceptanceSampling`) | GPL-Familie (je Paket prüfen) | lesen, verlinken, zitieren |

**Konsequenz für alle eigenen Materialien:** Original-Text auf Deutsch, der die
R4DS-Didaktik *übernimmt*, nie den Buch-Wortlaut übersetzt. Lektüre wird
*verlinkt*, nicht kopiert („link, don't copy").

## 2. R4DS-Kapitelinventar (2e, 29 Kapitel)

| Teil | Kapitel |
|---|---|
| Whole game | 1 Data visualization · 2 Workflow: basics · 3 Data transformation · 4 Workflow: code style · 5 Data tidying · 6 Workflow: scripts and projects · 7 Data import · 8 Workflow: getting help |
| Visualize | 9 Layers · 10 Exploratory data analysis · 11 Communication |
| Transform | 12 Logical vectors · 13 Numbers · 14 Strings · 15 Regular expressions · 16 Factors · 17 Dates and times · 18 Missing values · 19 Joins |
| Import | 20 Spreadsheets · 21 Databases · 22 Arrow · 23 Hierarchical data · 24 Web scraping |
| Program | 25 Functions · 26 Iteration · 27 A field guide to base R |
| Communicate | 28 Quarto · 29 Quarto formats |

## 3. Abdeckung pro Kompetenzmodul

Legende: ✅ voll · 🟡 teilweise/flankierend · ❌ keine Abdeckung

### KM5 (JG3) — „Statistische Grundlagen der QS, Parameter statistischer Verteilungen und ihre Schätzwerte"

| Lehrplan-Thema | R4DS | Ergänzung (Open Source) | Eigenbedarf |
|---|---|---|---|
| Verteilungen (diskret/stetig, Normal, …) | ❌ (nur visuell: Histogramm/Boxplot in Kap. 1, 10) | Navarro Kap. 9–10 · NIST Kap. 1 (EDA) | — (JG3 wird nicht von uns unterrichtet; relevant für Einstiegstest-Kompensation + Georgs Selbststudium) |
| Parameter & Schätzwerte | ❌ | Navarro Kap. 10 · ModernDive Kap. 7 (Sampling, CLT) | — |
| R-Handwerk flankierend | 🟡 Kap. 1–3, 10 | | |

**Verdict: R4DS ≈ 10 % (flankierend). Statistik-Kern: Navarro + ModernDive.**

### KM6 (JG3) — „Zufallsstreu-/Vertrauensbereiche, Auswertung und Darstellung von Prüfergebnissen, Lebensdauerverteilungen"

| Lehrplan-Thema | R4DS | Ergänzung | Eigenbedarf |
|---|---|---|---|
| Zufallsstreu-/Vertrauensbereiche | ❌ | ModernDive Kap. 8 (Bootstrap & CI, `infer`) · Navarro Kap. 10 | — |
| **Darstellung von Prüfergebnissen** | ✅ **Kap. 11 (Communication), 28–29 (Quarto)** | — | — |
| Lebensdauerverteilungen | ❌ | NIST Kap. 8 (Assessing Product Reliability) | — |

**Verdict: „Darstellung" voll durch R4DS; Inferenz & Lebensdauer über ModernDive/NIST.**

### KM7 (JG4, Wintersemester) — „Statistische Tests, Annahmestichprobenprüfung" + Umweltmanagement

| Lehrplan-Thema | R4DS | Ergänzung | Eigenbedarf |
|---|---|---|---|
| **R-Toolchain (unser UE 1–3: Grundlagen, Einlesen, Deskriptiv, ggplot)** | ✅ **Kap. 1–8 + 12–13, 16, 18, 20** | ModernDive Kap. 1–4 (zweite Perspektive) | Session-Companion: Folien + Hausaufgaben im R4DS-Stil (kein Buchtext!) |
| Statistische Tests (t, χ², ANOVA) | ❌ | Navarro Kap. 11–14, 16 · ModernDive Kap. 9 + Anhang B (t-Tests mit `infer`) · NIST Kap. 7 (Product and Process Comparisons) | Brücken-Material: Tests im QS-Kontext, Normverweise |
| Annahmestichprobenprüfung (ISO 2859/3951) | ❌ | NIST Kap. 6.2 (Acceptance Sampling: single/double/multiple/sequential/skip-lot) · `AcceptanceSampling`-Vignetten | **Norm-Spezifika (AQL/LTPD, ISO-Tabellen, OC-Kurven in R) — Eigenmaterial nötig** |
| Umweltmanagement (Umweltprüfung, Stofffluss, Ökobilanz) | ❌ (Domäne, kein R-Bezug) | — | Eigenmaterial (Sankey via `networkD3`) |

**Verdict: Toolchain-Strang (UE 1–3) zu ~100 % buchverankert; Tests/Annahme über Komplemente + Eigenmaterial.**

### KM8 (JG4, Sommersemester) — „Statistische Prozesslenkung, Prozessfähigkeit" + Umweltmanagement

| Lehrplan-Thema | R4DS | Ergänzung | Eigenbedarf |
|---|---|---|---|
| SPC / Regelkarten | ❌ | NIST Kap. 6.1+6.3 (Control Charts, variables/attributes) · `qcc`-Vignetten | Eigenmaterial im R4DS-Stil (`qcc`-Workflows) |
| Prozessfähigkeit (Cp, Cpk) | ❌ | NIST Kap. 3 (Production Process Characterization) + 6.1 | Eigenmaterial |
| Messmittelfähigkeit (Gage R&R) | ❌ | NIST Kap. 2 (Measurement Process Characterization) | Eigenmaterial |
| Umweltrecht/-methoden | ❌ | — | Eigenmaterial |

**Verdict: R4DS 0 %. Rückgrat: NIST Kap. 2/3/6 + qcc; Didaktik-Hülle selbst geschrieben.**

### KM9a (JG5, Sem 9) — „Planung und Beurteilung industrieller Versuchsmethoden" (DoE, RSM)

| Lehrplan-Thema | R4DS | Ergänzung | Eigenbedarf |
|---|---|---|---|
| Voll-/teilfaktorielle Pläne | ❌ | NIST Kap. 5 (Process Improvement: DOE, fractional factorials) · `FrF2`-Vignetten | Eigenmaterial |
| Response Surface Methodology | ❌ | NIST Kap. 5 (RSM-Abschnitte) + Kap. 4 (Process Modeling) · `rsm`-Vignetten | Eigenmaterial |
| Faktorielle ANOVA (Konzept-Brücke) | ❌ | Navarro Kap. 16 | — |

**Verdict: R4DS 0 %. Rückgrat: NIST Kap. 4/5 + FrF2/rsm.**

### KM9b (JG5, Sem 10) — „Zuverlässigkeit von Systemen" + Facility/Energiemanagement

| Lehrplan-Thema | R4DS | Ergänzung | Eigenbedarf |
|---|---|---|---|
| Zuverlässigkeit, Weibull, R(t), Ausfallrate | ❌ | NIST Kap. 8 (Assessing Product Reliability: Lebensdauer-Verteilungen, Weibull, zensierte Daten, beschleunigte Tests) | Eigenmaterial |
| Facility-/Energiemanagement | ❌ | — | Eigenmaterial |

**Verdict: R4DS 0 %. Rückgrat: NIST Kap. 8.**

### JG1/JG2 (KM3+4, Prozessmanagement)

Kein R-/Statistik-Bezug → außerhalb des R4DS-Scopes. Keine Abdeckung nötig/möglich.

## 4. Gesamt-Verdict

1. **R4DS deckt die komplette R-Toolchain ab** — Datenstrukturen, Import,
   Transformation, Visualisierung, Workflow, Reporting. Das ist exakt unser
   KM7-Einstieg (UE 1–3) plus KM6-„Darstellung von Prüfergebnissen".
2. **R4DS deckt 0 % des industriellen Statistik-Kerns ab** (Verteilungen,
   Schätzer, KIs, Tests, SPC, Fähigkeit, Annahmeprüfung, DoE, Zuverlässigkeit).
3. **Die Lücke ist hervorragend mit freiem Material füllbar:**
   - Statistik-Theorie in R: **Navarro** (Kap. 9–16) + **ModernDive** (Kap. 7–10, Anhang B)
   - Industrie-Statistik (SPC, Fähigkeit, MSA, DoE, Zuverlässigkeit, Annahme):
     **NIST e-Handbook** (Kap. 1–8) — faktisch das PMM-Handbuch
   - Norm-Nähe (ISO 2859/3951) und Paket-Workflows bleiben **Eigenmaterial**.

## 5. Adoptionsstrategie (Vorschlag)

- **UE 1–3 (KM7):** an die Buch-Reihenfolge anlehnen („whole game": ggplot
  vor Syntax). Lektüre-Zuweisung pro UE (englisch, B1+/B2-förderlich);
  unsere Folien/Hausaufgaben = Session-Companion im R4DS-Stil, Original-Text.
- **UE 4–13 (KM7):** Navarro/ModernDive/NIST als Lektüre-Rückgrat, Eigenmaterial
  als Brücke in den QS-Kontext (inkl. ISO-Normen bei Annahmeprüfung).
- **KM8/KM9:** Eigenmaterial im R4DS-Stil, NIST-Kapitel als Referenzlektüre.
- **Georgs Selbststudium (Phase 0, JG3-Tracks):** deckt sich fast 1:1 mit den
  Komplementen — Verteilungen ≙ Navarro 9–10, Schätzen & Inferenz ≙ ModernDive
  7–8, Lebensdauer ≙ NIST 8. RESOURCES.md entsprechend priorisieren.

## 6. Seitenpfad: deutsche Community-Übersetzung

Langfristig (ab 2027/28 relevant, nicht für Sept 2026): maschinell unterstützte
DE-Übersetzung der 2e mit menschlichem Review — offizieller Weg über
O'Reilly-Freigabe pro Sprache (Präzedenz ES/PT/VI: hadley/r4ds#955, #1711,
#1783). Deutsche Anfrage existiert unbeantwortet: **hadley/r4ds#1414**.
Kommentar-Entwurf für Georg liegt vor (Issue #6, Phase 6). Bis dahin gilt
strikt: eigene Texte = Originale, keine Buch-Übersetzung.

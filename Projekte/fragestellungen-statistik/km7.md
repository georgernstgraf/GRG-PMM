# KM7 — Fragestellungen mit Datenmaterial

**KM7:** Statistische Tests & Annahmestichprobenprüfung (4HWIT, WS)
**Semesterplan:** `lehrplan/pmm-hwit/jg4-semesterplan-ws.md`
**Steckbrief:** `lehrplan/kompetenzmodule/km7.md`
**Konvention/Status-Legende:** siehe `README.md` in diesem Ordner.

| # | UE-Block | Eignung offener Daten |
|---|---|---|
| 1–3 | EDA & R-Toolchain | ⭐⭐⭐ ideal |
| 4–5 | Verteilungen & Inferenz | ⭐⭐ gut |
| 6–8 | Statistische Tests | ⭐⭐⭐ ideal |
| 9–11 | Annahmestichprobenprüfung | ❌ → 🏭 Eigenmaterial |
| 12 | Umweltmanagement kompakt | ⭐⭐⭐ Eurostat/OGD |
| 13 | Fallstudie | nutzt die besten Einträge oben |

---

## UE 1–3: EDA & R-Toolchain

### F1: Wie teuer ist Strom in Europa — und wo steht Österreich?

- **Ausgangsfrage:** Halbjahres-Strompreise für Haushalte in allen
  EU/EFTA-Ländern: Wie sieht die Verteilung aus, wo liegt Österreich,
  was passiert mit der Zeit?
- **Daten:** 📦 `daten/strompreise-eu-haushalte.csv` (kuratiert aus Eurostat
  `nrg_pc_204`, JSON → tidy CSV; Metadaten `strompreise-eu-haushalte.md`)
- **Aufgabenskizze:** Histogramm + Boxplot (ggplot2) · „Wo steht AT?"
  mit `filter`/`arrange` · Gruppenvergleich Haushaltsgrößen-Bänder ·
  Zeitreihe für AT vs. EU-Durchschnitt (geom_line)
- **R:** `ggplot2`, `dplyr` — passt zu SA-01/SA-02 (Werkzeug) *und*
  UE 1–3 des Semesterplans
- **Status:** 📦 Daten im Repo

### F2: Verurteilungsstatistik Österreich — wo wird wie viel abgeurteilt?

- **Ausgangsfrage:** Sämtliche den Verurteilungen zugrunde liegenden
  Delikte (2012–2025) je Gerichtssprengel: Wie verteilt sich die
  Belastung (Wien vs. Rest?), wie stabil über die Jahre?
- **Daten:** 📦 `daten/verurteilungen-gerichtsbezirke.csv` (kuratiert aus
  Statistik Austria OGD [`OGD_krimi001_KRIMI_1`](https://data.statistik.gv.at/web/meta.jsp?dataset=OGD_krimi001_KRIMI_1),
  CC BY 4.0; das Original-CSV ist kodiert und braucht die `C-`-Dimension-
  Files — Bauanleitung in `verurteilungen-gerichtsbezirke.md`)
- **Wichtig (Quellen-Ehrlichkeit):** Das ist die **Gerichtsperspektive**
  (Verurteilungen), *nicht* die PKS-Anzeigenstatistik! Die Diskrepanz
  Anzeigen ↔ Verurteilungen ist selbst Unterrichtsstoff (siehe
  Femizid-Doku, Kapitel „drei Messinstrumente").
- **Aufgabenskizze:** kodierte CSV + Dimension-Files per `left_join`
  lesbar machen (perfekte SA-02-Join-Übung) · Fallstrick OLG-Aggregatzeilen
  (`KRIMJ93-*`) und „Nicht klassifizierbar" vor dem Summieren herausfiltern
  · EDA: Verteilung je Jahr, log-Skala wegen Ausreißer Wien · Ranking
- **R:** `readr` (Semikolon!), `dplyr` joins, `ggplot2`
- **Status:** 📦 Daten im Repo

---

## UE 4–5: Verteilungen & Inferenz

### F3: Ist der Strompreis „signifikant hoch"? — Punkt- und Intervallschätzung

- **Ausgangsfrage:** Aus den 27+ EU-Ländern als „Stichprobe" den
  EU-Durchschnitt schätzen: Punktschätzer, Standardfehler, Bootstrap-CI.
  Wie groß ist die Unsicherheit bei n ≈ 30 „Ländern"?
- **Daten:** 📦 `daten/strompreise-eu-haushalte.csv` (gleiche Basis wie F1)
- **Aufgabenskizze:** `mean`/`sd` · CI per Formel vs. Bootstrap-CI mit
  `infer` · Sensitivität: Lass AT weg — wie wandert das CI? (n = kleine
  Grundgesamtheit, heiße Diskussion „Stichprobe oder Population?")
- **R:** `infer`, `qnorm`
- **UE-Anker:** UE 5 (Schätzen & Konfidenzintervalle)
- **Status:** 📦 Daten im Repo

### F4: Femizide — Konfidenzintervalle bei kleinen n

- **Ausgangsfrage:** 26–42 vollendete Morde an Frauen pro Jahr (AT):
  Sind Jahresunterschiede von ±3 aussagekräftig? → Nein, und *warum* ist
  eine Lehrbuch-Frage.
- **Daten:** 🔗 `Projekte/femizid-taeter-nationalitaet.md` — dort: AÖF-
  Jahreslisten (PDF, von den Schüler:innen selbst zu digitalisieren → CSV!)
  und Parlaments-Beilagen mit disaggregierten PKS-Tabellen
- **Aufgabenskizze:** Binomialmodell, CI-Width vs. n diskutieren ·
  „Vom PDF zur CSV"-Aufgabe (Digitalisierung + R-Auswertung)
- **UE-Anker:** UE 4–5 · Rückgriff: KM5 (Binomial)
- **Status:** 🔗 nur Link (Rohmaterial PDF)

---

## UE 6–8: Statistische Tests

### F5: Verdienen alle Berufe gleich viel? (t-Test & ANOVA)

- **Ausgangsfrage:** CPS-1985-Mikrodaten (US-Arbeitskräfteerhebung,
  n = 534): Lohn-Unterschiede nach Geschlecht (t-Test), nach
  Beruf/Region (ANOVA + Tukey).
- **Daten:** 📦 `daten/cps1985.csv` (aus `AER::CPS1985`; Metadaten
  `cps1985.md`)
- **Aufgabenskizze:** `t.test(wage ~ sex)` + Effektstärke · `aov(wage ~
  occupation)` + TukeyHSD · Kontrolle durch Kovariaten (Erfahrung)
  vorbesprechen · Boxplots als Begleitung
- **R:** `t.test`, `aov`, `infer`
- **UE-Anker:** UE 6 (t-Tests), UE 8 (ANOVA)
- **Status:** 📦 Daten im Repo

### F6: Kontingenztafeln mit echten Daten (χ²)

- **Ausgangsfrage:** Variante a (Österreich, heikel-sensibel):
  Täter-Nationalität × Altersklasse aus der PKS-Beilage zur
  Parlamentsanfrage PA 18374/J — inkl. Simpson-Paradox-Diskussion.
  Variante b (US, niederschwellig): GSS 1974–2002 — Zusammenhänge
  zwischen Einstellungen (z. B. Homosexualität als „always wrong"?) und
  Jahr/Region/Education.
- **Daten:** Variante a: 🔗 `Projekte/femizid-taeter-nationalitaet.md`
  (Tabellen im Beilage-PDF, zu digitalisieren). Variante b: 📦
  `daten/gss7402.csv` (aus `AER::GSS7402`; Metadaten `gss7402.md`)
- **Aufgabenskizze:** `table`/`janitor::tabyl` → Kontingenztafel ·
  `chisq.test` mit/ohne Yates · erwartete Häufigkeiten prüfen ·
  mosaicplot · variant a zusätzlich: Nennerproblem (relative Risiken)
- **UE-Anker:** UE 7 (χ²-Tests)
- **Status:** 📦 b im Repo · 🔗 a nur Link

---

## UE 9–11: Annahmestichprobenprüfung

### F7: Annahmestichprobenprüfung (ISO 2859/3951)

- **Ausgangsfrage:** Stichprobenpläne brauchen Los-Daten
  (Fehlerzahl je Los, Messwerte mit Toleranzen). Öffentliche
  Statistik-Daten liefern beides nicht — sie sind Beobachtungsdaten,
  keine Prüflote.
- **Daten:** 🏭 **Eigenmaterial nötig** (Norm-Tabellen ISO 2859/3951,
  simulierte Lose via `rbinom`/`rnorm` — Simulation ist hier nicht
  Notbehelf, sondern die sauberere Quelle, weil der Prozess bekannt ist)
- **Aufgabenskizze:** OC-Kurven mit `AcceptanceSampling` ·
  Produzenten-/Konsumentenrisiko am simulierten Los · aql/ltpd-Verhandlung
  als Rollenspiel
- **UE-Anker:** UE 9–11
- **Status:** 🏭 Eigenmaterial

---

## UE 12: Umweltmanagement kompakt

### F8: Ökosteuern — was treibt den Hebel?

- **Ausgangsfrage:** Ökosteuereinnahmen Österreichs als Zeitreihe:
  Struktur, Brüche, Wachstum — und: was macht eine „Ökosteuer" überhaupt
  aus (Abgrenzungs- und Operationalisierungsfrage)?
- **Daten:** 🔗 Statistik Austria OGD `OGD_umwoekosteu_Oekosteuern_1`
  (<https://data.statistik.gv.at/data/OGD_umwoekosteu_Oekosteuern_1.csv>) —
  klein genug für direkten Download in der DS; kuratierte CSV folgt bei
  konkreter Aufgaben-Erstellung
- **Aufgabenskizze:** Zeitreihe plotten, indexed auf 1995 = 100 ·
  Zuspiel: Eurostat-Umweltindikatoren (Treibhausgase, Abfall, Kreislauf-
  wirtschaft) via [`eurostat`-Paket](https://cran.r-project.org/package=eurostat)
  · Sankey der Stoffflüsse bleibt Eigenmaterial (`networkD3`)
- **UE-Anker:** UE 12 (Umweltmanagement kompakt)
- **Status:** 🔗 nur Link (verifiziert 200)

---

## UE 13: Fallstudie & Semesterabschluss

### F9: Vom Rohmaterial zur Entscheidung

- **Ausgangsfrage:** durchgängiges Beispiel: Daten → EDA → Test →
  Entscheidung (Semesterplan UE 13)
- **Empfehlung:** F1/F3 (Strompreise) als Hauptstrang — genug Struktur für
  EDA *und* Inferenz *und* Tests (Vergleich zweier Ländergruppen), mit
  echter Fragestellung und frisch kuratierten Daten. Alternativ F5
  (Löhne), wenn der menschliche Kontext besser ankommt.
- **Status:** 📦 nutzt kuratierte Daten

---

## Verweise

- Detail-Recherche Femizid/Kriminalität (inkl. Methodik-Kapitel):
  [`Projekte/femizid-taeter-nationalitaet.md`](../femizid-taeter-nationalitaet.md)
- Rdatasets-Katalog: `daten/_index/datasets.csv` (durchsuchbar mit
  `grep '"AER"' datasets.csv` o. ä.)

# KM7 — Statistische Tests & Annahmestichprobenprüfung

**Klasse/Semester:** 4HWIT, 7. Semester (Wintersemester)
**Wochenstunden (Lehrplan):** 4(1) · **Zeitmodell:** 1 DS/Woche → 13 echte UE + 2 reservierte DS (Einstiegstest, LF/Admin)
**Bereiche:** Statistische Methoden + Umweltmanagement
**Konkreter Semesterplan:** `4HWIT/semesterplan-ws.md`

## Worum geht es?

KM7 ist das Herzstück der statistischen Qualitätssicherung: Aus Daten
Entscheidungen ableiten, die über reine Beschreibung hinausgehen. Zwei
Fragen stehen im Zentrum:

1. **„Ist der Unterschied echt — oder Zufall?"** Statistische Tests
   (t, χ², ANOVA) geben eine formale Antwort: Mit Hypothesen, p-Werten
   und Fehlerarten lernen die Schüler:innen, Aussagen über Grundgesamtheiten
   aus Stichproben zu treffen — und deren Unsicherheit zu beziffern.
2. **„Nehmen wir die Lieferung an — oder nicht?"** Die
   Annahmestichprobenprüfung (ISO 2859/3951) ist die industrielle
   Anwendung par excellence: Statt Vollprüfung wird eine Stichprobe
   gezogen und anhand von Annahmezahlen entschieden. OC-Kurven machen
   das Risiko (Produzenten-/Konsumentenrisiko, AQL/LTPD) sichtbar.

Schulautonom flankierend: Die **R-Toolchain** (UE 1–3 nach R4DS-
„Whole Game": Visualisierung vor Syntax) wird als Werkzeug eingeführt
und danach durchgehend genutzt. Plus ein kompakter Block
**Umweltmanagement** (Lehrplan-Bereich 2).

## Wofür braucht man das in der Praxis?

- **Qualitätsingenieur:in:** Maschinenvergleich, Prozessänderung
  verifizieren, Prüfmittel beurteilen — alles Tests.
- **Wareneingang/Lieferantenbewertung:** Annahmestichprobenpläne nach
  ISO 2859 sind tägliches Werkzeug; AQL verhandeln heißt Risiko
  aushandeln.
- **Berichtswesen:** Ergebnisse müssen als belastbare Grafik/Kennzahl
  kommuniziert werden (ggplot2, Quarto).

## Inhalte

### Wissen (Fakten & Begriffe)
- Hypothese (H0/H1), Signifikanzniveau α, p-Wert, Fehler 1./2. Art, Teststärke
- Ein-/zweiseitige Fragestellungen; gepaart vs. ungepaart
- t-Test, χ²-Anpassungs- und Unabhängigkeitstest, einfaktorielle ANOVA,
  nichtparametrische Alternativen (Wilcoxon, Kruskal-Wallis) und ihre Voraussetzungen
- AQL, LTPD, Produzenten-/Konsumentenrisiko, OC-Kurve, Annahmezahl c,
  Stichprobenumfang n; einfache/doppelte Stichprobenpläne, Switching-Regeln
- ISO 2859 (attributiv) vs. ISO 3951 (variabel, k-Methode)
- Grundlagen Umweltmanagement: Umweltprüfung, Stoffflussanalyse, Ökobilanz,
  Anforderungen an Umwelt-/Ressourcen-/Abfallmanagement

### Verstehen (Zusammenhänge)
- Warum der p-Wert *nicht* die Wahrscheinlichkeit ist, dass H0 gilt
- Wie Stichprobenumfang, Effektgröße und Teststärke zusammenhängen
- Warum die OC-Kurve die Güte eines Prüfplans vollständig beschreibt —
  und warum „annehmen" nicht „gutheißen" bedeutet
- Wie die Wahl α/β das Risiko zwischen Produzent und Konsument verteilt
- Wann parametrisch vs. nichtparametrisch (Voraussetzungsverletzung)

### Können (mit R umsetzen)
- Daten einlesen (`readr`/`readxl`), transformieren (`dplyr`),
  visualisieren (`ggplot2`) — R4DS-Whole-Game-Workflow
- Verteilungen mit `d/p/q/r`-Funktionen handhaben (Recap KM5)
- Tests durchführen und interpretieren: `t.test`, `chisq.test`, `aov` +
  `TukeyHSD`, `wilcox.test`; CI-Logik mit `infer` (ModernDive-Stil)
- OC-Kurven mit `AcceptanceSampling` berechnen und plotten;
  Prüfplan zu vorgegebenem AQL/LTPD auswählen
- Ergebnisse als Quarto-Bericht kommunizieren
- Stofffluss als Sankey-Diagramm (`networkD3`) darstellen

## Ressourcen

Matrix-Keys (Details: `docs/lehrplan/ressourcen-matrix.md`):
`KM7-tests` · `KM7-annahme` · `KM7-umweltpruefung` ·
`KM7-stofffluss-oekobilanz` · `KM7-umwelt-anforderungen`

| Strang | Lektüre | R-Umsetzung |
|---|---|---|
| R-Toolchain (schulautonom, UE 1–3) | R4DS Kap. 1–10, 20 | tidyverse |
| Verteilungen/KI (Recap KM5/6) | Navarro 9–10 · ModernDive 7–8 · NIST 1 | `d/p/q/r`, `infer` |
| Tests | Navarro 11–14, 16 · ModernDive 9 + Anh. B · NIST 7 | `t.test`, `chisq.test`, `aov` |
| Annahmeprüfung | NIST 6.2 + **Eigenmaterial** (ISO-Normen!) | `AcceptanceSampling` |
| Umwelt | **Eigenmaterial** | `networkD3` |

**Eigenbedarf (Prio):** ISO 2859/3951-Spezifika (Norm-Tabellen, AQL/LTPD-
Werkzeug) · Umweltmanagement komplett.

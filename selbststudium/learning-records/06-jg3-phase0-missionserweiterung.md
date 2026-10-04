# Mission-Erweiterung: Phase 0 (JG3-Vorwissen KM5+KM6) eingefügt

Die Mission „R + Statistik für PMM-Unterricht" hat bislang bei KM7 (JG4)
angeknüpft. Da der Lernende Statistik-Anfänger ist (LR 01), wird eine
**Phase 0** vor KM7 eingeschoben, die das gesetzlich in JG3 verankerte
Vorwissen behandelt: KM5 (Wahrscheinlichkeitsverteilungen, Parameter/Schätzwerte)
und KM6 (Zufallsstreu-/Vertrauensbereiche, Prüfergebnis-Darstellung,
Lebensdauerverteilungen).

## Why

- Der Lernende unterrichtet ab Herbst 2026 KM7 und muss das JG3-Vorwissen der
  Schüler voraussetzen können. Da er es selber noch nicht tief beherrscht, ist
  JG3 seine eigene Zone der proximalen Entwicklung.
- Der Einstiegstest im Test-Repo GRG-PMM-T prüft genau diese 5 Themencluster.
  Wer sie hier lernt, kann den Test souverän korrigieren und weiß, wo Schüler
  Lücken haben werden.

## Struktur

3 Tracks (konzeptionell gruppiert, nicht nach KM), 13 Lektionen:
- **Track 1 — Verteilungen** (KM5): L03–06
- **Track 2 — Schätzen & Inferenz** (KM5+KM6): L07–11
- **Track 3 — Anwendung & Lebensdauer** (KM6): L12–15

Curriculum-Map: `reference/jg3-verlauf.html`. Lektionen nummerieren weiter ab
03 (an 01/02 = R-Mechanik aus KM7-Vorbereitung anknüpfend).

## Implications

- L03 (Zufallsvariablen & Wahrscheinlichkeit) ist der Startpunkt der nächsten
  Session — das Vokabular aller folgenden Statistik.
- Jede Lektion kombiniert Theorie + R-Praxis (z. B. `dbinom`, `pnorm`, `t.test`,
  `pweibull`) und enthält Quiz-Elemente (reuse `assets/quiz.js`).
- Nach Track 1+2 kann KM7 UE 4–5 (Verteilungen, t/χ²) als Review behandelt
  werden, nicht als Erstkontakt — das beschleunigt KM7 später deutlich.
- Glossar wächst pro Lektion um die dort eingeführten Begriffe (zuerst
  Zufallsvariable, diskret/stetig, Dichtefunktion, Verteilungsfunktion).

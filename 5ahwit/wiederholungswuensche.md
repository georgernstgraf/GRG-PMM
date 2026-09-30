# Wiederholungswünsche aus der 4. Klasse — 5AHWIT

**Hausübung vom 2026-09-23:** eigenes PMM-Repo auf GitHub anlegen und im
README festhalten, welche Inhalte der 4. Klasse wiederholt werden sollen.

Auswertung aller **18 abgegebenen Repos** (20 Einträge in der Klassenliste,
davon 2 ohne Repo). Gezählt wird der Stand von `HEAD`; die Historie wurde
mitgelesen, weil mehrere Lösungen erst in späteren Commits dazugekommen sind.

---

## Rückmeldungen

Sechs Repos nennen ein Thema. Zitiert wird wörtlich, inklusive Tippfehler —
das sagt mehr als eine geglättete Liste.

| Vorname | Wunsch (wörtlich) | Thema | Stand |
|---------|-------------------|-------|-------|
| Sinan | „Ích würde gerne nochmal t-test chi test und vielleicht ganz kurz die Binomialverteilung (power, etc etc)" | t-Test, Chi-Test, Binomialverteilung, Power | 23.09. |
| Luise | „Mich würden sehr die chi-tests interessieren." | Chi-Test | 23.09. |
| Daniel | „Ich habe letztes Jahr das Thema der t-Tests nicht sehr gut verstanden. ABer was für mich am einfachsten war, war der Chi-Test." | t-Test (Lücke), Chi-Test (sicher) | 23.09. |
| Celina | „die chi test, welche graphischen darstellungen nutzlich sind und welch egarnicht ausschlagend sind" | Chi-Test, Grafikwahl | 29.09. |
| Noah | „WH vom letzten Jahr: T-Test (gepaart) / Z-Test" | t-Test gepaart, Z-Test | 23.09. |
| Enzo | „Boxplott wäre toll" | Boxplot | 23.09. |

## Auswertung

| Thema | Nennungen | Wer |
|-------|-----------|-----|
| **Chi-/Chi²-Test** | 4 | Sinan, Luise, Daniel, Celina |
| **t-Test** | 3 | Sinan, Daniel, Noah |
| **Boxplot & Grafikwahl** | 2 | Enzo, Celina |
| **Z-Test** | 1 | Noah |
| **Binomialverteilung** | 1 | Sinan |
| **Teststärke (Power)** | 1 | Sinan |

**Abgabequote: 6 von 18 Repos** nennen ein Thema. Im Schnitt sind es rund
1,6 Themen pro Antwort — es sind also klare, kleine Wünsche, keine
Themenlisten.

**Was auffällt**

- **Der Chi-Test ist der Spitzenreiter** und zugleich das einzige Thema,
  das als *leicht* gemeldet wird (Daniel: „was für mich am einfachsten
  war"). Dazu passt, dass ihn vier Personen nennen. Ein Hinweis: hier ist
  nicht viel Zeit zu investieren.
- **Der t-Test ist die eigentliche Lücke.** Er wird von den drei
  Nennenden entweder als gepaarter Test präzisiert (Noah) oder
  ausdrücklich als nicht verstanden gemeldet (Daniel). Sinan nennt ihn
  ohne Zusatz.
- **Sinans Antwort ist die weiteste** und deckt drei Kompetenzmodule ab
  (KM5 Verteilungen, KM7 Tests, KM7 Teststärke). Das „ganz kurz" bei der
  Binomialverteilung heißt: anstreifen, nicht vertiefen.
- **Daniel hat seine Antwort dreimal nachgeschärft**: erst „t-Tests nicht
  verstanden / Chi-Test am einfachsten", dann „ChiQuadrat-Test", dann
  zurück auf „Chi-Test". Die Unsicherheit liegt in der Bezeichnung, nicht
  im Stoff.
- **Kein Wunsch betrifft DoE oder RSM** — also genau den Stoff, der laut
  Semesterplan UE 1 eröffnet. Die Lücken fallen dort unmittelbar auf.

## Ohne Antwort (12 Repos)

In allen Fällen wurde abgegeben — das Repo existiert und enthält mindestens
einen Commit. Ein Thema wurde nicht genannt.

| Vorname | Stand des README |
|---------|-------------------|
| David S. | „Prozessmanagement Statistik" + „Meine Güte" |
| Petar | „servus hallo" + „hey" |
| Ahmed | nur Repo-Titel |
| Aleksandar | nur Repo-Titel |
| Boris | nur Repo-Titel |
| Furkan | nur Repo-Titel |
| Jasmeet | nur Repo-Titel |
| Marta Maria | nur Repo-Titel |
| Nikolas | nur Repo-Titel |
| Julian | nur Repo-Titel |
| Drazen | nur Repo-Titel |
| David W. | nur Repo-Titel |

Dazu zwei weiter Einträge ohne Repo: **Layth** und **Lara**.

Die Titel-Zeile bei den meisten entstammt dem Initial-Commit, den GitHub
beim Anlegen des Repos erzeugt. Wer nur diese Zeile geschrieben hat, hat
git beherrscht (Initial-Commit, Push) und die eigentliche Frage noch nicht
beantwortet — das ist ein Nachholauftrag, kein fehlender Wunsch.

## Anmerkung zum Datenschutz

Drei Repos enthalten im README committete `git config`-Zeilen mit den
**Schul-E-Mail-Adressen** der Studierenden (`…@spengergasse.at`). Sie haben
das vermutlich als Notiz für sich gemacht, die in der öffentlichen
Hausübung gelandet ist. Die Adressen werden hier bewusst **nicht**
wiederholt.

Für die nächste Hausübung: `git config` gehört ins Terminal, nicht ins
README.

## Konsequenz für den Unterricht

Die Wünsche decken sich fast vollständig mit dem, was
`teach/learning-records/0001-vorwissen-onramp.md` als offene Lücke
ausweist: der Semesterplan 5HWIT WS setzt KM7 (Tests, ANOVA) und
`lm()`-Lesekompetenz als Vorausgesetzt für UE 1 (DoE) voraus.

Fünf vorbereitete Lessons in `unterricht/` decken die Wünsche ab:

| Lesson | Thema | Wunsch von |
|--------|-------|------------|
| [`KM7-01-mittelwertsvergleich-t-test`](../unterricht/KM7-01-mittelwertsvergleich-t-test/) | z-Test & t-Test, gepaart/ungepaart | Sinan, Noah, Daniel |
| [`KM5-02-binomialverteilung-und-annahmeschwelle`](../unterricht/KM5-02-binomialverteilung-und-annahmeschwelle/) | Binomialverteilung, Annahmeschwelle | Sinan |
| [`KM7-02-chi-quadrat-test`](../unterricht/KM7-02-chi-quadrat-test/) | Anpassungs- & Unabhängigkeitstest | Sinan, Luise, Daniel, Celina |
| [`KM6-01-boxplot-und-grafikwahl`](../unterricht/KM6-01-boxplot-und-grafikwahl/) | Boxplot, IQR, welche Grafik wofür | Enzo, Celina |
| [`KM7-03-teststaerke-und-stichprobenumfang`](../unterricht/KM7-03-teststaerke-und-stichprobenumfang/) | Fehler 1./2. Art, Teststärke, n | Sinan |

Alle fünf arbeiten mit den Betriebsdaten aus `assets/betriebsdaten.csv`
(120 Messungen, 3 Maschinen × 10 Chargen × 4 Teile, Sollmaß 10,00 mm ±
0,15 mm) — dieselben Daten, fünf Perspektiven darauf.

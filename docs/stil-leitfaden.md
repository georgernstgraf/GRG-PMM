# Stil-Leitfaden — R4DS-Stimme auf Deutsch

Wie eigene Unterrichtsmaterialien (Folien, Hausaufgaben, Lern-Lektionen)
in PMM klingen und aufgebaut sind: die **Didaktik** von *R for Data
Science* (2e, Wickham/Çetinkaya-Rundel/Grolemund, r4ds.hadley.nz)
übernommen, der **Wortlaut nie**. Gilt für KM7-UE 1–3 (4HWIT WS) und alle
künftigen Eigenmaterialien (KM8, KM9, 5HWIT).

Grundlage: Issue #6 (Phase 3) · Lizenzen: `lehrplan/pmm-hwit/r4ds-abdeckung.md` ·
Kernregel aus `docs/ai/CONVENTIONS.md`: **„Link, don't copy"** — R4DS 2e
ist CC BY-NC-ND 3.0; wir verlinken Kapitel, schreiben aber jeden Satz
selbst. Didaktik ist nicht schützbar, Übersetzung schon.

---

## 1. Die sechs Bausteine der R4DS-Stimme

Jede UE (Folien und Hausaufgabe) folgt dieser Dramaturgie:

| # | Baustein | Funktion | Auf den Folien |
|---|----------|----------|----------------|
| 1 | **Einstiegsfrage** | Neugier wecken, Problem sichtbar machen | Folie 2: eine reale Frage mit Datenbezug, keine Definition |
| 2 | **Ziel-Artefakt** | Womit die Frage beantwortet wird | Folie 3: der fertige Plot/die Tabelle als „Sehnsuchtsbild" |
| 3 | **Inkrementeller Aufbau** | Vom leeren Fundament zum Ziel, Schritt für Schritt | Mittelteil: jede Folie fügt genau ein Konzept hinzu |
| 4 | **„Jetzt du!"** | Sofort anwenden, live im Unterricht | 1 Folie mit 3 Mini-Aufgaben (Ausführen + Vorhersagen) |
| 5 | **Typische Fehler** | Klippen benennen, bevor Schüler hineinfallen | 1–2 Folien, jeder Fehler mit Anti-Beispiel-Code |
| 6 | **Zusammenfassung & Ausblick** | Kern festhalten, Neugier auf nächste UE | Schlusstabelle + eine Frage, die in die nächste UE führt |

Die **Lektüre-Box** (siehe § 3) steht zusätzlich am Anfang — sie *ist* der
siebte Baustein, auch wenn das Buch ihn nicht benennt: wir sagen den
Schülern, was sie lesen sollen.

## 2. Ton und Sprache

- **Du-Form, warm, direkt.** Wie ein Kollege, der mitdenkt — nicht wie
  ein Handbuch. Kurz: lieber zwei Sätze als ein Absatz.
- **Motivieren vor definieren.** Erst die Frage, dann das Werkzeug.
  Ein neues Konzept braucht immer einen *Anlass*, keine Kategorie.
- **Eine Idee pro Folie.** Unbedingt. Fragment-Animationen für Zu-Aufbau.
- **Fragen statt Behauptungen**, wo es geht: „Was passiert hier?" schlägt
  „Das ist die Syntax für …".
- **Echte Daten, keine Dummy-Zahlen.** penguins, mpg, dann
  Messwerte aus der Produktion. Zahlen, die man sich merken kann.
- **Deutsch, aber Fachwörter zweisprachig** bei neuen Begriffen:
  „Mapping (Zuordnung)" — die englischen Begriffe müssen sitzen, weil
  die Lektüre englisch ist.
- **Neue Begriffe sofort ins GLOSSAR** (vollqualifizierter UE-Verweis,
  siehe CONVENTIONS).

### Beispiele: Ton

| Vermeiden | Besser |
|---|---|
| „ggplot2 ist eine Grammatik für Grafiken." | „Was sagt uns dieses Bild über die Pinguine? Wir bauen es in 5 Schritten." |
| „Der Operator + wird für Layer-Kombination verwendet." | „Plötzlich ist das Koordinatensystem weg? Der `+` muss **immer am Zeilenende** stehen." |
| „NA-Werte müssen behandelt werden." | „Ein einziger `NA` — und dein Mittelwert ist auch `NA`. Warum?" |

## 3. Lektüre-Box (Pflicht bei buchverankerten UEs)

Erster Folieninhalt nach dem Titel, als `.callout tipp` mit Label
**„Lektüre"**:

```html
<div class="callout tipp">
  <span class="label">Lektüre</span>
  <p>R4DS 2e (englisch, <a href="https://r4ds.hadley.nz/data-visualize">Kap. 1 Data visualization</a>)
     — lies Kapitel 1 vor der HA. Hausaufgaben-Fragen beziehen sich auf das Kapitel.</p>
</div>
```

Regeln:
- Kapitel-URLs r4ds.hadley.nz, Anchor-URLs prüfen (NOR-Kopf-Prinzip:
  nichts verlinken, was nicht verifiziert ist).
- Zuweisung mit Pflicht-Charakter formulieren („lies Kapitel 1 …"), nie
  optional-schwurbelnd („du kannst dir das ansehen …").
- Fragen der HA dürfen die Lektüre verlangen — so wird das Buch genutzt.

## 4. Code-Stil auf Folien

- Tidyverse-Stil: `<-`, Snake_case, `|>` (natives Pipe), 4 Leerzeichen
  einrücken; Zeilen im `<pre>` kurz halten (max ~72 Zeichen).
- Jeder Code-Block läuft so, wie er aussieht: Output als `# →`-Kommentar
  (`.out`-Span), Erklärungen als `#`-Kommentar (`.cmt`-Span).
- Beispiele bauen **aufeinander auf**: derselbe Datensatz (UE 1: penguins)
  begleitet die ganze UE — kein Themenwechsel pro Folie.
- Was man live zeigt, steht auf den Folien: Der Code ist das
  Unterrichtsskript, nicht Deko.

## 5. Hausaufgaben-Format

- Kopf: `# Hausaufgabe UE <n> — <Thema>` + Name/Abgabe-Zeile.
- 4–6 Aufgaben, **vorhersageorientiert**: erst Vorhersage mit der Hand,
  dann R prüfen (`Vorhersage: ___ · R-Ergebnis: ___`). Das trainiert
  mentalen Code-Ausführung — die Grundskill, auf der später alles sitzt.
- Mindestens eine **Erklärungs-Aufgabe** in ganzen Sätzen (Konzept, nicht
  Syntax) und eine **Transfer-Aufgabe** in den Betriebskontext
  (Messreihe, Charge, Maschine).
- Bezieht sich explizit auf die Lektüre (Kapitel-Verweis in der Aufgabe).
- Keine Antwortdatei im Schüler-Ordner; Lösungen in der folgenden UE.

## 6. Folien-Mikrostruktur (reveal.js)

- Theme-Overlay: `../assets/slides.css` (Callouts `.callout`,
  `.achtung`, `.tipp`; `.cmt`/`.out` in Code; `.fragment`).
- Maximal ~18 Inhaltsfolien pro 90-Minuten-UE (Titel + Agenda + Lektüre
  + ~14 + Jetzt du + Fehler + Zusammenfassung + HA-Hinweis).
- Tabellen statt Absätzen für Übersichten; Callouts für die zwei bis
  drei Aussagen, die man mitnehmen muss.
- Slides-Regel: Wenn eine Folie scrollen müsste — teilen oder kürzen.

## 7. Sichtprobe vor Abgabe (Self-Check)

1. Folie 2 ist eine Frage? 2. Ziel-Artefekt sichtbar? 3. Lektüre-Box mit
   geprüfter URL? 4. „Jetzt du!"-Folie mit 3 Aufgaben? 5. Fehler-Folie
   mit Anti-Beispiel? 6. Schlusstabelle + Ausblick-Frage? 7. HA
   vorhersageorientiert und lektürebezogen? 8. Neuer Fachbegriff im
   GLOSSAR? 9. Code-Blöcke kurz und lauffähig?

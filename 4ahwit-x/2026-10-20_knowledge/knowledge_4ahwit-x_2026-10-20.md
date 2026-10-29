# Wissensüberprüfung PMM — R-Toolchain, Werkzeuge & Datenvisualisierung

**Datum:** 2026-10-20
**Klasse:** 4AHWIT-x
**Punkte:** 185 (35 Multiple-Choice-Fragen à 4 Punkte + 3 Freitext-Fragen à 15 Punkte)

---

## Hinweise zur Bearbeitung

Diese Überprüfung deckt den Stoff der letzten Wochen ab: Setup (Git, R, RStudio),
„Was kann R?", R-Basics, die Unterscheidung **R / R-GUI / RStudio**, Datenvisualisierung
mit ggplot2 (inkl. deiner Selbststudium-Aufgabe vom 6.10.) und den Git/GitHub-Workflow.

**Bearbeitung pro Multiple-Choice-Frage:**

- Kreuze **alle** richtigen Antworten an.
- Pro Frage können **0 bis 4** Antworten richtig sein.
- Pro korrekt behandelter Antwortoption (richtig angekreuzt **oder** richtig
  freigelassen) bekommst du 1 Punkt — insgesamt 4 Punkte pro Frage.
- Wenn du eine Antwort für unklar, mehrdeutig oder kontextabhängig hältst,
  darfst du stattdessen `-` ankreuzen und kurz begründen.

Bei den Freitext-Fragen sind klare, eigene Worte gefragt — Stichworte reichen,
wenn sie präzise sind.

_Viel Erfolg — und gutes Gelingen!_

---

## Multiple-Choice-Fragen

### Block A — Setup & Werkzeug

#### 1. Welche der folgenden Programme hast du mit `winget` installiert?

- [ ] A. Git
- [ ] B. RStudio
- [ ] C. R
- [ ] D. Microsoft Excel (Makro-Erweiterung)

#### 2. Zu R und RStudio — welche Aussagen sind korrekt?

- [ ] A. R ist die eigentliche Programmiersprache mit der Rechen-Engine.
- [ ] B. RStudio ist eine benutzerfreundliche Oberfläche (IDE) rund um R.
- [ ] C. Ohne RStudio kann man R überhaupt nicht verwenden.
- [ ] D. R und RStudio sind zwei Namen für dasselbe Programm.

#### 3. Die Git-Konfiguration nach der Installation — welche Befehle gehörten zum einmaligen Setup?

- [ ] A. `git config --global user.name "Dein Name"`
- [ ] B. `git config --global user.email "deine@email.at"`
- [ ] C. `git install --user name email`
- [ ] D. `git config --global user.password "geheim"`

#### 4. In RStudio gilt für die Installation von Paketen:

- [ ] A. `install.packages("tidyverse")` wird mit Anführungszeichen geschrieben.
- [ ] B. `install.packages()` muss man bei jedem R-Start erneut ausführen.
- [ ] C. `library(tidyverse)` steht **ohne** Anführungszeichen.
- [ ] D. `library()` lädt ein bereits installiertes Paket in die aktuelle Sitzung.

#### 5. `install.packages(c("tidyverse", "palmerpenguins"))` — was macht dieser Aufruf?

- [ ] A. Er installiert zwei Pakete in einem Schritt.
- [ ] B. Er lädt die Pakete sofort für die aktuelle Sitzung (`library()` wäre dafür nicht mehr nötig).
- [ ] C. `c()` fasst hier die Paketnamen zu einer Liste zusammen.
- [ ] D. Er muss immer mit Administratorrechten in der Console ausgeführt werden.

#### 6. Du startest RStudio auf einem Schulrechner, auf dem ein Mitschüler `tidyverse` schon installiert hat. Was gilt?

- [ ] A. `library(tidyverse)` reicht — die Installation bleibt erhalten.
- [ ] B. Du musst `install.packages("tidyverse")` erneut ausführen, weil die Installation nur für die aktuelle Sitzung gilt.
- [ ] C. `install.packages()` lädt die Pakete aus dem Internet (bzw. von einem Mirror).
- [ ] D. Pakete werden in der Bibliothek (`library`-Ordner) der R-Installation gespeichert, nicht im Projektordner.

### Block B — „Was kann R?" (SA-00) & R-Basics

#### 7. Was war der Punkt der Regel „Code steht im Skript (Datei), nicht in der Konsole"?

- [ ] A. Ein Skript kann später erneut laufen lassen — gleicher Code, gleiches Ergebnis.
- [ ] B. Konsole-Eingaben sind nach dem Schließen von RStudio weg.
- [ ] C. R verbietet es technisch, Befehle direkt in der Konsole einzutippen.
- [ ] D. Ein Skript lässt sich versionieren und teilen.

#### 8. In der Stunde „Was kann R?" wurde eine CSV-Datei (`betriebsdaten.csv`) eingelesen. Welche Aussagen dazu stimmen?

- [ ] A. `read_csv()` liest die Daten in einer einzigen Zeile Code ein.
- [ ] B. Die Datei enthielt Messwerte von drei Fertigungsmaschinen (M1/M2/M3).
- [ ] C. Der Sollwert des gemessenen Maßes lag bei 10,00 mm ± 0,15.
- [ ] D. Bei 120.000 Teilen müsste man den Einlese-Code komplett umschreiben.

#### 9. Der Pinguin-Plot aus der Übersichtsstunde: Was war die Deutung des Streudiagramms (Flosse vs. Körpermasse)?

- [ ] A. Die Punktewolke wandert nach rechts oben.
- [ ] B. Längere Flosse geht mit schwererem Körper einher.
- [ ] C. Längere Flosse geht mit leichterem Körper einher.
- [ ] D. Die Antwort auf die Frage war ein Bild statt einer Formel.

#### 10. Der Ausdruck `penguins |> group_by(species) |> summarise(mittel = mean(body_mass_g))` — wie liest man die Pipe?

- [ ] A. nimm die Daten → gruppiere nach Art → fasse zusammen (Mittelwert).
- [ ] B. Die Pipe (`|>`) reicht das Ergebnis des einen Schritts an den nächsten weiter.
- [ ] C. Die Pipe berechnet automatisch den Median statt des Mittelwerts.
- [ ] D. Das Ergebnis war: Gentoos sind im Schnitt über ein Kilo schwerer als die anderen Arten.

#### 11. Warum R statt Excel — welche Argumente kamen in der Übersichtsstunde?

- [ ] A. Ein R-Skript lässt sich erneut laufen lassen, Excel-Arbeit muss man von Hand wiederholen.
- [ ] B. In R steht jede Bearbeitungs-Schritt-Folge lesbar in der Datei; Excel-Klickpfade sind schwer nachvollziehbar.
- [ ] C. R kann große Datenmengen (z. B. 120.000 Zeilen) mit demselben Code verarbeiten.
- [ ] D. Excel kann gar keine Diagramme zeichnen.

#### 12. Im Ausblick wurde der `t.test(body_mass_g ~ sex, data = penguins)` gezeigt (p ≈ 5·10⁻¹⁶). Was war die Botschaft?

- [ ] A. Der Unterschied zwischen Männchen und Weibchen ist echt, kein Messrauschen.
- [ ] B. R kann auch statistische Prüfungen, nicht nur Grafiken.
- [ ] C. Ein p-Wert nahe null bedeutet, dass die Daten zufällig entstanden sind.
- [ ] D. Solche Tests (t-Test, χ², ANOVA) bauen später den Werkzeugkasten von KM 7 auf.

#### 13. Das „erste Ritual" bei neuen Daten: Was gehört dazu?

- [ ] A. `glimpse(penguins)` zeigt Struktur und Typ jeder Spalte.
- [ ] B. `head(penguins)` zeigt die ersten 6 Zeilen.
- [ ] C. Neue Daten werden einfach so benutzt — anschauen kann man sich das Ergebnis später.
- [ ] D. `glimpse()` verändert die Daten dauerhaft.

#### 14. `glimpse(penguins)` — was war das erwartete Ergebnis (auch in der HÜ-Kontrolle geprüft)?

- [ ] A. 344 Zeilen (Pinguine)
- [ ] B. 8 Spalten (Merkmale)
- [ ] C. 152 Zeilen
- [ ] D. 3 Spalten

#### 15. Welche Typen/Tatsachen trafen auf die Pinguin-Spalten zu?

- [ ] A. `species` ist ein Faktor (fct) mit den Werten Adélie, Chinstrap, Gentoo.
- [ ] B. `body_mass_g` ist vom Typ integer (int).
- [ ] C. `flipper_length_mm` ist die Flossengröße.
- [ ] D. `species` ist eine Dezimalzahl (double).

#### 16. Was ist `tidyverse`?

- [ ] A. Ein „Paket-Paket": ggplot2 (Grafik), dplyr (Daten) und Freunde.
- [ ] B. Unser Werkzeugkasten für das ganze Semester.
- [ ] C. Eine einzelne Funktion zum Zeichnen von Plots.
- [ ] D. Ein Paket, das nur die Pinguin-Daten enthält.

#### 17. Eine Auswertung liefert für `mean(body_mass_g)` den Wert `NA`. Welche Aussagen stimmen?

- [ ] A. `NA` steht für *not available* — es gibt in der Spalte fehlende Werte.
- [ ] B. Mit `mean(body_mass_g, na.rm = TRUE)` werden die fehlenden Werte vorher entfernt.
- [ ] C. `NA` bedeutet, dass der Mittelwert exakt null ist.
- [ ] D. `na.rm = TRUE` verändert die Ausgangsdaten dauerhaft.

### Block C — Datenvisualisierung mit ggplot2 (SA-01)

#### 18. Das Skelett eines ggplot-Befehls hat drei Bausteine. Welche?

- [ ] A. `ggplot(penguins)` — mit welchen Daten
- [ ] B. `aes(x = …, y = …)` — welche Zuordnung (Mapping), Spalte → Position
- [ ] C. `+ geom_…()` — wie gezeichnet wird
- [ ] D. `plot.save(file)` — als PDF exportieren

#### 19. Was passiert, wenn man nur `ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g))` ausführt (ohne `geom_…()`)?

- [ ] A. Ein leeres Koordinatensystem erscheint.
- [ ] B. R kennt die Zuordnung, weiß aber noch nicht, wie gezeichnet werden soll.
- [ ] C. R zeichnet automatisch ein Streudiagramm als Standard.
- [ ] D. Es gibt eine Fehlermeldung, weil ein geom fehlt.

#### 20. Was macht `geom_point()`?

- [ ] A. Zeichnet einen Punkt pro Beobachtung → Streudiagramm.
- [ ] B. Das `+` kombiniert Schichten — wie ein „und dann …".
- [ ] C. Zeichnet eine Trendlinie durch die Punkte.
- [ ] D. Speichert den Plot als Datei.

#### 21. Der Unterschied `color = species` in `aes()` vs. `color = "red"` in `geom_point()` — welche Aussagen stimmen?

- [ ] A. `color = species` in `aes()` mappt eine Daten-Spalte auf die Farbe (Legende entsteht von allein).
- [ ] B. `color = "red"` in `geom_point()` ist eine feste Einstellung — alle Punkte werden rot.
- [ ] C. Beide Varianten ergeben dasselbe Bild.
- [ ] D. `color = "red"` erzeugt eine Legende mit dem Eintrag „red".

#### 22. `facet_wrap(~ species)` — was macht das?

- [ ] A. Erzeugt eine Mini-Grafik pro Art.
- [ ] B. Faustregel: Farbe zum Vergleichen, Facetten zum Gegeneinanderstellen.
- [ ] C. Färbt die Punkte automatisch nach Art.
- [ ] D. Löscht die Legende aus dem Plot.

#### 23. Was macht `geom_smooth()` im Pinguin-Plot?

- [ ] A. Legt einen Trend-„Schleier" über die Punkte.
- [ ] B. Weil `color` gemappt ist, gibt es eine eigene Linie pro Art.
- [ ] C. Alle drei Arten steigen: mehr Flosse, mehr Masse.
- [ ] D. `geom_smooth()` ersetzt die Punkte — man sieht nur noch die Linien.

#### 24. Was macht `labs(x = "Flossengröße (mm)", y = "Körpermasse (g)")`?

- [ ] A. Beschriftet die Achsen mit verständlichen Titeln.
- [ ] B. Kann auch einen `title` für den ganzen Plot setzen.
- [ ] C. Ändert die Werte der Daten.
- [ ] D. Ist reine Dekoration, die man immer weglassen kann.

#### 25. Was passiert, wenn das `+` an den **Zeilenanfang** gestellt wird (siehe Hausaufgabe 3b)?

- [ ] A. Der Plot funktioniert nicht mehr wie beabsichtigt.
- [ ] B. R bricht vorher ab und meldet einen Fehler.
- [ ] C. In ggplot2 gehört das `+` immer ans **Zeilenende**.
- [ ] D. Das ist egal — R akzeptiert beides ohne Unterschied.

#### 26. Im Ziel-Plot der Selbststudium-Aufgabe: Welche Aussagen zu den drei Arten stimmen?

- [ ] A. Die drei Farbgruppen schichten sich im Plot sauber übereinander.
- [ ] B. Die Körpermasse steigt mit der Flossengröße bei **allen drei Arten**.
- [ ] C. Die Gentoo-Pinguine sind am schwersten.
- [ ] D. Adélie hat die längsten Flossen.

#### 27. In der letzten Stunde hast du diesen Plot gesehen:

```r
ggplot(penguins, aes(x = year, y = body_mass_g)) +
  geom_smooth() +
  labs(x = "Geburtsjahr (J)", y = "Körpermasse (g)")
```

Welche Aussagen stimmen?

- [ ] A. Auf der x-Achse stehen die Beobachtungsjahre (2007–2009), nicht die Pinguin-Arten oder -Größen.
- [ ] B. `geom_smooth()` zeichnet **einen** Trend über alle Messwerte — getrennt nach Art wäre dafür `color = species` nötig.
- [ ] C. Weil die Jahre nur drei Stufen haben, sieht man im Bild letztlich drei Gruppen von Messpunkten; die Linie verläuft dazwischen.
- [ ] D. Mit `labs()` bleibt die x-Achse automatisch als `year` beschriftet, das `x = …` wird ignoriert.

#### 28. Diese Meldung erscheint beim Ausführen der Hausaufgabe:

```
Error in ggplot(penguins, aes(x = species, y = body_mas_g)) :
  object 'body_mas_g' not found
```

Welche Aussagen stimmen?

- [ ] A. Der Spaltenname ist falsch geschrieben (`body_mas_g` statt `body_mass_g`).
- [ ] B. Die Fehlermeldung nennt das fehlende Objekt — genau danach muss man suchen.
- [ ] C. Die Meldung bedeutet, dass das Paket `ggplot2` nicht installiert ist.
- [ ] D. Die korrigierte Fassung liefert wieder einen Plot, ohne dass man die Daten ändern muss.

#### 29. `species` ist ein Faktor (fct), `body_mass_g` ist integer. Was folgt daraus im Plot `aes(x = species, y = body_mass_g)`?

- [ ] A. Auf der x-Achse entstehen drei Kategorien (Adélie, Chinstrap, Gentoo) — kein Zahlenmaßstab.
- [ ] B. Auf der y-Achse entsteht ein Zahlenmaßstab für die Masse.
- [ ] C. R wandelt `species` für die x-Achse stillschweigend in Zahlen 1, 2, 3 um und beschriftet sie so.
- [ ] D. `geom_point()` würde bei diesem Paar eine Fehlermeldung erzeugen.

### Block D — Git & GitHub

#### 30. Der Git-Workflow von der Änderung bis GitHub — welche Aussagen stimmen?

- [ ] A. `git status` zeigt, welche Dateien geändert wurden.
- [ ] B. `git add` nimmt Änderungen in den nächsten Commit auf (Staging).
- [ ] C. `git commit` speichert die Änderungen lokal mit Nachricht.
- [ ] D. `git push` lädt die Commits auf GitHub hoch.

#### 31. Deine aktuelle Hausübung („Übungen von der Folie committen") — welche Aussagen stimmen?

- [ ] A. Jedes Repository hat ein Remote — `git remote -v` zeigt es.
- [ ] B. Die Übungen sollten in dein **persönliches** Repo gepusht werden.
- [ ] C. Ein Commit kann auch ohne Nachricht erfolgen — Git setzt automatisch einen.
- [ ] D. Wer mehrere Übungen macht, kann sie in mehreren kleinen Commits ablegen.

#### 32. Speichern in RStudio vs. Committen in Git — welche Aussagen stimmen?

- [ ] A. `Ctrl + S` speichert nur die Datei auf der Festplatte.
- [ ] B. Ein Commit ist ein Versionierungsschritt — die Datei bleibt ansonsten eine normale Datei im Ordner.
- [ ] C. Ein gespeicherter, aber nicht committeter Zustand ist in Git nicht nachvollziehbar.
- [ ] D. Wer — mit dem Setup aus der ersten Stunde — `git push` erst nach der letzten Stunde macht, riskiert, dass die Arbeit nur lokal existiert.

#### 33. Du hast eine Datei geändert und willst sie auf GitHub bringen. Welche Reihenfolge ist richtig?

- [ ] A. `git status` → `git add` → `git commit -m "…"` → `git push`
- [ ] B. `git commit` → `git add` → `git push`
- [ ] C. `git push` kann erst nach einem Commit etwas übertragen.
- [ ] D. `git push` überträgt bereits gestagte, aber noch nicht committete Änderungen.

### Block E — R, R-GUI und RStudio

#### 34. Wie hängen R, R-GUI und RStudio zusammen?

- [ ] A. R ist die Rechen-Engine (der Interpreter), die die Befehle tatsächlich ausführt.
- [ ] B. R-GUI (`RGui`) ist die mitgelieferte, schlichte Oberfläche von R unter Windows.
- [ ] C. RStudio ist eine eigenständige Oberfläche (IDE), die dieselbe R-Engine darunter verwendet.
- [ ] D. R und RStudio sind zwei komplett unabhängige Systeme — R in RStudio hat mit der installierten R-Version nichts zu tun.

#### 35. Eine Datei `demo.R` liegt auf der Festplatte. Welche Aussagen stimmen?

- [ ] A. Sie ist ein Skript — eine Textdatei mit R-Befehlen, die R ausführen kann.
- [ ] B. Ob man sie per RStudio oder per `Rscript` ausführt: Ergebnisse, die nur von Daten und Code abhängen, sind gleich.
- [ ] C. Skripte lassen sich nicht so ablegen, dass sie mit Git versioniert und mit anderen geteilt werden.
- [ ] D. Für einen `Rscript`-Lauf in einer frischen Sitzung müssen mit `library()` geladene Pakete im Skript selbst geladen werden (z. B. `library(ggplot2)`).

---

## Freitext-Fragen

### Frage F1 (15 Punkte)

Erkläre in eigenen Worten den Unterschied zwischen

```r
ggplot(penguins, aes(x = species, y = body_mass_g)) + geom_point(color = "red")
```

und

```r
ggplot(penguins, aes(x = species, y = body_mass_g, color = species)) + geom_point()
```

Was zeigt jeweils der Plot, und warum? (Hausaufgabe 3a — das war genau dieser Vergleich.)

&nbsp;

&nbsp;

&nbsp;

### Frage F2 (15 Punkte)

Erkläre den Unterschied zwischen **R**, **R-GUI (RGui)** und **RStudio**.
Welche Rolle spielt welches Programm, wenn du `ggplot(penguins, ...)` ausführst?
Und: Was braucht ein Skript, damit es auch **ohne** RStudio — etwa im Terminal per
`Rscript demo.R` — dasselbe Ergebnis liefert? Nenne mindestens zwei Dinge, die im
Skript selbst stehen müssen, damit das klappt.

&nbsp;

&nbsp;

&nbsp;

### Frage F3 (15 Punkte)

Beschreibe deinen Git-Workflow aus der aktuellen Hausübung: Von der geänderten
Datei in RStudio bis zum Push auf GitHub. Nenne die Befehle in der richtigen
Reihenfolge und erkläre, was jeder Schritt macht. Was zeigt `git remote -v`?

&nbsp;

&nbsp;

&nbsp;

---

**Gutes Gelingen!**

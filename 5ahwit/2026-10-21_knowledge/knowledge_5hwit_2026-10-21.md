# Wissensüberprüfung PMM — Setup, R-On-Ramp & Chi-Quadrat-Test

**Datum:** 2026-10-21
**Klasse:** 5AHWIT
**Punkte:** 185 (35 Multiple-Choice-Fragen à 4 Punkte + 3 Freitext-Fragen à 15 Punkte)

---

## Hinweise zur Bearbeitung

Diese Überprüfung deckt den Stoff der letzten Wochen ab: Installationen und
Werkzeuge (Git, VS Code, R, RStudio), VS-Code-Workspace und Git-Workflow,
R-Grundlagen (Einlesen, Kennzahlen, ggplot) und der **Chi-Quadrat-Test** —
Unabhängigkeit und Anpassung.

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

### Block A — Installation & Werkzeug

#### 1. Welche der folgenden Programme hast du mit `winget` bzw. im Setup installiert?

- [ ] A. Git
- [ ] B. VS Code
- [ ] C. R
- [ ] D. Microsoft Excel (Makro-Erweiterung)

#### 2. Zu R und RStudio — welche Aussagen sind korrekt?

- [ ] A. R ist die Programmiersprache mit der Rechen-Engine.
- [ ] B. RStudio ist eine Oberfläche (IDE), die auf R aufsetzt.
- [ ] C. R und RStudio sind zwei Namen für dasselbe Programm.
- [ ] D. Ein Skript aus einer Datei lässt sich auch ohne RStudio ausführen.

#### 3. `install.packages(c("tidyverse", "palmerpenguins"))` — was macht der Aufruf?

- [ ] A. Installiert zwei Pakete in einem Schritt.
- [ ] B. Lädt die Pakete für die aktuelle Sitzung — `library()` wäre dann überflüssig.
- [ ] C. `c()` fasst die Paketnamen zu einer Liste zusammen.
- [ ] D. Installiert die Pakete in den Bibliotheks-Ordner der R-Installation.

#### 4. `library(tidyverse)` — welche Aussagen stimmen?

- [ ] A. Lädt das Paket in die aktuelle Sitzung.
- [ ] B. Steht **ohne** Anführungszeichen um den Paketnamen.
- [ ] C. Kann die Installation ersetzen.
- [ ] D. Lädt ggplot2 und dplyr mit — sie sind Teil von tidyverse.

#### 5. `git config --global user.name "Dein Name"` — was macht der Befehl?

- [ ] A. Setzt den Commit-Namen für alle Repos dieses Benutzers auf dem Rechner.
- [ ] B. Speichert dein GitHub-Passwort.
- [ ] C. Gilt nur für das aktuelle Repository (kein `--global`).
- [ ] D. Installiert Git neu.

#### 6. `winget install RProject.R` — was passiert dabei?

- [ ] A. R wird installiert — RStudio gehört nicht mit zur Lieferung.
- [ ] B. R und RStudio werden gemeinsam installiert.
- [ ] C. Ein R-Interpreter (Rechen-Engine) kommt auf den Rechner — ohne grafische Oberfläche.
- [ ] D. Der Befehl installiert die Pakete tidyverse und palmerpenguins gleich mit.

#### 7. Was bedeutet das `>` in der R-Console?

- [ ] A. R ist bereit für die nächste Eingabe.
- [ ] B. R rechnet noch — du solltest warten.
- [ ] C. Ein Fehlerzeichen, das auf einen Fehler im letzten Befehl hinweist.
- [ ] D. Ein Zeichen, das nur in RStudio auftritt, nicht in R-GUI.

### Block B — VS Code & Workspace

#### 8. VS-Code-Setting `git.autofetch: true` — was bewirkt es?

- [ ] A. VS Code holt regelmäßig den Stand vom Remote (GitHub), ohne dass du `git fetch` tippst.
- [ ] B. VS Code committet und pusht automatisch nach jedem Speichern.
- [ ] C. VS Code legt automatisch Branches an, wenn du kollidierst.
- [ ] D. VS Code führt die `git config`-Befehle automatisch aus.

#### 9. Dein VS-Code-Workspace verbindet **zwei Ordner**: dein persönliches PMM-Repo und das geklonte `GRG-PMM`. Warum?

- [ ] A. Unterrichtsmaterial (GRG-PMM) und deine eigene Arbeit (privates Repo) bleiben getrennt, sind aber in einem Fenster zusammen sichtbar.
- [ ] B. Der Workspace verschmilzt beide Repos zu einem mit gemeinsamer Git-Historie.
- [ ] C. So siehst du im privaten Repo auch die Lessons und Assets aus GRG-PMM zum Nachlesen — ohne etwas zu kopieren.
- [ ] D. Jeder Ordner behält sein eigenes Remote — Push und Pull laufen getrennt.

#### 10. `git config` — welche Aussagen stimmen?

- [ ] A. Mit `--global` gilt die Einstellung für alle Repos des Benutzers auf diesem Rechner.
- [ ] B. Ohne `--global` gilt die Einstellung nur für das aktuelle Repository.
- [ ] C. `git config` gehört ins **Terminal** — nicht in eine Datei wie das README.
- [ ] D. `git config` funktioniert auch ohne installiertes Git.

#### 11. Die Datenschutz-Erfahrung aus der Setup-HÜ: Drei Schul-E-Mail-Adressen landeten versehentlich im README. Warum ist das ein Problem?

- [ ] A. Ein committetes README wird — bei public — über GitHub öffentlich ausgeliefert.
- [ ] B. E-Mail-Adressen sind personenbezogene Daten.
- [ ] C. Die Git-Historie bewahrt gelöschte Zeilen in alten Commits auf — Löschen in der Datei genügt nicht.
- [ ] D. Solange man die Datei danach leert, ist die Adresse in der Historie weg.

#### 12. VS Code — welche Aussagen stimmen?

- [ ] A. Der integrierte Terminal-Tab läuft in der System-Shell (z. B. PowerShell).
- [ ] B. Speichern (Ctrl+S) ist nicht dasselbe wie Committen.
- [ ] C. Die Source-Control-Anzeige zeigt geänderte Dateien.
- [ ] D. VS Code kann ohne installiertes Git trotzdem pushen, weil GitHub im Web läuft.

### Block C — GitHub & Git-Workflow

#### 13. Das eigene PMM-Repo auf GitHub: Welche Vorgaben galten in der Setup-HÜ?

- [ ] A. Sichtbarkeit **public**.
- [ ] B. Ein **README.md** anlegen.
- [ ] C. Eine `.gitignore`-Datei anlegen.
- [ ] D. Der Repo-Name muss exakt „PMM" lauten.

#### 14. `git status` — welche Aussagen stimmen?

- [ ] A. Zeigt geänderte, noch nicht gestagte Dateien.
- [ ] B. Zeigt gestagte Dateien (für den Commit vorgemerkt).
- [ ] C. Zeigt, ob dein Stand hinter dem Remote hinterherhängt.
- [ ] D. Funktioniert erst, wenn ein Remote (GitHub) eingerichtet ist.

#### 15. Der Workflow von der Änderung bis GitHub — welche Aussagen stimmen?

- [ ] A. `git add` nimmt Änderungen in den nächsten Commit auf (Staging).
- [ ] B. `git commit -m "..."` speichert die Änderungen lokal mit Nachricht.
- [ ] C. `git push` überträgt die Commits auf GitHub.
- [ ] D. `git push` überträgt auch gestagte, aber nicht committete Änderungen.

#### 16. `git remote -v` — was zeigt es?

- [ ] A. Den Namen des Remotes (meist `origin`).
- [ ] B. Die URL des Remotes (z. B. auf GitHub).
- [ ] C. Alle Repos, die auf deinem Rechner existieren.
- [ ] D. Die Anzahl deiner Commits.

#### 17. `git clone` — welche Aussagen stimmen?

- [ ] A. Holt das Repo inklusive der Historie von GitHub.
- [ ] B. Das geklonte Repo hat automatisch ein Remote (`origin`).
- [ ] C. Nach dem Klonen muss `git init` erneut laufen.
- [ ] D. Das geklonte Repo bleibt mit dem Remote verbunden — Pull und Push funktionieren.

### Block D — R-On-Ramp: Einlesen, Kennzahlen, Grafik

#### 18. Das „erste Ritual" bei neuen Daten: Was gehört dazu?

- [ ] A. `glimpse(penguins)` zeigt Struktur und Typ jeder Spalte.
- [ ] B. `head(penguins)` zeigt die ersten 6 Zeilen.
- [ ] C. Neue Daten werden einfach so benutzt — anschauen kann man sich das Ergebnis später.
- [ ] D. `glimpse()` verändert die Daten dauerhaft.

#### 19. `glimpse(penguins)` — was war das erwartete Ergebnis?

- [ ] A. 344 Zeilen (Beobachtungen) und 8 Spalten.
- [ ] B. R zeigt die Zahl der Beobachtungen und den Typ jeder Spalte.
- [ ] C. 152 Zeilen.
- [ ] D. 3 Spalten.

#### 20. Das ggplot-Skelett hat drei Bausteine. Welche?

- [ ] A. `ggplot(daten)` — mit welchen Daten.
- [ ] B. `aes(x = …, y = …)` — welche Zuordnung (Mapping), Spalte → Position.
- [ ] C. `+ geom_…()` — wie gezeichnet wird.
- [ ] D. `plot.save(file)` — als PDF exportieren.

#### 21. Was passiert, wenn man nur `ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g))` ausführt (ohne `geom_…()`)?

- [ ] A. Ein leeres Koordinatensystem erscheint.
- [ ] B. R kennt die Zuordnung, weiß aber noch nicht, wie gezeichnet werden soll.
- [ ] C. R zeichnet automatisch ein Streudiagramm als Standard.
- [ ] D. Es gibt eine Fehlermeldung, weil ein geom fehlt.

#### 22. Der Unterschied `color = species` in `aes()` vs. `color = "red"` in `geom_point()` — welche Aussagen stimmen?

- [ ] A. `color = species` in `aes()` mappt eine Daten-Spalte auf die Farbe (Legende entsteht von allein).
- [ ] B. `color = "red"` in `geom_point()` ist eine feste Einstellung — alle Punkte werden rot.
- [ ] C. Beide Varianten ergeben dasselbe Bild.
- [ ] D. `color = "red"` erzeugt eine Legende mit dem Eintrag „red".

#### 23. `penguins |> group_by(species) |> summarise(mittel = mean(body_mass_g))` — wie liest man das?

- [ ] A. nimm die Daten → gruppiere nach Art → fasse zusammen (Mittelwert).
- [ ] B. Die Pipe (`|>`) reicht das Ergebnis des einen Schritts an den nächsten weiter.
- [ ] C. Die Pipe berechnet automatisch den Median statt des Mittelwerts.
- [ ] D. Das Ergebnis war: Gentoos sind im Schnitt über ein Kilo schwerer als die anderen Arten.

#### 24. Was macht `geom_smooth()` im Pinguin-Plot?

- [ ] A. Legt einen Trend-„Schleier" über die Punkte.
- [ ] B. Weil `color` gemappt ist, gibt es eine eigene Linie pro Art.
- [ ] C. Alle drei Arten steigen: mehr Flosse, mehr Masse.
- [ ] D. `geom_smooth()` ersetzt die Punkte — man sieht nur noch die Linien.

#### 25. `species` ist Faktor (fct), `body_mass_g` ist integer. Was folgt im Plot `aes(x = species, y = body_mass_g)`?

- [ ] A. Auf der x-Achse entstehen drei Kategorien (Adélie, Chinstrap, Gentoo).
- [ ] B. Auf der y-Achse entsteht ein Zahlenmaßstab für die Masse.
- [ ] C. R wandelt `species` stillschweigend in Zahlen 1, 2, 3 um und beschriftet die Achse so.
- [ ] D. `geom_point()` bricht bei diesem Paar mit Fehler ab.

### Block E — Chi-Quadrat-Test (30.9. + 14.10.)

**Datengrundlage für die Fragen 26–35:** Die Datei `betriebsdaten.csv`
(120 Zeilen: 3 Maschinen M1/M2/M3 × 10 Chargen × 4 Teile; Sollmaß
10,00 mm, Toleranz ± 0,15 mm). Vier Messungen fehlen (`NA`). Eine Spalte
`iok` klassifiziert jedes Teil:

```r
daten <- daten |>
  mutate(iok = if_else(is.na(masse_mm), NA,
              if_else(abs(masse_mm - 10) > 0.15,
                      "ausserhalb", "in_Toleranz")))
tab <- table(daten$maschine, daten$iok)
```

**Ergebnis-Tabelle (gleich für alle Fragen):**

|          | ausserhalb | in_Toleranz |
|----------|-----------|-------------|
| M1       | 0         | 37          |
| M2       | 0         | 39          |
| M3       | 6         | 34          |
| **Sum**  | **6**     | **110**     |

#### 26. Die Tabelle `maschine × iok` — welche Aussagen stimmen?

- [ ] A. Es sind 116 gültige Messungen (4 `NA` fallen raus).
- [ ] B. Der Anpassungstest prüft Häufigkeiten gegen eine Vorgabe; der Unabhängigkeitstest prüft den Zusammenhang zweier kategorialer Variablen.
- [ ] C. Die Tabelle legt nahe, dass die Maschinen unterschiedlich viel Ausschuss produzieren.
- [ ] D. Die Tabelle beweist, dass M3 defekt ist — Reparatur ist der einzige Ausweg.

#### 27. Eine Tabelle „beobachtet" braucht „erwartet" — woher kommt erwartet?

- [ ] A. Aus der Formel: Zeilensumme × Spaltensumme / Gesamtsumme.
- [ ] B. Aus der Nullhypothese: Wenn Zeile und Spalte unabhängig sind, verteilt sich die Gesamtzahl proportional zu den Randsummen.
- [ ] C. Erwartet ist immer die Hälfte der beobachteten Werte.
- [ ] D. R rechnet „erwartet" automatisch und zeigt es bei `chisq.test(tab)$expected`.

#### 28. Erwartete Häufigkeit „M1 ausserhalb" bei Unabhängigkeit (H₀):

- [ ] A. 37 · 6 / 116 ≈ 1,91.
- [ ] B. Mit 120 statt 116 als Gesamtsumme gerechnet: 37 · 6 / 120 ≈ 1,85 — das wäre hier falsch, weil `NA`-Zeilen rausfallen.
- [ ] C. Zeilensumme M1 (37) geteilt durch die Spaltensumme „ausserhalb" (6) — umgekehrte Formel.
- [ ] D. Es gibt keinen erwarteten Wert, weil M1 null Ausschuss hat.

#### 29. Chi-Beitrag einer Zelle: (beobachtet − erwartet)² / erwartet. Für „M3 ausserhalb" (beobachtet 6, erwartet ≈ 2,069):

- [ ] A. (6 − 2,069)² / 2,069 ≈ 7,47.
- [ ] B. (6 − 2,069)² · 2,069 ≈ 31,9 — multipliziert statt dividiert.
- [ ] C. (6 − 2,069) / 2,069 ≈ 1,90 — ohne Quadrieren.
- [ ] D. Diese Zelle trägt den größten Beitrag — M3 ist der Hauptgrund für die Signifikanz.

#### 30. Die 5-Regel (mindestens 80 % der erwarteten Werte ≥ 5) — was gilt hier?

- [ ] A. Sie ist verletzt — die meisten erwarteten Werte liegen unter 5.
- [ ] B. R warnt: „Chi-squared approximation may be incorrect".
- [ ] C. Der Test ist deshalb unzulässig — man darf nicht weiterrechnen.
- [ ] D. Als Alternative liefert `fisher.test()` einen exakten p-Wert, ohne die Approximation.

#### 31. `chisq.test(tab)` — welche Aussagen stimmen?

- [ ] A. X² ≈ 12,02, df = 2, p ≈ 0,0025.
- [ ] B. Der p-Wert liegt unter 0,05 → H₀ verwerfen.
- [ ] C. Der p-Wert liegt unter 0,05 → H₀ behalten.
- [ ] D. „H₀ verwerfen" heißt inhaltlich: Die Maschinen haben unterschiedlich viel Ausschuss.

#### 32. df = (r − 1) · (c − 1) — für die Tabelle (3 Maschinen × 2 iok-Kategorien):

- [ ] A. (3 − 1) · (2 − 1) = 2.
- [ ] B. 3 · 2 = 6.
- [ ] C. df hängt von Zeilen- und Spaltenzahl ab, nicht von der Anzahl der Beobachtungen.
- [ ] D. df = 116 − 1 = 115.

#### 33. `fisher.test(tab)` — welche Aussagen stimmen?

- [ ] A. Liefert p ≈ 0,0032.
- [ ] B. Fisher ist die exakte Methode — keine Chi-Approximation, keine 5-Regel-Probleme.
- [ ] C. Fisher und Chi liefern exakt denselben p-Wert — es sind zwei Namen für dieselbe Zahl.
- [ ] D. Fisher weicht vom Chi-p-Wert leicht ab, weil er exakt rechnet statt zu approximieren.

#### 34. Die erwartete Häufigkeit „M1 ausserhalb" ≈ 1,91 — was sagt der Wert aus?

- [ ] A. Unter H₀ hätte M1 im Schnitt 1,91 Ausschuss-Teile — beobachtet sind 0.
- [ ] B. Beobachtet (0) liegt **unter** dem Erwarteten (1,91) — M1 hat weniger Ausschuss als unter Unabhängigkeit erwartet.
- [ ] C. Weil der erwartete Wert unter 5 liegt, trägt diese Zelle zur 5-Regel-Verletzung bei.
- [ ] D. R rundet 1,91 auf 2 auf und setzt diesen Wert in den Test ein.

#### 35. Die drei Maschinen im Gesamtbild — welche Aussagen stimmen?

- [ ] A. M1 und M2 haben **keinen** Ausschuss (0 von 37 bzw. 0 von 39).
- [ ] B. M3 hat 6 von 40 Teilen außerhalb — die Signifikanz des Tests hängt im Wesentlichen an M3.
- [ ] C. Der Unabhängigkeitstest sagt, dass alle drei Maschinen gleich viel Ausschuss produzieren.
- [ ] D. Gegen die Sollquote 10 % gerechnet: M1 und M2 liegen mit 0 % **unter** der Vorgabe, M3 mit 15 % **über** ihr.

---

## Freitext-Fragen

### Frage F1 (15 Punkte)

Lege dein **eigenes PMM-Repo** von Null an: GitHub-Repo anlegen (Sichtbarkeit,
README) → in VS Code klonen → Workspace mit dem GRG-PMM-Repo verbinden →
`git config` → erste Änderung → Commit → Push. Nenne die Schritte in der
richtigen Reihenfolge und erkläre, was jeder Schritt macht.

Begründe außerdem: Warum gehört `git config` ins **Terminal** und nicht in eine
Datei wie das README? (Stichwort: Datenschutz)

&nbsp;

&nbsp;

&nbsp;

### Frage F2 (15 Punkte)

Für die Tabelle `maschine × iok` aus der Datengrundlage oben:

a) Rechne die **erwartete Häufigkeit** für die Zelle „M2 ausserhalb" **von Hand**
(Formel: Zeilensumme × Spaltensumme / Gesamtsumme). Runde auf zwei Nachkommastellen.

b) Rechne den **Chi-Beitrag** dieser Zelle von Hand: (beobachtet − erwartet)² / erwartet.

c) Der Test ergibt X² ≈ 12,02 bei df = 2 und p ≈ 0,0025. **Übersetze den p-Wert in
einen deutschen Satz**, in dem die Zahl 0,0025 vorkommt — und sag, was daraus für
H₀ folgt (verwerfen oder behalten) und was das inhaltlich über die Maschinen bedeutet.

&nbsp;

&nbsp;

&nbsp;

### Frage F3 (15 Punkte)

Erkläre in eigenen Worten den Unterschied zwischen

```r
ggplot(penguins, aes(x = species, y = body_mass_g)) + geom_point(color = "red")
```

und

```r
ggplot(penguins, aes(x = species, y = body_mass_g, color = species)) + geom_point()
```

Was zeigt jeweils der Plot, und warum? Nenne den Fachbegriff für den Unterschied
(Mapping vs. feste Einstellung) und erkläre, welche Konsequenz das für die
Legende hat.

&nbsp;

&nbsp;

&nbsp;

---

**Gutes Gelingen!**

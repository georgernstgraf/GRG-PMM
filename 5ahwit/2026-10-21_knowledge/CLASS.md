# Klassenanalyse — Wissensüberprüfung PMM, 5AHWIT, 2026-10-21

**Grundlage:** 17 Abgaben, bewertet gegen die Lösungsdatei; Gesamtsumme 185
Punkte (140 MC + 45 Freitext). Die Punktespanne reicht von 0 bis 180 Punkten.
Eine Abgabe enthielt keine Antworten und wurde mit 0 Punkten bewertet.

## Überblick

Der Multiple-Choice-Teil liegt im Schnitt deutlich über dem Freitext-Teil. Die
Blöcke A (Installation/Werkzeug) und B (VS Code/Workspace) sind am schwächsten,
Block E (Chi-Quadrat) ist trotz einzelner Logikfehler insgesamt am stärksten.
Die Freitext-Fragen trennen die Klasse deutlich: Während F3 (Mapping vs. feste
Einstellung) meist inhaltlich richtig beschrieben wird, fehlen dort häufig die
Fachbegriffe und die Legenden-Konsequenz. F2 (Chi-Test von Hand) ist der
schwächste Freitext-Teil.

## Häufigste Fehler im Multiple-Choice-Teil

Von 16 gewerteten Abgaben (ohne die leere Abgabe):

| Frage | Thema | Betroffene | Typischer Fehler |
|-------|-------|-----------|------------------|
| 13 | Vorgaben der Setup-HÜ | 14 | zusätzlich `.gitignore` oder Repo-Name angekreuzt; „public" freigelassen |
| 3 | `install.packages(c(...))` | 11 | `c()` als Listenfunktion nicht erkannt |
| 6 | `winget install RProject.R` | 10 | B („R und RStudio gemeinsam") angekreuzt, A freigelassen |
| 23 | Pipe und Gruppenmittel | 10 | Option D (Gentoo über ein Kilo schwerer) freigelassen |
| 9 | Multi-Root-Workspace | 9 | „ein Fenster" ≠ „ein Repository" nicht getrennt |
| 24 | `geom_smooth()` | 9 | C („alle drei Arten steigen") zusätzlich angekreuzt |
| 4 | `library()` | 8 | Option B (ohne Anführungszeichen) freigelassen |
| 2 | R vs. RStudio | 7 | C („dasselbe Programm") angekreuzt, A freigelassen |
| 28 | Erwartete Häufigkeit „M1" | 7 | NA-Falle bzw. Formel nicht angewandt |
| 14 | `git status` | 6 | C (Stand gegenüber Remote) freigelassen oder D angekreuzt |

Zwei Muster fallen auf:

1. **Übermarkieren bei „Welche Aussagen stimmen"** — besonders Frage 13 und
   Frage 24. Plausible, aber nicht geforderte Optionen werden mitgenommen.
2. **Verwechslung R ↔ RStudio** — Frage 2 und Frage 6 treffen dieselbe
   Wissenslücke und kosten zusammen bis zu sechs Punkte.

## Beobachtungen im Freitext-Teil

- **F1 (Setup von Null, 15 P):** Die Schrittfolge ist meist vorhanden, die
  verbindlichen Details fehlen aber häufig: Sichtbarkeit *public*, `README.md`,
  `git add` vor dem Commit und die Multi-Root-Begründung. Die
  Datenschutz-Begründung (öffentlich, personenbezogen, Git-Historie) fehlt in
  etwa der Hälfte der Abgaben ganz.
- **F2 (Chi-Test von Hand, 15 P):** Drei Abgaben blieben hier vollständig leer,
  mehrere weitere enthalten nur Teil a) oder nur c). Der Chi-Beitrag wird
  häufig ohne Quadrieren gerechnet; der p-Wert-Satz gelingt dagegen meist.
- **F3 (Mapping vs. feste Einstellung, 15 P):** Die Wirkung beider Plots wird
  fast immer richtig beschrieben. Es fehlen aber regelmäßig die Fachbegriffe
  „Mapping" und „feste Einstellung" sowie die Konsequenz für die Legende.

## Empfehlungen für den Unterricht

1. **Frage 13 und das Wort „unbedingt"** — eine kurze Übung zu
   „verlangt versus sinnvoll" (`.gitignore`, `.Rproj`, Repo-Name) würde den
   häufigsten Einzelverlust beheben.
2. **R und RStudio strikt trennen** — Paketnamen (`RProject.R` vs.
   `Posit.RStudio`), Engine versus IDE, und was `install.packages()` gegenüber
   `library()` tut. Fragen 2, 3, 4 und 6 hängen alle an diesem Knoten.
3. **Workspace-Konzept wiederholen** — zwei Ordner in einem Fenster bedeuten
   nicht ein Repository; jedes geklonte Repo behält sein eigenes Remote.
4. **`git status` ohne Remote zeigen** — live vorführen, dass der Befehl auch
   lokal funktioniert und die Gruppen „not staged"/„staged" zeigt.
5. **Pipe als Weiterreichen** — das Ergebnis von `group_by()`/`summarise()`
   einmal gemeinsam interpretieren (Gentoo-Schnitt), damit Frage 23 nicht
   wieder reihenweise über eine freigelassene Option verloren geht.
6. **Chi-Test-Logik dreiteilig sichern:** 5-Regel = Warnung, nicht Verbot;
   `fisher.test()` = exakte Alternative; p < 0,05 → H₀ verwerfen → inhaltlich
   „es gibt einen Zusammenhang". Fragen 30 und 31 zeigen hier Unsicherheit.
7. **Freitext-Ritual einüben:** erst die verlangten Teile abzählen, dann
   stichwortartig abarbeiten. Bei F1 hat die reine Datenschutz-Antwort ohne
   Schrittfolge bis zu 11 Punkte gekostet.

## Formales

- **Angabeblatt:** Die Kopfzeile nennt „152 Punkte"; korrekt sind 185
  (35 × 4 + 3 × 15). Bitte in der nächsten Version korrigieren, da die Zahl
  auch an die Schüler:innen ausgeliefert wurde.
- **Markierungsformate:** Mehrere Abgaben verwendeten `[D]`, `[X~]` oder
  `[ ]x` statt `[x]`. Die Bewertung erfolgte nach Rücksprache mit der
  Lehrperson; künftig hilft ein deutlicherer Hinweis im Angabeblatt
  („bitte ausschließlich `[x]` verwenden").
- **Halbpunkte:** In den Freitext-Fragen wurden teilweise halbe Punkte
  vergeben, wenn ein Teilkriterium nur zur Hälfte erfüllt war.

## Prompt Injection Attempts

Keine Vorfälle. Es wurden keine Versuche festgestellt, die Bewertung durch
eingeschleuste Anweisungen zu beeinflussen.

# Vorwissen 5AHWIT & On-Ramp-Entscheidung (Stand 2026-09-16)

Die 5AHWIT kommt aus der 4. Klasse, aber ihr R-/Statistik-Vorwissen ist
**nicht bestätigt**: Der Einstiegstest 5HWIT (60/240, GRG-PMM-T #3) wurde
noch nicht geschrieben und ausgewertet. Das Setup-Log der Klasse
(2026-09-09: git installiert, VS Code installiert, GRG-PMM geklont) zeigt
einen Frisch-Start in die Werkzeuge — R/RStudio wird dort nicht erwähnt.

**Entscheidung (2026-09-16, Issue #14):** Vor dem DoE-Einstieg (UE 1 des
`jg5-semesterplan-ws.md`, KM9a) läuft eine **R-Basics-On-Ramp** aus drei
Lektionen im Teach-Workspace (`teach/lessons/0001–0003`): ggplot
(Visualisieren) → dplyr (Transformieren) → einlesen & deskriptive
Statistik (Betriebsdaten). Die Lektionen adaptieren die verifizierten
Lektionen der Kohorte 4ahit-x; Lektion 0003 ist neu und nutzt erstmals
Betriebsdaten (`unterricht/HWIT-PMM/assets/betriebsdaten.csv`) — das
schließt parallel den Betriebsdaten-Gap der Kohorte x.

**Implikationen:**
- UE-Nummern des Semesterplans rutschen um die On-Ramp-Dauer; der
  DoE-Start verzögert sich. Tempo danach beobachten.
- Nach dem Einstiegstest: Ergebnis gegen die On-Ramp-Beobachtungen
  abgleichen — KM5/KM6-Lücken (aus der 4HWIT-Analyse) betreffen diese
  Klasse anders als die aktuelle 4. Klasse.
- DoE braucht `lm()`-Lesekompetenz (KM7-Rückblick); beim Übergang
  einen ANOVA/`lm()`-Recap einplanen, falls der Einstiegstest Lücken zeigt.
- R/RStudio-Installation auf Schul-Laptops ist unbestätigt (RESOURCES-Gap)
  — vor Lektion 0002 als HÜ klären.

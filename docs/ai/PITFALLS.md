# Pitfalls

Things that do not work, subtle bugs, and non-obvious constraints.
Read this file carefully before making changes in affected areas.

- The curriculum Anlage 1.28 references Anlage 1 (Allgemeiner Teil) for general education subjects, didactic principles, and school-autonomy rules. Never plan lessons without consulting both documents.
- The subject "Projektmanagement und Netzwerktechnik" is NOT a single legal subject in Anlage 1.28 — it is a school-autonomous combination. Its precise mapping to the legal subjects (Betriebstechnik, Informatik, Prozessmanagement) must be confirmed before creating semester plans.
- Projektmanagement fundamentals and Netzwerke basics are legally taught in year 3 (KM 5+6). Year 4 content assumes this prior knowledge.
- School-autonomous focus areas (Schwerpunktsetzungen) do NOT apply to this curriculum (explicitly stated in Abschnitt IV of Anlage 1.28).
- **School website vs. RIS Stundentafel differ**: The spengergasse.at Stundentafel shifts hours from Anlagen-/Prüftechnik to a new subject "Umwelttechnologie" and removes parenthesized Übungsanteile. Always check both sources when determining hour allocations for specific topics.
- **"Projektmanagement und Netzwerktechnik" is not listed on spengergasse.at** under Technisches Management. This name is a school-internal designation, not a public-facing subject name. Its mapping to legal subjects must be confirmed by the Abteilungsvorstand.
- **R package install on Ubuntu fails with missing headers.** `install.packages("tidyverse")` breaks on Ubuntu 26.04 (R 4.5) because compiled deps (`curl`, `systemfonts`, `textshaping`, `ragg`) need system `-dev` headers. Fix: `sudo apt-get install -y libcurl4-openssl-dev libfontconfig1-dev libfreetype-dev libfribidi-dev libharfbuzz-dev libpng-dev libjpeg-dev libtiff-dev` then retry. Gotcha: `libfreetype6-dev` (suggested by R's `[ANTICONF]`) no longer exists on Ubuntu 24.04+ — use `libfreetype-dev`. Full guide: `selbststudium/reference/r-setup-linux.html`. The industry-statistics packages (`qcc`, `FrF2`, `rsm`, `AcceptanceSampling`, `SixSigma`) are pure R and need none of this.
- **`gh issue create/comment --body` with German text breaks the shell.** Umlaut-Quotes („"), parentheses and em-dashes in inline `--body "…"` cause `syntax error near unexpected token`. Fix: always write the body to a temp file first (`/tmp/opencode/*.md`) and use `--body-file`.
- **NIST e-Handbook root URL is frames-based** (`itl.nist.gov/div898/handbook/` replies "frames-compatible browser required" to fetchers). Fetch chapter pages directly, e.g. `…/handbook/pmc/pmc.htm` (Kap. 6 Monitoring & Control — verified). Chapter-code pattern is `…/handbook/<code>/<code>.htm`; verify each code before citing it.
- **Multiple-Choice-Tests: Alphabetische Sortierung in Lösungs-Tabellen erzeugt scheinbare A-Cluster.** Bei 4-korrekt-Fragen steht in der alphabetisch sortierten Lösungstabelle immer „A, B, C, D" — das Verify-Skript liest „A" als erste korrekte Option. Wenn mehrere 4-korrekt-Fragen aufeinanderfolgen, entsteht ein scheinbarer A-Cluster, der gegen CONVENTIONS verstößt. Abhilfe: bei 3-korrekt-/2-korrekt-Fragen in der Folge die Option-Reihenfolge in der Schüler-Datei so permutieren, dass die erste korrekte Option variiert (B, C, D). Bei 4-korrekt-Fragen ist der Cluster unvermeidbar — durch brechende 3/2/1-korrekt-Fragen dazwischen auf ≤ 4 halten.
- **Answer-Shuffling: Distraktor bei 3-korrekt-Fragen muss über A/B/C/D rotieren.** Ein häufiger Fehler ist, den Distraktor immer auf D zu legen („D ist meistens falsch"). Die CONVENTIONS-Regel verlangt ausdrücklich Rotation über alle 4 Positionen (je ~5–6× bei 20–24 3-korrekt-Fragen). Vor Commit mit `verify_quiz.py` prüfen — das Skript zählt die Distraktor-Position und warnt bei Clustern.
- **0-korrekt-Fragen (alle Distraktoren) sind erlaubt und gewünscht.** Die CONVENTIONS-Regel verlangt „at least a few 1-correct, 2-correct, and 4-correct" — 0-korrekt ist nicht explizit gefordert, aber eine wertvolle Kategorie (erkennt, ob Schüler raten). In den Hinweisen muss „1 bis 4 Antworten richtig" zu „0 bis 4" geändert werden, sobald 0-korrekt-Fragen existieren. Lösungs-Tabelle verwendet „−" (Minus) als Eintrag für 0-korrekt-Fragen.
- **R auf dieser Maschine verschwand zwischen 2026-09-15 und 2026-09-16** (STATE notierte `/usr/bin/Rscript`, das nicht mehr existierte). Reinstalliert per `sudo apt-get install r-base-core r-cran-tidyverse` — Ubuntu-Binärpakete, kein Compiler nötig; das ersetzt den mühsamen Header-Weg (siehe darüber) und erledigt den tidyverse-Meta-Blocker. `palmerpenguins` ist nicht in den Ubuntu-Repos: `install.packages()` scheitert an nicht-beschreibbarem `/usr/local/lib/R/site-library` → `sudo Rscript -e 'install.packages(...)'` (reines Datenpaket, kompiliert nichts). Aktuelle Version: R 4.3.3 (nicht 4.5 wie zuvor notiert).
- **System-Upgrade frisst apt-R-Pakete (2026-09-22).** Nach Upgrade auf R 4.5.2 war `r-cran-tidyverse` aus apt verschwunden; die Kern-Komponenten (dplyr, ggplot2, readr, …) lagen noch in der User-Lib `~/R/x86_64-pc-linux-gnu-library/4.5/`, aber das Meta-Paket `tidyverse` fehlte → `library(tidyverse)` schlug fehl (alle Lektionen nutzen es). Fix: Header-Weg + zusätzlich `libuv1-dev` (Kette `fs` → `sass` → `bslib` → `rmarkdown` → `reprex`), dann `install.packages("tidyverse")` in die User-Lib (kein sudo nötig). Merke: Das Meta-Paket zieht Web-/Google-Deps (`rvest`, `googledrive`, `googlesheets4`) mit — für den Unterricht reichen die Kern-Komponenten, aber `library(tidyverse)` braucht das Meta-Paket.
- **Firefox + `file://` blockiert zentrale Assets (2026-09-27).** Firefox' `security.fileuri.strict_origin_policy` (Default an) erlaubt einem `file://`-Dokument nur Zugriff auf **dasselbe Verzeichnis und Unterverzeichnisse** — Subressourcen aus **Eltern-/Geschwisterverzeichnissen** (`../assets/…`, auch ein zentrales Root-`assets/`) werden blockiert (Bug 539050 WONTFIX; `privacy.file_unique_origin` verschärft). Deshalb läuft GRG-PMM über den **Live-Server** (`./serve.sh`, http) statt `file://`; dort greift die Regel nicht. Chrome/Edge sind unter `file://` toleranter, aber nicht die Zielkonfiguration.
- **`assets/` als Punkt-Ordner (`.assets`) ist Pages-fragil (2026-09-27).** Jekyll überspringt Dot-Ordner; `actions/upload-pages-artifact` v4 schließt Dot-Dateien/-Ordner per Default aus (Breaking Change). Lösung: **normaler** Top-Level-Ordner `assets/` + `.nojekyll`. Bei Branch-Deploy umgeht `.nojekyll` Jekyll, aber Actions-Deploy würde Dot-Ordner weiterhin verlieren.
- **GitHub-Pages-Asset-Auflösung ohne Repo-Namen (2026-09-27).** Ein zentrales `assets/` kann aus beliebig tiefen Seiten nur gefunden werden, wenn der Root zur Laufzeit bestimmt wird. GRG-PMM nutzt eine Inline-Probe auf `assets/loader.js` (Ahnen-Verzeichnisse, `onload`/`onerror`); der Loader leitet den Root aus seiner eigenen `src` ab. Fehlt `/…/assets/loader.js` (umbenannter Klon, Root-Serving), greift die Probe weiter oben bzw. schlägt fehl — dann Pfad/Server prüfen. Kein `<base>` verwenden: es würde die bewusst relativen In-Page-Links umbiegen.
- **R-Code liest `assets/betriebsdaten.csv` relativ zum Repo-Root.** Das Arbeitsverzeichnis für alle R-Beispiele ist der Repo-Root; nach der Asset-Konsolidierung (2026-09-27) lautet der Pfad `assets/betriebsdaten.csv` (vorher `unterricht/HWIT-PMM/assets/…`). Beim Ausführen aus dem Repo-Root per `Rscript` verifizieren.
- **Über `assets/loader.js` injizierte Skripte dürfen sich nicht auf `DOMContentLoaded` verlassen (2026-10-02, #24).** Der Loader hängt `data-js` per `document.createElement("script")` an — das läuft **asynchron nach dem Parsen**; `DOMContentLoaded` ist dann oft schon gefeuert. Ein reiner `document.addEventListener("DOMContentLoaded", …)`-Initialisierer (früher in `quiz.js`) registriert nie → Symptom u. a. Quiz-Radio-Klicks ohne Rückmeldung. Muster: `if (document.readyState === "loading") { document.addEventListener("DOMContentLoaded", start); } else { start(); }` (wie in `github-pages-link.js`). Gleiches gilt für `theme.js` (Toggle erst nach Existenz des Knopfes verdrahten). Fixes: GRG-PMM #24, GRG-WMC #6.
- **reveal.js schrumpft überlaufenden Inhalt nicht (2026-10-06, #30).** Der Canvas ist pro Präsentation fest (`Reveal.initialize({width:1280, height:800})`); Inhalt höher als `height` wird oben/unten abgeschnitten (reveal skaliert nur an den Viewport, nicht an den Inhalt; `center:true` verteilt den Überlauf beidseitig). Jede Änderung an Schriftgröße/Satzspiegel (`assets/slides.css`) muss gegen `height` geprüft werden: alle Folien anfahren (`Reveal.slide(i)`), `section.present.scrollHeight` gegen `height` vergleichen (headless Chrome, `--dump-dom`). Stand #30: 32px / max-width 1000px → max. 778px.
- **Kohorten-README-Einträge können Unterrichtsplanung vorgreifen (2026-10-12, #31).** Der Eintrag „Lektion SA-01 (heute live)" vom 2026-09-22 war vorausgeplant und falsch — ggplot wurde erst am 2026-10-06 als Selbststudiumsaufgabe vergeben. Vor History-basierten Generierungen (knowledge-exam etc.) README-Aussagen gegen Commit-Messages abgleichen. Der `knowledge-exam`-Skill löst jetzt das private T-Repo auf statt CWD anzunehmen (opencode-helpers `e8813e6`).
- **Kohorten-Lesson-Ordner mit Datumstippfehler gelten als eingefroren (2026-10-12).** `4ahwit-y/20206-10-09_opencode/` trägt `20206` statt `2026`; der Ordner bleibt so (README-Verlauf, `Aufgabe.md` und Git-Historie verweisen darauf). Tools, die per `YYYY-MM-DD`-Glob datierte Lesson-Ordner erkennen (homework/knowledge-exam/grading), matchen diesen Ordner nicht — bei Kohorten-y-Abfragen manuell prüfen statt blind umbenennen.
- **Gerades `"` in `data-grund`-Attributen terminiert das Attribut (2026-10-13, #32).** In Quiz-Optionen (`<input data-grund="…">`) beendet jedes rohe `"`-Zeichen den Attributwert — escaped Quotes (`\"`) funktionieren in HTML **nicht** (HTML kennt kein Backslash-Escaping). Betroffene Inhalte (z. B. R-Strings `"M2"`) in `data-grund` daher mit deutschen Anführungszeichen („…") oder `&quot;` schreiben. Symptom bei Fehlklicks: abgeschnittene/leere Begründung statt Fehlermeldung — beim Bauen per Tag-Parser bzw. Quiz-Struktur-Check gegenprüfen.
- **Kohorten-READMEs können direkt von der Lehrperson geändert werden (2026-10-19).** Commits wie `bc91c78` („aufg.", Autor „Georg Graf (SPG)") kommen aus dem GitHub-Web/GUI und sind lokal erst nach Pull sichtbar — vor Stoff-Recherchen (Prüfungen, WÜ, homework) immer `git pull` + Autor/Zeit prüfen, sonst entstehen Dubletten/veraltete Annahmen. Symptom hier: lokal „behind 1", zwei 10-16-Einträge im y-README, einer mit inhaltserzeugendem Commit, einer leer.
- **Bullet-Listen per edit-Tool umordnen = Verlustrisiko (2026-10-19, #34).** Beim Drehen der Aufgabenlisten ging ein Eintrag zwischen zwei edit-Schritten verloren (`4ahwit-x/README.md`, 10-06-Zeile) und die Überschrift wurde kurzzeitig doppelt — erst der `git diff`-Check hat es gezeigt. Beim Umordnen von Listen immer danach `git diff` gegen die Ausgangsliste prüfen (Zeilenanzahl + alle Datumsangaben vorhanden).
- **Faktcheck-Rechenfehler in Prüfungsfragen (2026-10-19, GRG-PMM-T #5).** Aus dem Bauch notierte Wahrscheinlichkeiten waren falsch: „M1/M2/M3-Ausschussquote ≈ 1,91/1,94/2,03" statt korrekt 0/0/6 (Absolutzahlen) bzw. 0/0/15 % (Quoten); `pbinom(2,20,0.1)` = 0,677 statt 0,93. Jede Zahl in Prüfungs- und Solution-Dateien per `Rscript` gegen `assets/betriebsdaten.csv`/`palmerpenguins` rechnen — auch „plausible" Werte.
- **5AHWIT-DS-Inhalte können uncommitted bleiben (2026-10-19).** Die DS 7.10./14.10. haben keine Repo-Belege (nur Überschrift `2026-10-14_chi_quadrat_schulübung`) — Stoff-Recherchen dürfen dort nicht blind aus dem README schließen, sondern müssen beim Lehrer nachgefragt werden. Prüfungs-Basis für 5AHWIT ist bewusst nur der belegte Stoff; ergänzter Stoff erfordert Block-Nachschärfe.
- **Statistik-Austria-OGD-Datensatznamen täuschen (2026-10-19, #36).**
  `OGD_krimi001_KRIMI_1` heißt „KRIMI", ist aber die **Verurteilungs-
  statistik** (sämtliche den Verurteilungen zugrunde liegenden Delikte,
  Gerichtsperspektive) — **nicht** die PKS-Anzeigenstatistik. Vor jeder
  Kennzeichnung die Meta-Seite prüfen:
  `https://data.statistik.gv.at/web/meta.jsp?dataset=<ID>` (Feld
  „Attribute description" nennt die Messzahlen-Bedeutung). Zudem enthalten
  die Tabellen **OLG-Aggregatzeilen** (`KRIMJ93-*`) und „Nicht
  klassifizierbar" (`KRIMEA9-0`) — vor dem Summieren herausfiltern, sonst
  Doppelzählung. Kodiertes CSV + `C-<dim>`-Dimension-Files per `left_join`
  lesbar machen.
- **Eurostat-Statistics-API: `format=TSV` scheitert (2026-10-19, #36).**
  Die API meldet „Invalid value for 'wsOutputFormat'" bei TSV; nutzbar ist
  `format=JSON` (JSON-STAT 2.0, Dimension-Filter als Query-Params, z. B.
  `unit=KWH&lastTimePeriod=3`). Konvertierung nach tidy CSV via
  `jsonlite` (expand.grid über gedrehte Dimensions-Level, Werte über
  linearen Index zuordnen). Alternativ das `eurostat`-R-Paket.
- **OWID-Datenzugriff hat drei Stolpersteine (2026-10-19, #36).**
  (1) Österreich meldet keine Impfquoten mehr an OWID (seit Mitte 2023)
  — exakte Stichdaten liefern NA; pro Land den letzten gemeldeten Wert
  ≤ Stichtag nehmen und das Datum in einer Spalte führen. (2) Der
  Gesamtsatz `owid-covid-data.csv` (98 MB) ist nur via
  `raw.githubusercontent.com/owid/covid-19-data/master/public/data/`
  beziehbar — `covid.ourworldindata.org` löst hier nicht auf (DNS);
  OWID-Grapher-Voll-Exporte großer Charts (600k Zeilen) antworten
  wiederholt 503. Kuratierte Schnitte aus dem Gesamtsatz bauen, nicht
  am Grapher vorbei-removen. (3) Grapher-CSV-URLs brauchen
  `?v=1&csvType=full&useColumnShortNames=true` für volle Historie;
  Slug-Raten (404) erst über Web-Recherche klären.
- **Statistik-Austria-OGD `BEV_BEW` ist eine Bevölkerungsprognose
  (2026-10-19, #36).** `OGD_bevbewegung_BEV_BEW_2` heißt
  „Bevölkerungsbewegung", enthält aber Projektionsvarianten
  (Haupt-/Wachstums-/Alterungsszenario, F-S25V1–V11) — keine
  beobachteten Sterbefälle. Für Übersterblichkeit: Eurostat
  `demo_r_mwk_ts` (Wochensterbefälle; **ohne** AGE-Dimension — Filter
  `unit=NR&sex=T&geo=AT`).
- **Eurostat-Arbeitsmarkt-API: Alters-Dimension stillschweigend (2026-10-19, #36).**
  `une_rt_a` kennt **kein** `age=TOTAL` — gültige Codes sind Y15-24,
  Y15-74, Y20-64, … Ohne Alters-Filter bekommt man stillschweigend
  Y15-24 (Jugendarbeitslosigkeit ~10–12 %) statt der Gesamtquote (~5 %);
  Symptom: plausibel klingende, aber falsche Zahlen. Für die Gesamtquote
  `age=Y15-74` explizit setzen. Der Datensatz für die Arbeitslosenquote
  nach *nationaler* Definition (`une_rt_n`) ist aus der Dissemination
  entfernt (404) — AMS-Werte nur noch via AMS-PDF/Seite oder data.gv.at.
- **HadCRUT-URLs tragen die Versionsnummer im Pfad (2026-10-19, #36).**
  `https://hadleyserver.metoffice.gov.uk/hadcrut5/data/HadCRUT.5.2.0.0/analysis/…`
  — bei einem Versionsupdate (Release Notes prüfen: metoffice.gov.uk/
  hadobs/hadcrut5/index.html) ist der 404 vorprogrammiert. Met Office-
  Landing (`/hadobs/hadcrut5/data/current/download.html`) rendert die
  Datei-Links nur per JS.
- **Excel-Übungsdateien mit writexl: R-Spalten sind homogen (2026-10-19, #37).**
  Wer in R einer numerischen Spalte zwei Textzellen zuweist
  („n. gemessen"), koerziert die **ganze Spalte** zu character —
  writexl schreibt dann alles als Text, und readxl liest die Spalte als
  `character` statt gemischt numeric/NA. Für die SA-04-Didaktik
  gewollt („Spalte kommt als Text" ist realer Excel-Schmerz), aber
  wissen: ein *echt* gemischtes Excel (Zahl-Zellen + einzelne
  Text-Zellen) erzeugt readrl-Verhalten „numeric + NA mit Warnung" —
  writexl kann das nicht abbilden. Zusätzlich: readxl-`na = "…"` wirkt
  nur auf den Marker; danach braucht es `as.numeric()` für den Rest.
- **Eurostat nrg_pc_204: alte Band-Codes sind leer (2026-10-19, #37).**
  `KWH3500`, `KWH1200` u. a. haben in den letzten Perioden keine Werte —
  Filter darauf liefern still NA-Spalten (writexl schreibt dann leere
  Zellen, readxl gibt eine `logical`-Spalte zurück!). Gültige Bänder
  vor dem Kuratieren per `table()` prüfen; `stopifnot(!any(is.na(...)))`
  als Guard in Builds. Nutzbar aktuell: `KWH_LT1000`, `KWH1000-2499`,
  `KWH2500-4999`, `KWH5000-14999`, `KWH_GE15000`, `TOT_KWH`.
- **readLines heißt `n`, nicht `n_max` (2026-10-19, #37).** Base-R-
  `readLines(con, n = 2)` — im Gegensatz zu readr (`n_max`). Beim
  Erst-Hinschauen-Ritual („readLines n_max=2") läuft man in
  „unused argument".
- **`pkill -f` trifft die eigene Shell (2026-10-19, #37).** Enthält der
  Kommandozeilen-String das Suchmuster selbst (z. B. `pkill -f
  "http.server"` in einer Zeile, die auch `git commit` enthält), tötet
  pkill den eigenen Befehl (SIGTERM) — Ausgabe „Killed by SIGTERM".
  Server-PIDs gezielt beenden oder Muster wählen, das der eigene
  Befehl nicht enthält.
- **data.gv.at: alte CKAN-API liefert HTML statt JSON (2026-10-21, #36).**
  Nach dem Portal-Umbau ist `www.data.gv.at` eine Single-Page-App; ein
  `curl` auf `/katalog/api/3/action/package_search` gibt die SPA-Hülle
  (HTTP 200, HTML) zurück — kein Fehler, aber unbrauchbar. Richtig ist
  `/api/hub/search/search?q=…` (Parameter `q`; `query` wird ignoriert und
  liefert den vollen Katalog) bzw. `/api/hub/search/datasets/<id>` für
  Details; `/api/hub/repo/...` antwortet leer.
- **wien.gv.at-`gogv`-Downloadlinks können 503 liefern, während die
  Datensatzseiten erreichbar sind (2026-10-21, #36).** Die Kurzlinks wie
  `https://www.wien.gv.at/gogv/l9ogdhundevie` antworteten mit
  „Angebot vorübergehend nicht verfügbar" (HTTP 503, HTML), auch mit
  Browser-User-Agent; die data.gv.at-Datensatzseiten und die
  Wien-Statistik-Seiten waren 200. Vor Kuratierung erneut ziehen, nicht
  als toten Link interpretieren.
- **Rangrichtung bei `ave()` leicht verdreht (2026-10-21, #36).**
  `ave(-x, g, FUN = function(v) rank(-v))` dreht die Richtung zweimal —
  Ergebnis: häufigster Wert auf dem *letzten* Rang. Für „Top-N nach
  Häufigkeit" erst `order(..., -anzahl, name)` und dann
  `ave(seq_len(n), g, FUN = seq_along)` als Rang verwenden (deterministisch
  bei Gleichstand).
- **`RPostgres` scheitert an fehlendem `libpq-dev` (2026-10-29, #38).**
  `install.packages(c("DBI", "RPostgres"))` baut `DBI` sauber, bricht aber bei
  `RPostgres` mit `fatal error: libpq-fe.h: No such file or directory` ab
  (`ANTICONF`, „libpq was not found"). Falle: `postgresql-client*` ist auf
  think installiert, das **Entwicklungspaket** `libpq-dev` aber nicht — damit
  fehlen `libpq-fe.h` **und** `pg_config` (beide aus `libpq-dev`), also genau
  die zwei Erkennungswege des Configure-Skripts (`pg_config` im PATH bzw.
  `libpq.pc` über `pkg-config`). `libssl-dev`/`pkg-config` waren vorhanden,
  `DBI` lief. Fix (Ubuntu 26.04, libpq-dev 18.6): `sudo apt install -y
  libpq-dev`, dann `install.packages("RPostgres")` erneut; Prüfen mit
  `pg_config --version` und `pkg-config --exists libpq && echo ok`.
  Verifikation: `class(Postgres())` → `"PqDriver"`, `dbGetInfo()` meldet
  `client.version 18/6`. Gleiches Muster wie die Header-Falle oben — auf
  Schul-/Klassenrechnern (SA-07 nutzt einen echten Schul-Postgres-Server)
  zuerst die `-dev`-Pakete prüfen, nicht die R-Seite debuggen.
- **`"fishName"` gibt es nicht — Artname nur über den Join (2026-10-29, #37).**
  Die erste R-Erkundung (`Projekte/boku/.Rhistory`) fragte
  `SELECT "fishName" … FROM fish_catches` — die Spalte existiert dort nicht.
  `fish_catches` trägt nur `"speciesId"` (integer, FK auf `fish_species.id`);
  der Name steht als `fish_species."speciesName"`/`"germanName"`.
  Verwechslungsfalle: die gleichnamig klingende Spalte `fish_catches."fishId"`
  ist **Text** (Individuen-/Markierungskennung), **kein** FK, und zeigt
  nirgendwo hin.
- **Postgres-Datenqualität: `'NA'` als Text, Kategorie-Schreibweisen, stille
  `NULL`s (2026-10-29, #37).** In der BOKU-DB `clx` gilt: `assessment` hat
  `'strip'` (4.579) / `'Strip'` (1.430) / `'strip '` mit Schlussleerzeichen (8)
  sowie `'Seber-LeCren'`/`'seber-LeCren'` — ohne `lower(btrim(...))` zerfällt
  eine Kategorie in drei. `assessment = 'NA'` ist **Text** (2.383 Zeilen),
  `IS NULL` filtert davon nichts. 30,6 % der Fänge haben kein
  `"totalWeightGr"`, 2,3 % keine Länge — `avg()`/`n()` immer mit
  `IS NOT NULL` bzw. `count(spalte)` kombinieren. `recapture` ist durchgehend
  `false` (trotz 17 gesetzter `"pitDec"`), also als Merkmal unbrauchbar.
  Für Jahresauswertungen: 6 von 10.497 Befischungen haben keinen Fang
  (INNER JOIN verliert sie), `samplings.year` weicht in 9 Zeilen vom Jahr aus
  `"catchDate"` ab — eine Zeitquelle festlegen und im Text nennen.
- **`.env` war im public Repo nicht ignoriert (2026-10-29, #37).** Der
  BOKU-Ordner enthielt nur untracked Dateien; ein `git add .` hätte das
  DB-Passwort committet (GitHub Pages-Repo ist öffentlich). Vor jedem
  Datenbank-Projekt prüfen: `git check-ignore -v <pfad>/.env`. Jetzt global
  in der Root-`.gitignore`.

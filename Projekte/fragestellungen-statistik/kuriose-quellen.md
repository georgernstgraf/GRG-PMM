# Thema: Kuriose Datenquellen — Alltag, Essen, Popkultur

Querverweis: übergeordnetes Projekt-README (Konvention, Status-Legende)
in diesem Ordner. Dieses Themenfile schneidet quer durch KM7/KM9a — der
rote Faden ist **nicht** ein Sachthema, sondern die Frage: *Wo steckt
Statistik in Dingen, über die man ohnehin redet?* (eigener Vorname,
Hund im Park, Radweg, Pizza, Spotify-Playlist).

**Recherche-Stand:** 2026-10-21

---

## Warum kurios?

Statistikunterricht scheitert selten an der Methode, meist an der
Motivation. Ein Datensatz über Strompreise ist lehrreich; ein Datensatz
über den eigenen Vornamen ist **persönlich**. Beides braucht dieselbe
Technik — aber nur eines davon erzählt man am Gang weiter.

Die Ehrlichkeits-Regeln des Projekts gelten unverändert:
Beobachtungsdaten ≠ Versuchsdaten (DoE nur mit echten Versuchen),
🎓 Rohmaterial bleibt roh, kein Datensatz ohne `Rscript`-Einlese-Check.

---

## Wien & Österreich

### F-C1: Wie stirbt mein Name aus?

- **Ausgangsfrage:** Michael war 1984 der häufigste Bubenvorname
  Österreichs (2.280 Kinder); 2025 liegt er auf Rang 61 (130 Kinder). Bei
  den Mädchen wechselt die Spitze fast jährlich (2019 Emma, 2023/24
  Emilia, 2025 wieder Emma). Wie schnell kommen und gehen Modenamen — und
  wo steht der eigene Name?
- **Daten:** 📦 `daten/vornamen-oesterreich-top100.csv` (Statistik Austria
  OGD `OGDEXT_VORNAMEN_1`, CC BY 4.0; Top 100 je Jahr × Geschlecht,
  1984–2025; Metadaten `vornamen-oesterreich-top100.md`) · für seltene
  Namen die volle 28-MB-Roh-CSV live per `read.csv2()` einlesen
- **Aufgabenskizze:** eigenen Namen suchen (`filter`) · Rangverlauf über
  die Jahre plotten (`geom_line`, y-Achse invertiert — Rang 1 ist oben) ·
  „Halbwertszeit" eines Modenamens schätzen · mehrere Namen vergleichen ·
  Anteil am Jahrgang berechnen (`anzahl / sum(anzahl)`) · Diskussion:
  Rang vs. absoluter Anzahl (weniger Geburten insgesamt!)
- **R:** `dplyr`, `ggplot2`, `readr` (Roh-CSV: `read.csv2`)
- **UE-Anker:** KM7 UE 1–3 (EDA, Zeitreihe), UE 4 (Verteilungen) ·
  Brücke KM5 (Anteile, Häufigkeiten)
- **Status:** 📦 Daten im Repo

### F-C2: Wie viele Hunde verträgt ein Bezirk?

- **Ausgangsfrage:** Wien meldet den Hundebestand seit 2002 je Bezirk,
  dazu Rassenlisten und Hundeattacken. Wohnen in dichten Bezirken mehr
  kleine Hunde? Und sind Attacken einfach eine Frage der Hundedichte —
  oder steckt mehr dahinter?
- **Daten:** 🔗 Stadt Wien OGD (data.gv.at, CC BY 4.0):
  „Hundebestand seit 2002 – Bezirke Wien",
  „Hunderassen Wien", „Hundeattacken in Wien" (2022–2024)
  — Datensatzseiten über <https://www.data.gv.at> (Suche „Hunde Wien");
  Einwohnerzahlen je Bezirk aus der Wien-Statistik dazu
- **Aufgabenskizze:** Hunde je 1.000 Einwohner je Bezirk berechnen
  (`left_join` mit Bevölkerungszahlen) · Ranking + Karte/Barplot ·
  Rassenverteilung als Häufigkeitstabelle · Attacken als **ZählDaten**:
  Poisson-Modell `glm(attacken ~ hunde, family = poisson)` — oder erst
  einmal: Ist die Streuung größer als der Mittelwert (Overdispersion)?
- **R:** `readr`, `dplyr`, `ggplot2`, `glm`
- **UE-Anker:** KM7 UE 1–3 (EDA, Join), UE 4 (Poisson als Zählverteilung),
  UE 7 (χ² Rasse × Bezirk, falls Kreuztabelle verfügbar)
- **Status:** 🔗 nur Link
- **Hinweis:** Der CSV-Download-Endpunkt `wien.gv.at/gogv/…` lieferte am
  21.10.2026 temporär HTTP 503 (Wartung); die Datensatzseiten und die
  Wien-Statistik-Seiten waren erreichbar. Vor Unterrichtsbau erneut ziehen.

### F-C3: Wann radelt Wien?

- **Ausgangsfrage:** Wien zählt den Radverkehr an Dauerzählstellen. Wie
  sieht die Woche aus, wie das Jahr, was macht Regen — und wie tief war
  der Corona-Knick wirklich?
- **Daten:** 🔗 Stadt Wien OGD „Radverkehrszählungen Wien" (CC BY 4.0,
  data.gv.at; Tages-/Stundenwerte je Zählstelle) · Wetter dazu:
  GeoSphere Austria Data Hub (offen, siehe `klima-klimawandel.md` F-K3)
- **Aufgabenskizze:** Zeitreihe einer Zählstelle plotten · Wochentagsprofil
  (`lubridate::wday`) · Monatsprofil/Saison · Wetter-Join: Radkilometer vs.
  Temperatur/Niederschlag, Streudiagramm + `lm` · Korrelation ist keine
  Kausalität (Regen *und* Kälte kommen zusammen) · Bruch um März 2020
  markieren und diskutieren, was ein Strukturbruch ist
- **R:** `readr`, `dplyr`, `lubridate`, `ggplot2`, `lm`
- **UE-Anker:** KM7 UE 1–3 (EDA, Zeitmuster), UE 6–8 (Gruppenvergleiche:
  Werktag vs. Wochenende, vor/nach 2020)
- **Status:** 🔗 nur Link (Download-Endpunkt am 21.10.2026 temporär 503)

### F-C4: Woran stirbt man wirklich?

- **Ausgangsfrage:** Täglich sterben in Österreich rund 240 Menschen. Die
  Todesursachen-Statistik zeigt, woran — und die Zahlen sind ein
  Lehrstück in Risikokommunikation: Was klingt gefährlich, was *ist*
  gefährlich (pro 100.000 Personen)?
- **Daten:** 🔗 Statistik Austria OGD (CC BY 4.0): Todesursachen
  (`OGD_tote…`, Gestorbene nach Todesursache) und die
  altersstandardisierte Sterberate (`OGD_rate_kalwo_GEST_KALWOCHE_STR_100`);
  Eurostat `hlth_cd_aro` für den EU-Vergleich · Katalog:
  <https://data.statistik.gv.at/web/catalog.jsp>
- **Aufgabenskizze:** häufigste Todesursachen als Barplot · Rate pro
  100.000 statt absoluter Zahl (das ist der Kern!) · Altersstandardisierung
  erklären: warum rohe Raten Länder mit alter Bevölkerung benachteiligen ·
  Vergleich „gefühlte Gefahr" (Medien) vs. Zahl · Basenraten-Fehlschluss:
  „X Tote durch Y" ohne Nenner
- **R:** `readr` (Semikolon, kodierte Dimensionen + `C-`-Files),
  `dplyr`, `ggplot2`
- **UE-Anker:** KM7 UE 4–5 (Rate, Schätzung, Unsicherheit), UE 12
  (Umweltmanagement: Umweltfaktoren und Gesundheit)
- **Status:** 🔗 nur Link
- **Hinweis:** kodiertes OGD-CSV + Dimensions-Files — dieselbe
  Join-Technik wie `verurteilungen-gerichtsbezirke.md`.

### F-C5: Der Takt der Stadt

- **Ausgangsfrage:** Wie oft fährt „meine" Linie wirklich? Fahrplandaten
  (GTFS) sind offen — die Verteilung der Wartezeiten ist eine
  Verteilungsübung mit Körperkontakt zum Alltag.
- **Daten:** 🔗 Wiener Linien Open Data / GTFS-Feed
  (<https://www.wienerlinien.at/ogd_realtime/doku/>) sowie
  Verkehrszählstellen-Standorte Wien (data.gv.at)
- **Aufgabenskizze:** Fahrplan aus GTFS lesen (`gtfstools`/`tidytransit`
  oder CSV-Export) · Wartezeiten je Linie berechnen und als Histogramm
  zeigen · Takt vs. Tageszeit · Vergleich Straßenbahn/Bus/U-Bahn ·
  Erweiterung 🏭: eine Woche lang selbst Abfahrtszeiten notieren →
  geplante vs. tatsächliche Wartezeit
- **R:** `readr`, `dplyr`, `ggplot2`, `lubridate` (optional
  `tidytransit`)
- **UE-Anker:** KM7 UE 4 (Verteilungen: Warum sind Wartezeiten bei
  dichtem Takt nicht normalverteilt?), UE 9–11 (Stichprobe: Wie viele
  Fahrten muss ich beobachten?)
- **Status:** 🔗 nur Link · 🏭 Eigenmessung als Erweiterung

### F-C6: Hochrechnung ist auch nur Statistik

- **Ausgangsfrage:** Wahlergebnisse sind Vollerhebungen — aber
  Wahlprognosen, Briefwahlanteile und „Hochrechnung" sind Stichproben.
  Was kann man aus einem Teil der Stimmen über das Ganze sagen?
- **Daten:** 🔗 BMI Wahlergebnisse (Nationalratswahlen, open data) sowie
  Landes-/Gemeindeergebnisse (data.gv.at) · Umfragen/Prognosen als
  Diskussionsmaterial
- **Aufgabenskizze:** Ergebnisse je Sprengel laden · Verteilung der
  Parteienanteile über Sprengel · „Zufallsstichprobe" aus den Sprengeln
  ziehen (`sample`) und CI berechnen — wie oft liegt das wahre Ergebnis im
  Intervall? (Simulation!) · Briefwahl vs. Wahltag als
  Stichprobenverzerrung · Diskussion: Wann ist eine Stichprobe „repräsentativ"?
- **R:** `readr`, `dplyr`, `infer`/`boot`, `ggplot2`
- **UE-Anker:** KM7 UE 5 (CI, CLT, Bootstrap), UE 9–11 (Stichprobenlogik)
- **Status:** 🔗 nur Link

---

## Popkultur & Alltag (Rdatasets)

### F-C7: Was macht einen Hit?

- **Ausgangsfrage:** 350 Spotify-Songs mit Audio-Features (danceability,
  energy, valence, tempo …) und Popularity-Werten: Lässt sich
  „Erfolg" aus dem Klang vorhersagen — oder ist das Wunschdenken?
- **Daten:** 📦 `daten/spotify-songs.csv` (`bayesrules::spotify`, GPL ≥ 3;
  Metadaten `spotify-songs.md`)
- **Aufgabenskizze:** Verteilung von `popularity` · Korrelationsmatrix der
  Audio-Features (Heatmap) · `lm(popularity ~ danceability + energy + …)`
  — und die Ernüchterung: R² klein, Koeffizienten instabil ·
  Gruppenvergleich Genres (`aov`) · Multikollinearität: energy und
  loudness messen fast dasselbe · Diskussion: Feature ≠ Erfolgsfaktor
- **R:** `dplyr`, `ggplot2`, `cor`, `lm`, `aov`
- **UE-Anker:** KM7 UE 1–3 (EDA), UE 5 (CI), UE 8 (ANOVA)
- **Status:** 📦 Daten im Repo

### F-C8: Ein Jahr Pizza

- **Ausgangsfrage:** 49.574 Pizzen in einem Jahr: Wann wird bestellt, was
  wird bestellt, und hängt die Größe vom Typ ab? (Und: Wie viel Umsatz
  macht eine Pizzeria wirklich?)
- **Daten:** 📦 `daten/pizza-verkauf-2015.csv` (`gt::pizzaplace`, MIT;
  Metadaten `pizza-verkauf-2015.md`)
- **Aufgabenskizze:** Tages- und Wochengang (`lubridate`) · Top-10-Pizzen ·
  Umsatz je Monat · χ²-Test Unabhängigkeit Größe × Typ · Preisverteilung
  je Größe (Boxplot) · systematisch fehlende Werte? (`NA`-Check) ·
  Fallstudie: „Welche zwei Pizzen streichen?"
- **R:** `dplyr`, `lubridate`, `ggplot2`, `chisq.test`
- **UE-Anker:** KM7 UE 1–3 (EDA), UE 7 (χ²), UE 13 (Fallstudie)
- **Status:** 📦 Daten im Repo

### F-C9: Wie lange lebt ein Hit?

- **Ausgangsfrage:** Die Billboard Top 100 des Jahres 2000, Woche für
  Woche: Wie lange bleibt ein Song in den Charts, und wie hoch steigt er
  ein?
- **Daten:** 📦 `daten/billboard-top100-2000.csv` (`tidyr::billboard`,
  MIT; Metadaten `billboard-top100-2000.md`) — bewusst **wide** (79
  Spalten)
- **Aufgabenskizze:** `pivot_longer(cols = starts_with("wk"))` → long ·
  Chartwochen je Song zählen · Verteilung der „Lebensdauer" · Einstiegsrang
  vs. Verweildauer (Streudiagramm) · Verlauf einzelner Hits plotten ·
  Diskussion: Zensierung — Songs, die Ende 2000 noch in den Charts waren
- **R:** `tidyr`, `dplyr`, `ggplot2`
- **UE-Anker:** SA-06 (`pivot_longer` als Lernstoff), KM7 UE 1–3 (EDA),
  UE 4 (Verteilungen)
- **Status:** 📦 Daten im Repo

### F-C10: Was kostet ein LEGO-Stein?

- **Ausgangsfrage:** 1.304 LEGO-Sets: Ist der Preis proportional zur
  Teilezahl? (Nein — große Sets sind pro Stein billiger.) Wie stark ist
  der Skaleneffekt, und was kostet ein Set mit vielen Minifiguren?
- **Daten:** 📦 `daten/lego-preise.csv` (`openintro::lego_population`,
  GPL-3; Metadaten `lego-preise.md`)
- **Aufgabenskizze:** `price` vs. `pieces` (Streudiagramm) · lineare
  Regression und Residuen · log-log-Modell
  `lm(log(price) ~ log(pieces))` — Steigung < 1 = Skaleneffekt ·
  `amazon_price` vs. `price` (Händleraufschlag) · Ausreißer suchen
  (Star-Wars-Sets?) · 239 fehlende Preise sauber behandeln
- **R:** `dplyr`, `ggplot2`, `lm`, `broom`
- **UE-Anker:** KM7 UE 1–3 (EDA), UE 5 (Schätzung), UE 13 (Fallstudie
  Preisprognose)
- **Status:** 📦 Daten im Repo

### F-C11: Riecht Umsatz? — ein echter RCT im Buchladen

- **Ausgangsfrage:** Ein kanadischer Buchladen sprühte in zufällig
  ausgewählten Wochen Schokoladenduft. Verkaufte er dann mehr Bücher,
  mehr Kaffee — oder war alles Zufall?
- **Daten:** 📦 `daten/schokoladenduft-buchladen.csv`
  (`experimentr::mcgrath`, MIT; McGrath et al. 2016; Metadaten
  `schokoladenduft-buchladen.md`)
- **Aufgabenskizze:** Gruppenmittelwerte + Boxplots · t-Test auf
  `grandtotal` (und je Warengruppe) · Effektstärke (Cohens d) · Warum ist
  hier ein t-Test erlaubt, obwohl es „nur" 30 Beobachtungen sind?
  (Randomisierung!) · Power-Frage: Wie groß müsste der Effekt sein?
- **R:** `t.test`, `dplyr`, `ggplot2`, `effectsize`
- **UE-Anker:** KM9a UE 1 (DoE-Einführung: Randomisierung, Kontrollgruppe,
  warum nicht OFAT) · KM7 UE 6 (t-Test)
- **Status:** 📦 Daten im Repo
- **Kennzeichnung:** echter randomisierter Versuch — nicht als „eigene
  Messung" ausgeben.

### F-C12: Der perfekte Schokoladenkuchen (3 × 6)

- **Ausgangsfrage:** Drei Rezepte, sechs Backtemperaturen, 15 Kuchen je
  Kombination — gemessen wird der Bruchwinkel. Welches Rezept ist robuster,
  und ab wann wird der Kuchen brüchig?
- **Daten:** 📦 `daten/schokoladenkuchen-bruchwinkel.csv` (`lme4::cake`,
  GPL ≥ 2; Metadaten `schokoladenkuchen-bruchwinkel.md`)
- **Aufgabenskizze:** Interaktionsplot Rezept × Temperatur · `lm(angle ~
  recipe * temperature)` · Effekttabelle · Modellreduktion · Zentrumspunkte
  gibt es nicht — warum ist das ein vollfaktorieller Plan ohne Krümmung?
  · Übertragung: „Temperatur" ist hier ein **Faktor mit 6 Stufen**, nicht
  stetig (Diskussion!)
- **R:** `lm`, `interaction.plot`, `anova`, `emmeans`
- **UE-Anker:** KM9a UE 2–4 (vollfaktoriell, Wechselwirkung, Modellreduktion)
  · KM7 UE 8 (ANOVA)
- **Status:** 📦 Daten im Repo
- **Kennzeichnung:** echter publizierter Versuch.

---

## Europa & international

### F-C13: Wie lange frühstückt Europa?

- **Ausgangsfrage:** Die europäische Zeitverwendungserhebung 2020 misst,
  womit Menschen ihre Zeit verbringen. Wer kocht länger, wer pendelt
  länger, und schlafen die Österreicher wirklich mehr?
- **Daten:** 🔗 Eurostat `tus_20age` (Time spent in the main activity by
  sex and age group), `tus_20week` (nach Wochentag) — API oder
  `eurostat`-R-Paket; Doku
  <https://ec.europa.eu/eurostat/databrowser/view/tus_20age>
- **Aufgabenskizze:** Minuten je Aktivität und Land vergleichen
  (Barplot, Ranking) · Verteilung über Altersgruppen · Werktag vs.
  Wochenende (`tus_20week`) · Achtung Vergleichbarkeit: Erhebung 2020,
  Lockdown-Effekte, unterschiedliche Aktivitätsklassifikationen ·
  Diskussion: Was ist eine „durchschnittliche Minute"?
- **R:** `eurostat::get_eurostat`, `dplyr`, `ggplot2`
- **UE-Anker:** KM7 UE 1–3 (EDA, Gruppenvergleich), UE 8 (ANOVA/Kruskal-
  Wallis über Länder)
- **Status:** 🔗 nur Link

### F-C14: Apfelernte als ANOVA-Objekt

- **Ausgangsfrage:** Erntemengen je Land und Jahr: Sind die Unterschiede
  zwischen Ländern „echt" oder nur Wetterrauschen? (Und was heißt das für
  einen Vergleich von drei Jahren?)
- **Daten:** 🔗 Eurostat `apro_cpsh1` — „Crop production in EU standard
  humidity" (u. a. Äpfel, je Land und Jahr, 2000–2026), API oder
  `eurostat`-Paket; Doku
  <https://ec.europa.eu/eurostat/databrowser/view/apro_cpsh1>
- **Aufgabenskizze:** Zeitreihen einiger Länder · Land als Faktor,
  Jahr als Block — einfache ANOVA mit Blockdesign · Vorsicht
  Beobachtungsdaten: Land ist kein randomisierter Faktor · Bootstrap-CI
  für Länderunterschiede · Warum ist „signifikant" hier wenig
  handlungsleitend?
- **R:** `eurostat`, `dplyr`, `ggplot2`, `aov`, `boot`
- **UE-Anker:** KM7 UE 8 (ANOVA, nichtparametrisch), UE 12
  (Umweltmanagement: Landwirtschaft/Flächen)
- **Status:** 🔗 nur Link

### F-C15: Wer trinkt was — und was sagt das über Länder?

- **Ausgangsfrage:** Bier-, Wein- und Spirituosenkonsum je Land: Sind das
  drei unabhängige Vorlieben oder clustert Europa in „Bierländer" und
  „Weinländer"?
- **Daten:** 🔗 `fivethirtyeight::drinks` (MIT) — 193 Länder; statisch im
  Rdatasets-Katalog, bei Bedarf als CSV ziehen
  (`grep drinks daten/_index/datasets.csv`)
- **Aufgabenskizze:** Streudiagramm Bier vs. Wein (log-Skala) ·
  Korrelation + CI · Cluster (k-means, hierarchisch) · Österreich im
  Vergleich · Diskussion: Konsumdaten sind Schätzungen (Welthandels-
  organisation), kein Register — was bedeutet das für die Unsicherheit?
- **R:** `ggplot2`, `cor.test`, `factoextra`/`hclust`
- **UE-Anker:** KM7 UE 1–3 (EDA), UE 5 (CI), UE 6 (Korrelation)
- **Status:** 🔗 nur Link (CSV bei Bedarf aus dem Index)

---

## API-Spielwiese (Brücke zu SA-05)

### F-C16: Echte APIs, echte Rohantworten

- **Ausgangsfrage:** Star-Wars-Figuren, Pokémon und Wetterdaten gibt es
  als JSON-APIs. Wie kommt man von einer verschachtelten API-Antwort zu
  einer Tabelle — und was ist dabei der typische Anfängerfehler?
- **Daten:** 🔗 Star Wars API <https://swapi.dev> (statischer Spiegel in
  R: `dplyr::starwars`) · PokéAPI <https://pokeapi.co> · Open-Meteo
  <https://open-meteo.com> (gemeinfrei, kein Key)
- **Aufgabenskizze:** `jsonlite::fromJSON("https://swapi.dev/api/people/1")`
  → Liste inspizieren · `str()`, `unlist()`, `tibble::enframe()` ·
  mehrere Seiten/IDs in einer Schleife ziehen und `bind_rows()` ·
  Open-Meteo: Vorhersage vs. Messung, „Ist die Prognose signifikant
  besser als das Mittel der letzten Woche?" (Das ist bereits KM7 UE 6–8.)
- **R:** `jsonlite`, `httr2`, `purrr`, `dplyr`
- **UE-Anker:** SA-05 (JSON & APIs), SA-06 (`unlist` & Konvertieren) ·
  KM7 UE 1–3
- **Status:** 🔗 nur Link
- **Hinweis:** SWAPI ist ein beliebtes Lehrbeispiel; `dplyr::starwars`
  liefert dieselben Figuren bereits als Tabelle — gut, um API-Rohheit und
  fertige Tabelle gegenüberzustellen.

---

## Ideen-Parkplatz (noch nicht ausformuliert)

Kurze Funken, bewusst ohne vollständiges Format — Kandidaten für eine
spätere Runde:

- **Spurious Correlations** (<https://tylervigen.com/spurious-correlations>):
  „Käsekonsum korreliert mit Todesfällen durch Bettlaken" — perfekter
  Einstieg in Korrelation ≠ Kausalität, mit Schüler:innen eigene absurde
  Paare suchen.
- **Central Park Squirrel Census** (NYC Open Data, 3.023 Eichhörnchen):
  Farbe, Verhalten, Ort — kategoriale EDA mit viel Spaßfaktor.
- **Challenger-O-Ringe** (25 Starts, Temperatur vs. Ausfall): der
  berühmteste Datensatz für „die Grafik hätte es gezeigt" — Ethik der
  Datenanalyse.
- **Old Faithful** (in R unter `faithful`): zweigipfelige Wartezeiten —
  warum der Mittelwert hier lügt.
- **Marathon-Zielzeiten** (öffentliche Ergebnislisten): Warum ist die
  Verteilung rechtsschief und wo liegt der „3:00-h-Buckel"?
- **Kaffeepreise im Supermarkt** (🏭 Eigenmaterial): eine Woche lang
  Preise notieren, Preisinflation selbst messen — VPI zum Anfassen.

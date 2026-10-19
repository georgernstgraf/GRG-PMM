# Thema: Klima & Klimaerwärmung

Querverzicht: übergeordnetes Projekt-README (Konvention, Status-Legende)
in diesem Ordner. Dieses Themenfile schneidet quer durch KM7/KM9a —
Klimadaten sind Beobachtungsdaten, also ideal für EDA/Regression/Tests,
nicht für DoE.

**Recherche-Stand:** 2026-10-19

---

## F-K1: Wird es wärmer — oder sind das nur Schwankungen?

- **Ausgangsfrage:** Globale Temperaturanomalien 1880–2025: Ist der
  Aufwärtstrend „echt" oder innerhalb der natürlichen Variabilität?
- **Daten:** 📦 `daten/tempanomalien-global.csv` (NASA GISS GISTEMP,
  Jahres- + Monatsanomalien, Basis 1951–1980; Metadaten
  `tempanomalien-global.md`)
- **Aufgabenskizze:** EDA: Zeitreihe plotten, Dekaden-Mittelvergleich ·
  Lineare Regression `lm(anomalie ~ jahr)` — Steigung, Konfidenzintervall,
  p-Wert interpretieren („signifikant" heißt hier nicht „klein") ·
  Augentäuschung diskutieren: kurze Ausschnitte zeigen „Abkühlung"
  (Cherry-Picking!) · Bonus: regressionssteigung × 100 Jahre = °C
- **R:** `ggplot2` (geom_smooth), `lm`, `confint`
- **UE-Anker:** KM7 UE 1–3 (EDA), UE 5 (Schätzen) · Methoden-Brücke zu
  KM9a-RSM („Trendmodell vs. experimentelles Modell")
- **Status:** 📦 Daten im Repo

### Der Mythos „es gab schon immer wärmere Phasen"

Statistische Antwortmuster (nicht morally judging, sondern methodisch):
- **Skalen-Verwirrung:** globale vs. lokale Temperaturen, Tages- vs.
  Dekaden-Variabilität — der Datensatz macht die Bandbreite sichtbar
- **Trend vs. Rauschen:** Residuenanalyse — welche „Abkühlphasen" sind
  erklärbar durch kurzfristige Variabilität (El Niño/La Niña,
  Vulkanausbrüche)?
- **Vergleichbarkeit:** Anomalien statt Absoluttemperaturen — warum
  wissenschaftlich sauber (Basisperiode einheitlich)

## F-K2: Wie wächst die Anomalie — linear, beschleunigt, beschleunigend?

- **Ausgangsfrage:** Reicht ein Gerade-Modell, oder braucht es
  Krümmung (quadratisch/Splines)?
- **Daten:** 📦 `daten/tempanomalien-global.csv` (dieselbe Basis)
- **Aufgabenskizze:** Modellvergleich `lm(y ~ jahr)` vs. `lm(y ~ poly(jahr, 2))`
  vs. Dekaden-Regressionen (Steigung je 30-Jahres-Fenster) ·
  Modellgüte (R², Residuen) diskutieren · Übertragung auf
  Prozessverständnis: warum „Beschleunigung" behaupten mehr Datenqualität
  braucht als „Trend"
- **R:** `lm`, `poly`, `predict`, `ggplot2::geom_smooth`
- **UE-Anker:** KM7 UE 12–13 · Vorgriff KM9a-RSM (Modellstruktur)
- **Status:** 📦 Daten im Repo

## F-K3: Und in Österreich? — Stationen vs. Global

- **Ausgangsfrage:** Wie entwickelt sich die Temperatur an österreichischen
  Klimastationen im Vergleich zur Globalanomalie? Lokale Kälteereignisse
  widerlegen keinen globalen Trend (Stichwort: „kalt war's bei uns").
- **Daten:** 🔗 GeoSphere Austria Data Hub — historische Stationstagebücher
  (<https://data.hub.geosphere.at>), langfristige Zeitreihen auch via
  HISTALP (<https://www.zamg.ac.at/histalp/>) — beides verifiziert
  erreichbar (2026-10-19); konkrete Stations-CSV erst bei Aufgaben-Bau
  kuratieren (API wählt Station/Paramter/Zeitraum aus)
- **Aufgabenskizze:** eine Station (z. B. Wien Hohe Warte, lange Reihe)
  ziehen · Jahresmittel-Trend wie F-K1 · Overlay Global vs. lokal ·
  Diskussion: was ist eine „repräsentative" Station?
- **UE-Anker:** KM7 UE 1–3, UE 5
- **Status:** 🔗 nur Link (API, nicht kuratiert)

---

## Quellen

| Quelle | Was | Status |
|---|---|---|
| NASA GISS GISTEMP (<https://data.giss.nasa.gov/gistemp/>; CSV `tabledata_v4/GLB.Ts+dSST.csv`) | Globale Anomalien 1880–heute, monatlich/jährlich | 📦 kuratiert |
| GeoSphere Austria Data Hub (<https://data.hub.geosphere.at>) | Österreichische Stationsdaten (historisch), API | 🔗 |
| HISTALP (<https://www.zamg.ac.at/histalp/>) | Lange Klimareihen Greater Alpine Region | 🔗 |
| Eurostat-Umweltindikatoren (Treibhausgase via `eurostat`-Paket, z. B. `t2020_30`-Familie) | Emissionen statt Temperaturen | 🔗 (siehe km7.md F8) |

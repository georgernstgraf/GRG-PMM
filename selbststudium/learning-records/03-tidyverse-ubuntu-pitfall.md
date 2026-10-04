# Pitfall: tidyverse-Installation auf Ubuntu braucht -dev-Header

Bei `install.packages("tidyverse")` auf Ubuntu 26.04 (R 4.5) brechen die
kompilierten Abhängigkeiten `curl`, `systemfonts`, `textshaping`, `ragg` ab —
R kann sie nicht bauen, weil die System-Entwicklerheader fehlen
(`curl/curl.h`, `fontconfig.h`, …). Kein R-Fehler, sondern fehlende
`-dev`-Pakete des Betriebssystems.

## Evidence

- Konkreter Abbruch des Lernenden mit vollständiger `[ANTICONF]`-Meldung.
- `apt-cache policy` bestätigt: `libfreetype6-dev` existiert auf 26.04 nicht
  mehr → richtig ist **`libfreetype-dev`** (ohne „6"). Die restlichen Namen
  gelten: `libcurl4-openssl-dev`, `libfontconfig1-dev`, `libfribidi-dev`,
  `libharfbuzz-dev`, `libpng-dev`, `libjpeg-dev`, `libtiff-dev`.
- **Fix angewendet und verifiziert:** Header installiert (54 Pakete),
  `install.packages("tidyverse")` durchgebaut, `library(tidyverse)` lädt
  (v2.0.0, dplyr 1.2.1, ggplot2 4.0.3).

## Implications

- **Fix dokumentiert** in `reference/r-setup-linux.html` (verifizierte Liste +
  Lösmuster „[ANTICONF] lesen → apt-cache policy → install"). Lektion 1
  verlinkt darauf.
- **Für KM 7 relevant:** nur `tidyverse` ist betroffen (Grafik/HTTP). Die
  Industrie-Statistik-Pakete (`qcc`, `FrF2`, `rsm`, `AcceptanceSampling`,
  `SixSigma`) sind reines R und installieren ohne Header.
- **Didaktik:** diese Falle ist ein guter Lehrmoment — Schüler vom Schul-Windows
  kennen nur „Klick installieren". Auf Linux kompiliert R aus Quelle; das
  Verständnis davon gehört zu einem robusten R-Setup.
- **Paketnamen-Vorsicht:** R-Fehlermeldungen schlagen teils veraltete Namen vor.
  Immer mit `apt-cache policy` gegenchecken, bevor man sie dokumentiert.

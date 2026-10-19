# Bau-Skript Teil 2: Klima- und Impf-/Übersterblichkeits-CSVs (Issue #36)
# Rohmaterial im DS_QUELLE-Ordner (Default: /tmp/opencode),: gistemp.csv, deaths.json, owid-covid-data.csv
# Aufruf: Rscript /tmp/opencode/build_data2.R  (Arbeitsverzeichnis: Repo-Root)

library(jsonlite)

# Rohmaterial-Ordner: per Umgebungsvariable überschreibbar (DS_QUELLE=/pfad)
quelle <- Sys.getenv("DS_QUELLE", "/tmp/opencode")

ziel <- "Projekte/fragestellungen-statistik/daten"

## 1) GISTEMP — globale Temperaturanomalien (NASA GISS, Basis 1951–1980)
raw <- read.csv(file.path(quelle, "gistemp.csv"), skip = 1, na.strings = "***",
                check.names = FALSE)
names(raw)[names(raw) == "J-D"] <- "anomalie_jahr"
out <- raw[, c("Year", "anomalie_jahr", "Jan", "Feb", "Mar", "Apr", "May",
               "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")]
names(out)[1] <- "jahr"
write.csv(out, file.path(ziel, "tempanomalien-global.csv"),
          row.names = FALSE, na = "")
cat("tempanomalien-global.csv:", nrow(out), "Zeilen,",
    sum(!is.na(out$anomalie_jahr)), "Jahreswerte\n")

## 2) Eurostat demo_r_mwk_ts — Wochensterbefälle Österreich
d <- fromJSON(file.path(quelle, "deaths.json"), simplifyDataFrame = FALSE)
time_idx <- unlist(d$dimension$time$category$index)
time_lab <- unlist(d$dimension$time$category$label)
vals <- unlist(d$value)
# Werte sind über den Time-Index kodiert (einzige freie Dimension)
out2 <- data.frame(
  woche_code = names(time_idx)[order(time_idx)],
  woche_label = unname(time_lab[order(time_idx)]),
  jahr = as.integer(sub("-W.*", "", names(time_idx)[order(time_idx)])),
  woche = as.integer(sub(".*-W", "", names(time_idx)[order(time_idx)])),
  sterbefaelle = NA_real_
)
v <- as.numeric(vals)
names(v) <- names(vals)
# JSON-STAT-Index über alle Dimensionen: AT/T/NR fix, nur time variiert
gr <- sapply(d$dimension$time$category$index, function(.x) .x)  # time idx 0..n-1
out2$sterbefaelle[as.integer(names(v)) + 1L] <- v
write.csv(out2, file.path(ziel, "wochensterbefaelle-oesterreich.csv"),
          row.names = FALSE, na = "")
cat("wochensterbefaelle-oesterreich.csv:", nrow(out2), "Zeilen,",
    sum(!is.na(out2$sterbefaelle)), "Werte\n")

## 3) OWID — Impfquote vs. COVID-Todesrate je Land
ow <- read.csv(file.path(quelle, "owid-covid-data.csv"), check.names = FALSE)
laender <- c("AUT", "DEU", "CHE", "ITA", "FRA", "ESP", "POL", "CZE", "SVK",
             "HUN", "SVN", "HRV", "ROU", "BGR", "GRC", "PRT", "BEL", "NLD",
             "DNK", "SWE", "NOR", "FIN", "EST", "LVA", "LTU", "IRL", "LUX",
             "GBR", "USA", "CAN", "AUS", "JPN", "KOR", "ISR", "ZAF", "BRA",
             "ARG", "CHL", "MEX", "COL", "TUR", "RUS", "UKR", "IND", "CHN")
## Pro Land der letzte gemeldete Impfquoten-Wert <= Stichtag (Österreich
## meldete ab Mitte 2023 nicht mehr — exaktes Stichdatum wäre NA), plus
## Todesrate am selben Stichtag des jeweiligen Landes.
ow$date <- as.Date(ow$date)
cutoff <- as.Date("2023-12-31")
ow_sub <- ow[ow$iso_code %in% laender & ow$date <= cutoff &
               !is.na(ow$people_vaccinated_per_hundred),
             c("iso_code", "location", "population", "gdp_per_capita",
               "life_expectancy", "date", "total_deaths_per_million",
               "total_cases_per_million", "people_vaccinated_per_hundred",
               "people_fully_vaccinated_per_hundred",
               "total_boosters_per_hundred")]
out3 <- do.call(rbind, lapply(split(ow_sub, ow_sub$iso_code), function(x) {
  x[which.max(x$date), ]
}))
out3 <- out3[order(-out3$people_vaccinated_per_hundred), ]
names(out3)[names(out3) == "date"] <- "stichtag_impfquote"
write.csv(out3, file.path(ziel, "covid-impfquote-vs-todesrate.csv"),
          row.names = FALSE, na = "")
cat("covid-impfquote-vs-todesrate.csv:", nrow(out3), "Länder\n")
cat("Impfquote-Bereich:", paste(range(out3$people_vaccinated_per_hundred,
    na.rm = TRUE), collapse = "-"), "\n")
cat("Todesrate-Bereich:", paste(range(out3$total_deaths_per_million,
    na.rm = TRUE), collapse = "-"), "\n")

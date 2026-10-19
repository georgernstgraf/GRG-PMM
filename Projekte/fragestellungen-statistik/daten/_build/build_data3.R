# Bau-Skript Teil 3: Widerspruchs-Datensätze (Issue #36)
# Rohmaterial im DS_QUELLE-Ordner (Default: /tmp/opencode),: hadcrut_annual.csv, owid-covid-data.csv,
# arbeitslos_ilo.json; GISTEMP aus dem Repo (bereits kuratiert)
# Aufruf: Rscript /tmp/opencode/build_data3.R  (Arbeitsverzeichnis: Repo-Root)

library(jsonlite)

# Rohmaterial-Ordner: per Umgebungsvariable überschreibbar (DS_QUELLE=/pfad)
quelle <- Sys.getenv("DS_QUELLE", "/tmp/opencode")

ziel <- "Projekte/fragestellungen-statistik/daten"

## 1) Zwei Temperatur-Quellen: GISTEMP (Basis 1951–80) vs. HadCRUT5 (Basis 1961–90)
gistemp <- read.csv(file.path(ziel, "tempanomalien-global.csv"))
had <- read.csv(file.path(quelle, "hadcrut_annual.csv"))
names(had) <- c("jahr", "hadcrut_anomalie", "hadcrut_ci_unten", "hadcrut_ci_ober")
out <- merge(gistemp[, c("jahr", "anomalie_jahr")], had, by = "jahr")
names(out)[2] <- "gistemp_anomalie"
out <- out[order(out$jahr), ]
write.csv(out, file.path(ziel, "tempanomalien-zwei-quellen.csv"),
          row.names = FALSE, na = "")
cat("tempanomalien-zwei-quellen.csv:", nrow(out), "Zeilen (",
    min(out$jahr), "-", max(out$jahr), ")\n")
# Mittel über gemeinsame Jahre als Hinweis auf die Basisperioden-Differenz
gem <- out[!is.na(out$gistemp_anomalie) & !is.na(out$hadcrut_anomalie), ]
cat("mittlere Differenz (gemeinsame Jahre):",
    round(mean(gem$gistemp_anomalie - gem$hadcrut_anomalie), 3), "°C\n")

## 2) COVID AT: gemeldete COVID-Tode vs. Übersterblichkeit (monatlich)
ow <- read.csv(file.path(quelle, "owid-covid-data.csv"), check.names = FALSE)
at <- ow[ow$iso_code == "AUT", c("date", "new_deaths", "excess_mortality")]
at$date <- as.Date(at$date)
at <- at[at$date <= as.Date("2023-12-31"), ]
at$jahr <- as.integer(format(at$date, "%Y"))
at$monat <- as.integer(format(at$date, "%m"))
aggr <- aggregate(cbind(covid_tote_gemeldet = new_deaths) ~ jahr + monat,
                  data = at, FUN = sum, na.rm = TRUE)
excess <- aggregate(cbind(uebersterblichkeit_prozent = excess_mortality) ~
                      jahr + monat, data = at, FUN = mean, na.rm = TRUE)
out2 <- merge(aggr, excess, by = c("jahr", "monat"), all = TRUE)
out2 <- out2[order(out2$jahr, out2$monat), ]
write.csv(out2, file.path(ziel, "covid-at-gemeldet-vs-uebersterblichkeit.csv"),
          row.names = FALSE, na = "")
cat("covid-at-gemeldet-vs-uebersterblichkeit.csv:", nrow(out2), "Monate\n")
cat("2020: gemeldet =", sum(out2$covid_tote_gemeldet[out2$jahr == 2020], na.rm = TRUE),
    "| Übersterblichkeit Ø =", round(mean(out2$uebersterblichkeit_prozent[out2$jahr == 2020],
    na.rm = TRUE), 1), "%\n")

## 3) Arbeitslosenquote AT — ILO-Konzept (une_rt_a, Y15–74)
d <- fromJSON(file.path(quelle, "arbeitslos_ilo.json"), simplifyDataFrame = FALSE)
ti <- unlist(d$dimension$time$category$index)
vals <- unlist(d$value)
out3 <- data.frame(jahr = as.integer(names(ti)[order(ti)]),
                   ilo_quote = NA_real_)
v <- as.numeric(vals); names(v) <- names(vals)
out3$ilo_quote[as.integer(names(v)) + 1L] <- v
write.csv(out3, file.path(ziel, "arbeitslosigkeit-at-ilo.csv"),
          row.names = FALSE, na = "")
cat("arbeitslosigkeit-at-ilo.csv:", nrow(out3), "Zeilen (",
    min(out3$jahr), "-", max(out3$jahr), ")\n")

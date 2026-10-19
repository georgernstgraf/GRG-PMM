# Bau-Skript für die kuratierten CSVs (Issue #36)
# Rohmaterial im DS_QUELLE-Ordner (Default: /tmp/opencode),: euro2.json (Eurostat nrg_pc_204),
# OGD_krimi001_KRIMI_1.csv + krimi_A10.csv + krimi_KRIMEA9.csv
# Aufruf: Rscript /tmp/opencode/build_data.R  (Arbeitsverzeichnis: Repo-Root)

library(jsonlite)

# Rohmaterial-Ordner: per Umgebungsvariable überschreibbar (DS_QUELLE=/pfad)
quelle <- Sys.getenv("DS_QUELLE", "/tmp/opencode")

ziel <- "Projekte/fragestellungen-statistik/daten"

## 1) Eurostat nrg_pc_204 — Strompreise Haushalte (JSON-STAT -> tidy CSV)
d <- fromJSON(file.path(quelle, "euro2.json"), simplifyDataFrame = FALSE)
id   <- unlist(d$id)
size <- unlist(d$size)
# Kategorien je Dimension (0-basierte Indizes), Sortierung nach Index
lv <- lapply(d$dimension, function(x) {
  idx <- unlist(x$category$index)
  names(idx)[order(idx)]
})
# expand.grid variiert das ERSTE Argument am schnellsten -> reihumgedreht
# passt die Zeilenordnung zum linearen JSON-STAT-Index (letzte Dim am schnellsten)
grid <- expand.grid(rev(lv), stringsAsFactors = FALSE)
grid <- grid[, rev(seq_along(id)), drop = FALSE]  # wieder in id-Reihenfolge
names(grid) <- id

vals <- unlist(d$value)
grid$preis <- NA_real_
grid$preis[as.integer(names(vals)) + 1L] <- as.numeric(vals)

# Lesbare Spalten: Geo-Namen und Zeit as-is
geo_lab <- unlist(d$dimension$geo$category$label)
grid$geo_name <- unname(geo_lab[grid$geo])
grid$jahr_halbjahr <- grid$time
grid$zeitpunkt <- as.integer(sub("-S", ".", grid$time, fixed = TRUE))

out <- grid[, c("geo", "geo_name", "siec", "nrg_cons", "unit", "tax",
                "currency", "jahr_halbjahr", "zeitpunkt", "preis")]
out <- out[order(out$geo, out$zeitpunkt, out$nrg_cons, out$tax), ]
write.csv(out, file.path(ziel, "strompreise-eu-haushalte.csv"),
          row.names = FALSE, na = "")
cat("strompreise-eu-haushalte.csv:", nrow(out), "Zeilen,",
    sum(!is.na(out$preis)), "Werte\n")

## 2) Verurteilungsstatistik (OGD_krimi001_KRIMI_1) — tidy CSV
raw <- read.csv2(file.path(quelle, "OGD_krimi001_KRIMI_1.csv"))
a10 <- read.csv2(file.path(quelle, "krimi_A10.csv"))
k9  <- read.csv2(file.path(quelle, "krimi_KRIMEA9.csv"))

names(raw) <- c("jahr_code", "gericht_code", "delikte")
a10$jahr <- as.integer(sub("A10-", "", a10$code))
k9$gericht_code <- k9$code
k9$gericht_name <- k9$name
k9$olg_code <- k9$FK
olg <- k9[grepl("^KRIMJ93", k9$code), c("code", "gericht_name")]
names(olg) <- c("olg_code", "olg_name")
lg <- k9[grepl("^KRIMEA9", k9$code), c("gericht_code", "gericht_name", "olg_code")]

out2 <- merge(raw, a10[, c("code", "jahr")], by.x = "jahr_code", by.y = "code")
out2 <- merge(out2, lg, by = "gericht_code", all.x = TRUE)
out2 <- merge(out2, olg, by = "olg_code", all.x = TRUE)
out2$ebene <- ifelse(out2$gericht_code == "KRIMEA9-0", "unklassifizierbar",
              ifelse(grepl("^KRIMJ93", out2$gericht_code), "OLG-Summe", "LG"))
out2 <- out2[order(out2$jahr, out2$gericht_code),
             c("jahr", "gericht_code", "gericht_name", "ebene",
               "olg_code", "olg_name", "delikte")]
write.csv(out2, file.path(ziel, "verurteilungen-gerichtsbezirke.csv"),
          row.names = FALSE, na = "")
cat("verurteilungen-gerichtsbezirke.csv:", nrow(out2), "Zeilen\n")
cat("Jahre:", paste(range(out2$jahr), collapse = "-"), "\n")
cat("Summe 2012 (nur LG-Zeilen):",
    sum(out2$delikte[out2$jahr == 2012 & out2$ebene == "LG"]), "\n")

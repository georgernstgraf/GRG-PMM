# Bau-Skript Teil 4: „kuriose" Datensätze (Issue #36)
# Rohmaterial im DS_QUELLE-Ordner (Default: /tmp/opencode):
#   OGDEXT_VORNAMEN_1.csv, mcgrath.csv, cake.csv, pizzaplace.csv,
#   billboard.csv, spotify.csv, lego_population.csv
# Aufruf: Rscript Projekte/fragestellungen-statistik/daten/_build/build_data4.R
#         (Arbeitsverzeichnis: Repo-Root)

quelle <- Sys.getenv("DS_QUELLE", "/tmp/opencode")
ziel <- "Projekte/fragestellungen-statistik/daten"

## 1) Vornamen Österreich — Top 100 je Jahr und Geschlecht
##    Quelle: Statistik Austria OGD `OGDEXT_VORNAMEN_1` (CC BY 4.0).
##    Das Original enthält je Jahr x Wohnbezirk x Geschlecht x Vorname die
##    Anzahl lebendgeborener Kinder. Für die Unterrichtsdatei aggregieren wir
##    über die Bezirke (inkl. Code "GEH" = Geheimhaltungsfälle) und behalten
##    je Jahr und Geschlecht die 100 häufigsten Vornamen.
vn <- read.csv2(file.path(quelle, "OGDEXT_VORNAMEN_1.csv"),
                check.names = FALSE)
names(vn) <- c("jahr", "bezirk", "geschlecht", "vorname", "anzahl")
vn$anzahl <- as.numeric(vn$anzahl)
stopifnot(!any(is.na(vn$anzahl)))

agg <- aggregate(anzahl ~ jahr + geschlecht + vorname, data = vn, FUN = sum)
## Sortierung: häufigste zuerst, Gleichstand alphabetisch (deterministisch);
## rang = Position innerhalb Jahr x Geschlecht.
agg <- agg[order(agg$jahr, agg$geschlecht, -agg$anzahl, agg$vorname), ]
agg$rang <- ave(seq_len(nrow(agg)), agg$jahr, agg$geschlecht,
                FUN = seq_along)
top <- agg[agg$rang <= 100, ]
top$geschlecht <- ifelse(top$geschlecht == 1, "maennlich", "weiblich")
top <- top[, c("jahr", "geschlecht", "rang", "vorname", "anzahl")]
top <- top[order(top$jahr, top$geschlecht, top$rang), ]
write.csv(top, file.path(ziel, "vornamen-oesterreich-top100.csv"),
          row.names = FALSE)
cat("vornamen-oesterreich-top100.csv:", nrow(top), "Zeilen,",
    length(unique(top$jahr)), "Jahre\n")

## 2) Rdatasets-Quellen: unverändert übernehmen (1:1-Kopien, rownames bleibt)
kopien <- c(
  mcgrath.csv         = "schokoladenduft-buchladen.csv",
  cake.csv            = "schokoladenkuchen-bruchwinkel.csv",
  pizzaplace.csv      = "pizza-verkauf-2015.csv",
  billboard.csv       = "billboard-top100-2000.csv",
  spotify.csv         = "spotify-songs.csv",
  lego_population.csv = "lego-preise.csv"
)
for (roh in names(kopien)) {
  src <- file.path(quelle, roh)
  dst <- file.path(ziel, kopien[[roh]])
  stopifnot(file.exists(src))
  file.copy(src, dst, overwrite = TRUE)
  d <- read.csv(dst, check.names = FALSE)
  cat(kopien[[roh]], ":", nrow(d), "Zeilen,", ncol(d), "Spalten\n")
}

#!/usr/bin/env Rscript
# arten-ranking.R — Top-20-Ranking der häufigsten Taxa aus der BOKU-DB `clx`.
#
# Zugangsdaten kommen ausschließlich aus der Shell-Umgebung (PG*), also
# vorher im Ordner Projekte/boku/:
#
#   source .env && Rscript arten-ranking.R
#   OUT=/tmp/opencode/arten-ranking.png Rscript arten-ranking.R   # PNG statt Fenster
#
# Schema und Joins: joins.md. Read-only Account — das Skript schreibt nichts.

library(DBI)
library(RPostgres)
library(ggplot2)

# --- Zugangsdaten prüfen -----------------------------------------------------

brauche <- function(...) {
  keys <- c(...)
  fehlt <- keys[!nzchar(Sys.getenv(keys))]
  if (length(fehlt) > 0) {
    stop("Nicht exportiert: ", paste(fehlt, collapse = ", "),
         "\n  vorher:  source .env   (im Ordner Projekte/boku/)",
         call. = FALSE)
  }
  Sys.getenv(keys)
}

env <- brauche("PGHOST", "PGPORT", "PGDATABASE", "PGUSER", "PGPASSWORD", "PGSSLMODE")

# --- Verbindung --------------------------------------------------------------

con <- dbConnect(
  Postgres(),
  host            = env[["PGHOST"]],
  port            = as.integer(env[["PGPORT"]]),
  dbname          = env[["PGDATABASE"]],
  user            = env[["PGUSER"]],
  password        = env[["PGPASSWORD"]],
  sslmode         = env[["PGSSLMODE"]],
  connect_timeout = 10                  # wie psqlx: nicht ewig hängen
)
on.exit(dbDisconnect(con, shutdown = TRUE), add = TRUE)

# --- Ranking (die CTE aus joins.md) -----------------------------------------
# `family` muss mit, sonst meckert PostgreSQL: funktionale Abhängigkeit erkennt
# es nur über den Primärschlüssel, nicht über „speciesName bestimmt family".

ranking <- dbGetQuery(con, '
  WITH ranking AS (
    SELECT f."germanName", f."speciesName", f.family, count(*) AS n
    FROM   fish_catches c JOIN fish_species f ON f.id = c."speciesId"
    GROUP  BY 1,2,3
    ORDER  BY n DESC
    LIMIT  20
  )
  SELECT * FROM ranking ORDER BY n DESC')

# count(*) liefert bigint, RPostgres gibt das als integer64 zurück — numeric
# machen, sonst ignoriert format() den Tausendertrenner (bit64-eigene Methode).
ranking$n <- as.numeric(ranking$n)

# Sammel-Einträge auf Familienebene (z. B. "Karpfenfisch" = Cyprinidae) sind
# keine Arten — im Diagramm farblich getrennt.
ranking$sammel_taxon <- ranking$speciesName == ranking$family

# --- Balkendiagramm ---------------------------------------------------------

p <- ggplot(ranking, aes(x = n, y = reorder(germanName, n), fill = sammel_taxon)) +
  geom_col(width = 0.7) +
  geom_text(aes(label = format(n, big.mark = ".", decimal.mark = ",", trim = TRUE)),
            hjust = -0.15, size = 3, colour = "grey20") +
  scale_fill_manual(
    values = c(`FALSE` = "#2c7fb8", `TRUE` = "grey65"),
    labels = c(`FALSE` = "Art", `TRUE` = "Sammel-Taxon (Familienebene)"),
    name   = NULL
  ) +
  scale_x_continuous(
    labels = scales::label_number(big.mark = ".", decimal.mark = ","),
    expand = expansion(mult = c(0, 0.12))
  ) +
  labs(
    title    = "Häufigste Taxa in der BOKU-Fischdatenbank",
    subtitle = paste0("Top 20 nach Fangzahl, 1998-2024 · Stand ",
                      format(Sys.Date(), "%d.%m.%Y")),
    x        = "Fänge",
    y        = NULL,
    caption  = paste("Quelle: clx (BOKU), read-only Account.",
                     "Sammel-Einträge wie 'Karpfenfisch' zählen auf Familienebene.")
  ) +
  theme_minimal(base_size = 11) +
  theme(
    panel.grid.major.y = element_blank(),
    panel.grid.minor   = element_blank(),
    legend.position    = "top",
    plot.caption       = element_text(colour = "grey40", hjust = 0)
  )

# Ausgabe: OUT=… schreibt ein PNG, sonst zeigt RStudio das Diagramm an.
# Bewusst kein print(p) im Skript-Modus — das legte früher ein Rplots.pdf ins
# Arbeitsverzeichnis (Default-Device von Rscript).
out <- Sys.getenv("OUT")
if (nzchar(out)) {
  ggsave(out, p, width = 8, height = 6.5, dpi = 150, bg = "white")
  message("Diagramm gespeichert: ", out)
} else if (interactive()) {
  print(p)
} else {
  message("Kein OUT gesetzt — nichts gerendert. Beispiel:\n",
          "  OUT=/tmp/arten-ranking.png Rscript arten-ranking.R")
}

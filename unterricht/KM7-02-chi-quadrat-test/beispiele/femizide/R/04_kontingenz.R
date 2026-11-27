# 04_kontingenz.R — aus den bereinigten Daten werden Kreuztabellen
#
# Drei Tafeln, drei verschiedene Sorten von "klein":
#   Tafel 1  Nationalität × Delikt        aus der PKS (Tatverdächtige)
#   Tafel 2  Bundesland × Jahr            aus der PKS (Opfer)
#   Tafel 3  Beziehung × Herkunft         aus den AÖF-Falllisten
# Die dritte Tafel gibt es nur in den AÖF-Daten: die PKS kreuzt Nationalität
# und Beziehung nicht.

herkunft_mapping <- readr::read_csv(
  here::here("daten", "herkunft-mapping.csv"),
  show_col_types = FALSE
)

# --- Tafel 1: Nationalität (gruppiert) × Delikt ------------------------------
# Die Gruppierung ist eine Entscheidung, keine Messung: sie steht in
# daten/herkunft-mapping.csv und ist dort Zeile für Zeile nachprüfbar.
pks_gruppiert <- pks_person |>
  left_join(herkunft_mapping, by = c("nationalitaet" = "land"))

unzugeordnet <- pks_gruppiert |> filter(is.na(gruppe))
stopifnot(nrow(unzugeordnet) == 0)   # jede Nationalität hat eine Gruppe

tafel_nation_delikt <- pks_gruppiert |>
  filter(gruppe != "ungeklärt") |>
  count(gruppe, delikt, wt = anzahl) |>
  pivot_wider(names_from = delikt, values_from = n, values_fill = 0) |>
  select(gruppe, vollendet, versuch) |>
  column_to_rownames("gruppe") |>
  as.matrix()

cat("\n== Tafel 1 — Tatverdächtige nach Herkunft und Delikt (2019–2023):\n")
print(addmargins(tafel_nation_delikt))

# --- Tafel 2: Bundesland × Jahr ---------------------------------------------
tafel_bundesland_jahr <- pks_land |>
  pivot_wider(names_from = jahr, values_from = anzahl, names_prefix = "jahr_") |>
  column_to_rownames("bundesland") |>
  as.matrix()

cat("\n== Tafel 2 — vollendete Morde an Frauen je Bundesland und Jahr:\n")
print(addmargins(tafel_bundesland_jahr))

# --- Tafel 3: Beziehung × Herkunft (AÖF) ------------------------------------
# `aoef` entsteht in 03_kodieren.R. Die Spalte `herkunft_gruppe` folgt
# derselben Einteilung wie das Mapping (Österreich / EU / Drittstaat),
# `beziehung_kat` fasst die Freitext-Bezeichnungen der Listen zusammen.
tafel_beziehung_herkunft <- aoef |>
  filter(!is.na(beziehung_kat), !is.na(herkunft_gruppe),
         herkunft_gruppe != "ungeklärt") |>
  count(beziehung_kat, herkunft_gruppe) |>
  pivot_wider(names_from = herkunft_gruppe, values_from = n, values_fill = 0) |>
  column_to_rownames("beziehung_kat") |>
  as.matrix()

cat("\n== Tafel 3 — Femizidfälle nach Beziehung und Herkunft (AÖF 2019–2026):\n")
print(addmargins(tafel_beziehung_herkunft))

cat("\n== Wie viele Fälle bleiben für Tafel 3 übrig?\n")
cat("   AÖF-Fälle gesamt:", nrow(aoef),
    "| in Tafel 3:", sum(tafel_beziehung_herkunft), "\n")
print(aoef |> count(herkunft_gruppe, sort = TRUE))

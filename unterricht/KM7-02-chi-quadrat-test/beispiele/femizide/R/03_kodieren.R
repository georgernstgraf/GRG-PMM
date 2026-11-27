# 03_kodieren.R — aus Freitext werden Kategorien
#
# Die AÖF-Listen sind Medienauswertungen: Ort, Beziehung und Herkunft stehen
# als Fließtext in der Zelle — inklusive Tippfehler, Zeilenumbrüchen und
# Einschüben wie "Ehemann, geständig, hat als Motiv Eifersucht genannt".
# Jede Zeile hier ist eine Entscheidung, die man auch anders treffen könnte.
# Deshalb wird nach dem Kodieren ausgedruckt, was NICHT zugeordnet wurde.

bundeslaender_re <- str_c(bundeslaender, collapse = "|")

# Die Listen kürzen die Bundesländer ab ("NÖ", "OÖ", auch vertippt als "ÖO").
# Erst auflösen, dann suchen — sonst fehlt die Hälfte der Fälle.
ort_norm <- function(x) {
  x |>
    str_replace_all(fixed("NÖ"), "Niederösterreich") |>
    str_replace_all(fixed("OÖ"), "Oberösterreich") |>
    str_replace_all(fixed("ÖO"), "Oberösterreich")
}

# Bundesland ohne Rücksicht auf Groß-/Kleinschreibung ("Oststeiermark").
finde_bundesland <- function(x) {
  for (b in bundeslaender) {
    if (str_detect(x, regex(b, ignore_case = TRUE))) return(b)
  }
  NA_character_
}

aoef <- aoef_roh |>
  mutate(
    # Datum: "3.1.2025" steht in der Zelle, "Tat vermutlich 12/2025" auch.
    # Wo kein Tagesdatum steht, bleibt datum NA — das Jahr kommt aus der Liste.
    datum = dmy(str_extract(datum_roh, "\\d{1,2}\\.\\d{1,2}\\.\\d{4}")),
    jahr = coalesce(year(datum), as.integer(liste_jahr)),

    bundesland = map_chr(ort_norm(ort_roh), finde_bundesland),

    # Sonderblöcke der Listen (Zufallsopfer, Täterinnen, "weitere Mordfälle")
    # sind keine Femizide im Sinne der Zählung. Sie bleiben in den Rohdaten,
    # werden aber für die Auswertung markiert statt stillschweigend entfernt.
    ist_hauptliste = is.na(kategorie_roh) | kategorie_roh == "",

    # Reihenfolge der Regeln = Priorität. "Freundin der Ehefrau" ist keine
    # Partnerschaft, "Halbbruder des Ex-Lebensgefährten" keine Partnerschaft —
    # beides muss vor der Partner-Regel greifen.
    beziehung_kat = case_when(
      str_detect(beziehung_roh, regex("ohne Naheverhältnis|nicht bekannt|^\\?$|gefahndet|noch nicht bekannt", ignore_case = TRUE)) ~ NA_character_,
      str_detect(beziehung_roh, regex("freundin der|bekanntenkreis|bekanntschaft|partybekannt", ignore_case = TRUE)) ~ "Bekannt",
      str_detect(beziehung_roh, regex("halbruder|bruder|vater|mutter|sohn|tochter|enkel|schwager|schwieger|stief|verwandt|famili", ignore_case = TRUE)) ~ "Familie",
      str_detect(beziehung_roh, regex("ehe|ex-?mann|mann|lebensgef|lebens- gef|beziehungs|partner|freund", ignore_case = TRUE)) ~ "Partner/Ex-Partner",
      str_detect(beziehung_roh, regex("bekannt|kollege|nachbar|mitbewohner", ignore_case = TRUE)) ~ "Bekannt",
      TRUE ~ NA_character_
    )
  )

# --- Herkunft: Land im Freitext finden, dann über das Mapping gruppieren -----
herkunft_mapping <- readr::read_csv(
  here::here("daten", "herkunft-mapping.csv"),
  show_col_types = FALSE
)

land_im_text <- function(x) {
  treffer <- map(x, ~ herkunft_mapping$land[str_detect(.x, fixed(herkunft_mapping$land))])
  map_chr(treffer, ~ if (length(.x) == 0) NA_character_ else .x[1])
}

# Kurzformen für "Österreich", die kein Landname sind
oesterreich_re <- regex("österreich|\\bö\\b|salzburg|kärntner|tiroler|steirer|wiener|burgenländer", ignore_case = TRUE)

aoef <- aoef |>
  mutate(
    herkunft_land = land_im_text(herkunft_roh),
    herkunft_gruppe = case_when(
      is.na(herkunft_roh) | str_trim(herkunft_roh) %in% c("", "k.A.", "---", "-") ~ "ungeklärt",
      str_detect(herkunft_roh, oesterreich_re) ~ "Österreich",
      !is.na(herkunft_land) ~ herkunft_mapping$gruppe[match(herkunft_land, herkunft_mapping$land)],
      str_detect(herkunft_roh, regex("k\\.a\\.", ignore_case = TRUE)) ~ "ungeklärt",
      TRUE ~ "ungeklärt"
    )
  )

# --- Kontrolle: was ist liegen geblieben? -----------------------------------
cat("\n== AÖF-Fälle:", nrow(aoef), "| Jahrgänge:",
    str_c(range(aoef$jahr), collapse = "–"),
    "| davon Hauptlisten:", sum(aoef$ist_hauptliste), "\n")

cat("\n== Fälle je Liste (Kontrolle gegen die Quelle):\n")
print(count(aoef, liste_jahr))

cat("\n== Sonderblöcke (nicht Teil der Femizid-Zählung):\n")
print(count(aoef, kategorie_roh) |> filter(!is.na(kategorie_roh)))

cat("\n== Kodierung Beziehung (Hauptlisten):\n")
print(aoef |> filter(ist_hauptliste) |> count(beziehung_kat, sort = TRUE))

cat("\n== Kodierung Herkunft (Hauptlisten):\n")
print(aoef |> filter(ist_hauptliste) |> count(herkunft_gruppe, sort = TRUE))

offene_beziehung <- aoef |> filter(ist_hauptliste, is.na(beziehung_kat)) |>
  distinct(beziehung_roh)
cat("\n== Beziehung ohne Kategorie (", nrow(offene_beziehung), "verschiedene Werte):\n")
print(offene_beziehung, n = 40)

cat("\n== Bundesland nicht erkannt:\n")
print(aoef |> filter(is.na(bundesland)) |> distinct(ort_roh))

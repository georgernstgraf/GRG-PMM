# 02_tidy.R — aus der Einrückung wird eine Tabelle
#
# Die PKS-Beilage ist eine gedruckte Baumstruktur:
#   Bundesland → Geschlecht → Altersklasse → Nationalität
# In der CSV steht die Ebene nur als Einrückung im Feld `zeile`. Diese Datei
# macht daraus Spalten — und prüft bei jedem Schritt gegen die gedruckte
# Summenzeile, ob noch alles stimmt.

bundeslaender <- c("Burgenland", "Kärnten", "Niederösterreich", "Oberösterreich",
                   "Salzburg", "Steiermark", "Tirol", "Vorarlberg", "Wien")
summen_labels <- c("Österreich", "Gesamt", "Gesamtergebnis")
altersklasse_re <- "^(unter 6|6 bis|10 bis|14 bis|18 bis|21 bis|25 bis|40 bis|40 und|65 und)"

pks <- pks_roh |>
  mutate(
    tiefe = str_count(zeile, "^\\s+"),
    label = str_squish(zeile)
  ) |>
  group_by(abschnitt) |>
  mutate(
    # Die gedruckte Summenzeile steht am Ende jedes Abschnitts.
    ist_summe = row_number() == n() & label %in% summen_labels,
    # Falle 2: die Einrückung ist ein Hinweis, kein Beweis. Im Abschnitt
    # "mordversuch_opfer" sitzen nach dem Seitenumbruch einige Nationalitäten
    # eine Ebene zu hoch. Deshalb entscheidet das Label, nicht die Tiefe.
    ist_bundesland = label %in% bundeslaender,
    bundesland = if_else(ist_bundesland, label, NA_character_)
  ) |>
  fill(bundesland, .direction = "down") |>
  ungroup() |>
  pivot_longer(starts_with("jahr_"), names_to = "jahr", values_to = "anzahl") |>
  mutate(jahr = as.integer(str_remove(jahr, "jahr_")))

# --- Summenprobe: 9 Bundesländer == gedruckte Gesamtzeile -------------------
probe <- pks |>
  filter(ist_bundesland) |>
  group_by(abschnitt, jahr) |>
  summarise(summe = sum(anzahl), .groups = "drop") |>
  left_join(
    pks |> filter(ist_summe) |> select(abschnitt, jahr, gedruckt = anzahl),
    by = c("abschnitt", "jahr")
  )

cat("\n== Summenprobe (Bundesländer vs. gedruckte Summenzeile):\n")
print(probe, n = 12)
stopifnot(!any(is.na(probe$gedruckt)), all(probe$summe == probe$gedruckt))
cat("   -> alle", nrow(probe), "Abschnitt-Jahr-Kombinationen stimmen\n")

# --- Tafel A: vollendete Morde an Frauen je Bundesland und Jahr -------------
pks_land <- pks |>
  filter(abschnitt == "mord_vollendet_opfer", ist_bundesland) |>
  select(bundesland, jahr, anzahl)

cat("\n== Tafel A — vollendete Morde an Frauen (Österreich =",
    sum(pks_land$anzahl), "Fälle):\n")
print(pivot_wider(pks_land, names_from = jahr, values_from = anzahl,
                  names_prefix = "jahr_"))

# --- Tafel B: Tatverdächtige nach Nationalität und Delikt -------------------
pks_person <- pks |>
  filter(str_detect(abschnitt, "^mord_vollendet_taeter|^mordversuch_taeter")) |>
  mutate(
    geschlecht = if_else(label %in% c("männlich", "weiblich"), label, NA_character_),
    altersklasse = if_else(str_detect(label, altersklasse_re), label, NA_character_)
  ) |>
  group_by(abschnitt, bundesland) |>
  fill(geschlecht, altersklasse, .direction = "down") |>
  ungroup() |>
  filter(
    !ist_bundesland, !ist_summe,
    !label %in% c("männlich", "weiblich"),
    !str_detect(label, altersklasse_re)
  ) |>
  rename(nationalitaet = label) |>
  mutate(delikt = if_else(str_starts(abschnitt, "mord_vollendet"),
                          "vollendet", "versuch"))

# Kontrolle: Summe der Nationalitäten == gedruckte Gesamtzeile
probe_person <- pks_person |>
  group_by(abschnitt, jahr) |>
  summarise(summe = sum(anzahl), .groups = "drop") |>
  left_join(
    pks |> filter(ist_summe, str_detect(abschnitt, "^mord_vollendet_taeter|^mordversuch_taeter")) |>
      select(abschnitt, jahr, gedruckt = anzahl),
    by = c("abschnitt", "jahr")
  )

cat("\n== Kontrolle Tatverdächtige (Nationalitäten vs. Gesamtzeile):\n")
print(probe_person, n = 12)
stopifnot(all(probe_person$summe == probe_person$gedruckt))
cat("   -> stimmt für", nrow(probe_person), "Abschnitt-Jahr-Kombinationen\n")

cat("\n== Tafel B — Tatverdächtige:", sum(pks_person$anzahl), "Personen,",
    n_distinct(pks_person$nationalitaet), "Nationalitäten\n")

# --- Was die Studie NICHT braucht, aber die Neugier -------------------------
# Nationalität gehört zur Person, nicht zum Fall: dieselbe Person kann in
# mehreren Jahren auftauchen. Diese Zahl ist deshalb keine Personenzahl im
# Sinne der Kriminalstatistik, sondern eine Fallzahl.
cat("\n== Aufklärungsquote vollendete Morde (geklärt / Opfer):\n")
print(pks |>
        filter(abschnitt %in% c("mord_vollendet_opfer", "mord_vollendet_opfer_geklaert"),
               ist_summe) |>
        select(abschnitt, jahr, anzahl) |>
        pivot_wider(names_from = abschnitt, values_from = anzahl) |>
        mutate(quote = round(mord_vollendet_opfer_geklaert / mord_vollendet_opfer, 3)))

# 01_einlesen.R — zwei Rohdateien, zwei Sorten Schmutz
#
# Die Dateien sind absichtlich so, wie sie aus den Quellen kommen:
#   daten/pks_morde-frauen_2019-2023_roh.csv   PKS-Beilage zu 17838/AB
#   daten/aoef_faelle_2019-2026_roh.csv        AÖF-Jahreslisten
# Hier wird NICHTS bereinigt. Erst schauen, dann putzen.

pks_roh <- readr::read_csv(
  here::here("daten", "pks_morde-frauen_2019-2023_roh.csv"),
  # Falle 1: ohne trim_ws = FALSE verschwindet die Einrückung —
  # und mit ihr die gesamte Hierarchie der PKS-Tabelle.
  trim_ws = FALSE,
  show_col_types = FALSE
)

aoef_roh <- readr::read_csv(
  here::here("daten", "aoef_faelle_2019-2026_roh.csv"),
  show_col_types = FALSE
)

# --- Kontrolle: Was ist angekommen? -----------------------------------------
cat("\n== PKS-Rohdaten:", nrow(pks_roh), "Zeilen,", ncol(pks_roh), "Spalten\n")
print(names(pks_roh))
print(pks_roh, n = 4)

cat("\n== Abschnitte der Beilage:\n")
print(table(pks_roh$abschnitt))

cat("\n== Einrückung sichtbar machen (Tiefe = führende Leerzeichen):\n")
print(table(stringr::str_count(pks_roh$zeile, "^\\s+")))

cat("\n== AÖF-Rohdaten:", nrow(aoef_roh), "Zeilen,", ncol(aoef_roh), "Spalten\n")
print(names(aoef_roh))
print(aoef_roh, n = 3)

cat("\n== Fälle je Liste (Spalte liste_jahr):\n")
print(table(aoef_roh$liste_jahr, useNA = "ifany"))

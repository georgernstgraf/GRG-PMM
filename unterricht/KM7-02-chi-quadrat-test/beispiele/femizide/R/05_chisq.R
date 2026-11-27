# 05_chisq.R — die Tests, die zu den Tafeln passen
#
# Drei Unabhängigkeitstests und ein Anpassungstest. Nach jedem Test steht
# dieselbe Frage: sind die Voraussetzungen erfüllt, und was heißt das
# Ergebnis inhaltlich?

cramers_v <- function(x) {
  chi <- suppressWarnings(chisq.test(x))
  as.numeric(sqrt(unname(chi$statistic) / (sum(x) * (min(dim(x)) - 1))))
}

erwartet_anteil_unter_5 <- function(x) {
  e <- suppressWarnings(chisq.test(x)$expected)
  round(mean(e < 5), 3)
}

# --- Test 1: Nationalität × Delikt ------------------------------------------
cat("\n================ Test 1: Herkunft × Delikt (Tafel 1)\n")
print(tafel_nation_delikt)

test1 <- chisq.test(tafel_nation_delikt)
print(test1)
cat("Erwartete Häufigkeiten:\n"); print(round(test1$expected, 2))
cat("Anteil Zellen mit Erwartungswert < 5:", erwartet_anteil_unter_5(tafel_nation_delikt), "\n")
cat("Cramér's V:", round(cramers_v(tafel_nation_delikt), 3),
    "  (Obergrenze für 3×2 ist 1; kleine Werte = schwacher Zusammenhang)\n")
cat("Standardisierte Residuen (>|2| = Zelle weicht auffällig ab):\n")
print(round(test1$residuals, 2))

# --- Test 2: Bundesland × Jahr ----------------------------------------------
cat("\n================ Test 2: Bundesland × Jahr (Tafel 2)\n")
print(tafel_bundesland_jahr)

test2 <- chisq.test(tafel_bundesland_jahr)   # absichtlich ohne suppressWarnings
print(test2)
cat("Anteil Zellen mit Erwartungswert < 5:", erwartet_anteil_unter_5(tafel_bundesland_jahr), "\n")
cat("-> Chi-Quadrat ist hier eine Näherung. Zwei Auswege:\n")
print(suppressWarnings(chisq.test(tafel_bundesland_jahr, simulate.p.value = TRUE, B = 1e4)))
cat("Cramér's V:", round(cramers_v(tafel_bundesland_jahr), 3), "\n")

# --- Test 3: Beziehung × Herkunft (AÖF) -------------------------------------
cat("\n================ Test 3: Beziehung × Herkunft (Tafel 3)\n")
print(tafel_beziehung_herkunft)

test3 <- suppressWarnings(chisq.test(tafel_beziehung_herkunft))
print(test3)
cat("Erwartete Häufigkeiten:\n"); print(round(test3$expected, 2))
cat("Anteil Zellen mit Erwartungswert < 5:", erwartet_anteil_unter_5(tafel_beziehung_herkunft), "\n")
cat("-> Bei so kleinen Zellen ist fisher.test die ehrlichere Wahl:\n")
print(fisher.test(tafel_beziehung_herkunft, simulate.p.value = TRUE, B = 1e4))
cat("Cramér's V:", round(cramers_v(tafel_beziehung_herkunft), 3), "\n")

# --- Anpassungstest: stimmt die Herkunftsverteilung mit der Bevölkerung? ----
# Sollverteilung: Anteile an der österreichischen Bevölkerung 2010–2020,
# übernommen aus der IKF-Studie (Tab. A 13, Statistik Austria STATcube).
# Diese Zahlen sind NICHT selbst berechnet — sie sind der Vergleichsmaßstab.
cat("\n================ Anpassungstest: Herkunft der Tatverdächtigen\n")

beobachtet <- pks_gruppiert |>
  filter(gruppe != "ungeklärt") |>
  summarise(n = sum(anzahl), .by = gruppe) |>
  arrange(match(gruppe, c("Österreich", "EU", "Drittstaat")))
print(beobachtet)

soll_anteil <- c(Österreich = 0.859, EU = 0.073, Drittstaat = 0.068)  # IKF 2023, Tab. A 13

print(chisq.test(beobachtet$n, p = soll_anteil))
cat("Achtung: 'signifikant' heißt hier nur, dass die Verteilung der\n",
    "Tatverdächtigen nicht der Bevölkerungsverteilung entspricht. Über die\n",
    "Ursachen sagt der Test nichts — und über die Zahl der Nichtangezeigten\n",
    "auch nicht.\n")

# --- Ergebnisse sichern -----------------------------------------------------
dir.create(here::here("ergebnisse"), showWarnings = FALSE)

readr::write_csv(
  as.data.frame(tafel_nation_delikt) |> tibble::rownames_to_column("herkunft"),
  here::here("ergebnisse", "tafel1_herkunft_delikt.csv")
)
readr::write_csv(
  as.data.frame(tafel_bundesland_jahr) |> tibble::rownames_to_column("bundesland"),
  here::here("ergebnisse", "tafel2_bundesland_jahr.csv")
)
readr::write_csv(
  as.data.frame(tafel_beziehung_herkunft) |> tibble::rownames_to_column("beziehung"),
  here::here("ergebnisse", "tafel3_beziehung_herkunft.csv")
)
readr::write_csv(
  dplyr::bind_rows(
    broom::tidy(test1) |> dplyr::mutate(tafel = "1 Herkunft x Delikt"),
    broom::tidy(suppressWarnings(chisq.test(tafel_bundesland_jahr))) |>
      dplyr::mutate(tafel = "2 Bundesland x Jahr"),
    broom::tidy(test3) |> dplyr::mutate(tafel = "3 Beziehung x Herkunft")
  ),
  here::here("ergebnisse", "tests.csv")
)

cat("\n== Ergebnisse geschrieben nach ergebnisse/\n")
print(list.files(here::here("ergebnisse")))

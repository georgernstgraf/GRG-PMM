library(tidyverse)
daten <- read_csv("data/betriebsdaten.csv") |>
  mutate(iok = if_else(
    is.na(länge_mm), NA,
    if_else(round(abs(länge_mm - 10), 10) > 0.15,
            "ausserhalb", "in_Toleranz")))

tab <- table(daten$maschine, daten$iok)
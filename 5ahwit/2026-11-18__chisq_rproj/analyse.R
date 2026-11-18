library(tidyverse)

daten <- read_csv("assets/dreifach.csv") |>
  mutate(iok = if_else(
    is.na(masse_mm), NA,
    if_else(round(abs(masse_mm - 10), 10) > 0.15,
            "ausserhalb", "in_Toleranz")))

tab <- table(daten$maschine, daten$iok)
chisq.test(tab)

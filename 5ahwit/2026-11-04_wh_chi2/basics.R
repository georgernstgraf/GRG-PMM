library(tidyverse)
raw <- read_csv("./m1_m2_m3.csv")

daten <- raw |> mutate(iok = if_else(is.na(masse_mm), NA,
    if_else(abs(masse_mm - 10) > 0.15,
        "ausserhalb", "in_Toleranz"
    )
))

tab <- table(daten$maschine, daten$iok)

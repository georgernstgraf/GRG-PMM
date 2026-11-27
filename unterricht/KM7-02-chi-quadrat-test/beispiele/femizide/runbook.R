# runbook.R — Femizide in Österreich: von den Rohdaten zum Chi-Quadrat-Test
#
#   cd unterricht/KM7-02-chi-quadrat-test/beispiele/femizide
#   Rscript runbook.R
#
# Die fünf Schritte laufen hintereinander und bauen aufeinander auf; jeder
# Schritt prüft seine eigene Arbeit gegen die Quelle. Wer nur einen Schritt
# ansehen will, sourced ihn einzeln in RStudio.

suppressPackageStartupMessages({
  library(tidyverse)
  library(here)
})

# Ohne .here würde here::here() am Repo-Root (.git) ankern und alle Pfade
# eine Etage zu hoch zeigen.
stopifnot(basename(here::here()) == "femizide")

source(here::here("R", "01_einlesen.R"))
source(here::here("R", "02_tidy.R"))
source(here::here("R", "03_kodieren.R"))
source(here::here("R", "04_kontingenz.R"))
source(here::here("R", "05_chisq.R"))

sessionInfo()

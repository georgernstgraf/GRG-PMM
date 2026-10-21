# schokoladenkuchen-bruchwinkel.csv

- **Herkunft:** `lme4::cake` — Bruchwinkel von Schokoladenkuchen in
  Abhängigkeit von Rezept und Backtemperatur (klassischer 3×6-Versuch,
  15 Wiederholungen je Kombination); via Rdatasets
- **Inhalt:** 270 Zeilen · Spalten: `rownames, replicate, recipe,
  temperature, angle, temp` (`recipe` A/B/C, `temperature` 175–225 °C in
  10er-Schritten, `angle` = Bruchwinkel in Grad, `temp` = numerische
  Temperatur)
- **Doku:** https://vincentarelbundock.github.io/Rdatasets/doc/lme4/cake.html
- **Original-CSV:** https://vincentarelbundock.github.io/Rdatasets/csv/lme4/cake.csv
- **Lizenz:** wie Paket `lme4` (GPL ≥ 2)
- **Stand:** heruntergeladen 2026-10-21
- **R-Einlesen:** `read.csv(...)` — geprüft per `Rscript` (270 Zeilen,
  6 Spalten; 3 Rezepte × 6 Temperaturen × 15 Wiederholungen)
- **Nutzung:** Themenfile `kuriose-quellen.md` F-C12 (2 Faktoren, ein
  köstliches Messproblem); KM9a UE 2–4 (vollfaktoriell, Wechselwirkung,
  Modellreduktion), KM7 UE 8 (ANOVA)
- **Kennzeichnung:** echter publizierter Versuch — für DoE-UEs auswerten.
  Kontrollwerte: mittlerer Winkel Rezept A bei 175 °C = 29,1° · bei 225 °C =
  35,1°; Rezept C bei 175 °C = 27,9°.

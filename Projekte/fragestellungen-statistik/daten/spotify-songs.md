# spotify-songs.csv

- **Herkunft:** `bayesrules::spotify` — Spotify-Songdaten (Audio-Features
  und Playlist-Zuordnung), Begleitdatensatz zum Lehrbuch *Bayes Rules!*;
  via Rdatasets
- **Inhalt:** 350 Zeilen · Spalten: `rownames, track_id, title, artist,
  popularity, album_id, album_name, album_release_date, playlist_name,
  playlist_id, genre, subgenre, danceability, energy, key, loudness, mode,
  speechiness, acousticness, instrumentalness, liveness, valence, tempo,
  duration_ms` (Audio-Features 0–1 normiert, `popularity` 0–100)
- **Doku:** https://vincentarelbundock.github.io/Rdatasets/doc/bayesrules/spotify.html
- **Original-CSV:** https://vincentarelbundock.github.io/Rdatasets/csv/bayesrules/spotify.csv
- **Lizenz:** wie Paket `bayesrules` (GPL ≥ 3)
- **Stand:** heruntergeladen 2026-10-21
- **R-Einlesen:** `read.csv(...)` — geprüft per `Rscript` (350 Zeilen,
  24 Spalten; 6 Genres)
- **Nutzung:** Themenfile `kuriose-quellen.md` F-C7 (Was macht einen Hit?);
  KM7 UE 1–3 (EDA, Korrelation), UE 5 (CI), UE 8 (Gruppenvergleiche),
  KM9a UE 1 (Faktoren/Stufen an Alltagsdaten erklären)
- **Kontrollwert:** `cor(danceability, energy)` = 0,08 — schönes Beispiel
  dafür, dass „tanzt sich nicht automatisch energetisch".

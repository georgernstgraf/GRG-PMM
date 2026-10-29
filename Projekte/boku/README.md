# BOKU-Fischdatenbank `clx` — Arbeitsordner

Zugang zur read-only-Datenbank des BOKU-Projekts (Fischbestandserhebung
österreichischer Fließgewässer, 1998–2024, 464.654 Fänge). Zweck: echte,
raue Daten für den Postgres-Teil der Datenaufbereitungs-Reihe (SA-07) und
für Fragestellungen mit realer Datenbasis.

| Datei | Inhalt |
|---|---|
| `psqlx` | psql-Wrapper, liest `.env` (Zugangsdaten) |
| `.env` | `PG*`-Variablen, mode 600, **gitignored** |
| `joins.md` | Schema, Fremdschlüssel, fertige Join-Queries, Fallstricke |
| `arten-ranking.R` | R-Skript: Top 20 der häufigsten Taxa als Balkendiagramm |
| `.RData` / `.Rhistory` | R-Artefakte aus der ersten Erkundung (gitignored) |

## Bedienung

```sh
./psqlx                                  # interaktive Sitzung
./psqlx -c 'select count(*) from fish_catches'
./psqlx -c '\dt'                         # psql-Metakommandos gehen auch
./psqlx -f joins.sql                     # Datei ausführen
./psqlx -l                               # Datenbanken listen
```

Der Wrapper sourcet `.env` selbst — kein `source .env` vorher nötig. Er
setzt `default_transaction_read_only=on` für die Session; Schreibzugriff
(nur mit einem Schreib-Account überhaupt möglich) via `PSQLX_RW=1`. Ein
anderes env-File per `PSQLX_ENV=/pfad/zur/.env`. Das Passwort wird nie
ausgegeben, `--no-password` verhindert Hängen an einem Prompt, und
`PGCONNECT_TIMEOUT=10` (per Umgebungsvariable änderbar) bricht ab, wenn der
Server nicht antwortet — er tut das sporadisch.

### R-Skripte

R-Skripte parsen `.env` **nicht** selbst; sie erwarten die exportierten
Variablen und brechen mit einer klaren Meldung ab, wenn eine fehlt:

```sh
source .env && Rscript arten-ranking.R                      # RStudio/Plot-Fenster
source .env && OUT=/tmp/arten-ranking.png Rscript arten-ranking.R
```

`arten-ranking.R` lädt das Top-20-Ranking (die CTE aus `joins.md`) und zeichnet
es als horizontales Balkendiagramm; Sammel-Einträge auf Familienebene
(„Karpfenfisch“) sind grau abgesetzt. Ohne `OUT=` wird in einer Skript-Session
nichts geschrieben — bewusst, damit kein `Rplots.pdf` im Ordner landet.

## Inhalt von `.env`

Die Datei ist die einzige Quelle der Verbindungsdaten (Werte hier bewusst
nicht wiederholt — sie steht lokal und ist gitignored):

```sh
export PGHOST=…
export PGPORT=5432
export PGDATABASE=clx
export PGUSER=…            # read-only Account
export PGPASSWORD='…'
export PGSSLMODE=require   # verschlüsselt, ohne Zertifikatsprüfung
export READONLY_DB_PASSWORD="$PGPASSWORD"   # Alias für den R-Code
```

psql liest `PG*` von sich aus; derselbe Datensatz trägt also auch R:

```r
library(DBI); library(RPostgres)
con <- dbConnect(Postgres(),
  host = Sys.getenv("PGHOST"), port = as.integer(Sys.getenv("PGPORT")),
  dbname = Sys.getenv("PGDATABASE"), user = Sys.getenv("PGUSER"),
  password = Sys.getenv("READONLY_DB_PASSWORD"),
  sslmode = Sys.getenv("PGSSLMODE"))
```

## Datenbestand in einem Blick

| Tabelle | Zeilen | Rolle |
|---|---|---|
| `fish_catches` | 464.654 | ein Fang (Länge, Gewicht, Art, Befischung) |
| `samplings` | 10.497 | eine Befischung (Datum, Methode, Temperatur, O₂, pH, Leitfähigkeit) |
| `river_sites` | 6.260 | eine Untersuchungsstrecke (Fluss, Koordinaten, Breite, Länge) |
| `fish_species` | 125 | Artenkatalog (deutsch, lateinisch, Familie) |

Die übrigen Tabellen (`User`, `Session`, `Uploads`, `FileBlob`, …) gehören
zur Web-App und sind für die Datenauswertung irrelevant.

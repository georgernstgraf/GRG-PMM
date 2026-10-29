# Datenbank `clx` — Schema und Joins

Erhoben am 2026-10-29 mit `./psqlx` (read-only Account `clx_readonly`,
PostgreSQL 16.15). Alle Zahlen sind mit `count(*)` verifiziert, nicht geschätzt.

## ER-Übersicht

```
river_sites (6.260)          samplings (10.497)          fish_catches (464.654)         fish_species (125)
┌────────────────────┐      ┌─────────────────────┐      ┌───────────────────────┐      ┌────────────────────┐
│ id            PK   │◄─────│ "siteId"        FK  │      │ id               PK   │      │ id             PK  │
│ "siteCode"   UNIQUE│      │ id              PK  │◄─────│ "samplingId"    FK   │      │ "speciesName"      │
│ "riverName"        │  1:n │ year                │ 1:n  │ "speciesId"     FK   │─────►│ "germanName"       │
│ "siteName"         │      │ "catchDate"         │      │ "fishId"        text │ n:1  │ "latinName"        │
│ latitude/longitude │      │ "dataProvider"      │      │ "lengthMm"           │      │ family             │
│ "landmarkUp/Down"  │      │ method, assessment  │      │ "totalWeightGr"      │      └────────────────────┘
│ "localityLength"…  │      │ temp, pH, oCont, …  │      │ "pitDec"/"pitHex"    │
└────────────────────┘      └─────────────────────┘      │ recapture            │
                                                          └───────────────────────┘
```

Drei deklarierte Fremdschlüssel, alle `ON UPDATE CASCADE ON DELETE RESTRICT`:

| von | Spalte | nach | Kardinalität |
|---|---|---|---|
| `fish_catches` | `"samplingId"` | `samplings.id` | n:1 (Ø 44,3 Fänge/Befischung, max 4.230) |
| `fish_catches` | `"speciesId"` | `fish_species.id` | n:1 |
| `samplings` | `"siteId"` | `river_sites.id` | n:1 (Ø 1,68 Befischungen/Stelle) |

**Kein** Fremdschlüssel: `fish_catches."fishId"` (text) — sieht wie ein
Individuen-Schlüssel aus (PIT-/Markierungsnummer), zeigt aber nirgendwo hin.
Nicht mit `fish_species.id` (integer) verwechseln.

## Der Standard-Join (verlustfrei)

```sql
SELECT s.year, r."riverName", r."siteName",
       f."speciesName", f."germanName",
       c."lengthMm", c."totalWeightGr"
FROM   fish_catches c
JOIN   samplings  s ON s.id = c."samplingId"
JOIN   river_sites r ON r.id = s."siteId"
JOIN   fish_species f ON f.id = c."speciesId";
```

Liefert exakt **464.654** Zeilen = `count(*)` auf `fish_catches`. Die Kette
`fang → befischung → stelle` bzw. `fang → art` ist also ohne
Zeilenvervielfachung durchgehend INNER-joinbar.

## Nützliche Aggregationen

Arten-Ranking (die Abfrage, die im R-Verlauf als `"fishName"` scheiterte —
die Spalte heißt `fish_species."speciesName"` und liegt in der Nachbartabelle):

```sql
SELECT f."speciesName", f."germanName", count(*) AS n
FROM   fish_catches c JOIN fish_species f ON f.id = c."speciesId"
GROUP  BY 1,2 ORDER BY n DESC;
-- Spitze: Salmo trutta 86.326 · Thymallus thymallus 51.932 · Alburnus alburnus 51.637
```

Top 20 über eine CTE — Zwischenergebnis benennen, im selben Statement
weiterverwenden:

```sql
WITH ranking AS (
  SELECT f."germanName", count(*) AS n
  FROM   fish_catches c JOIN fish_species f ON f.id = c."speciesId"
  GROUP  BY 1
  ORDER  BY n DESC          -- bestimmt mit LIMIT, WELCHE 20 Zeilen kommen
  LIMIT  20
)
SELECT * FROM ranking ORDER BY n DESC;   -- bestimmt nur die Darstellung
```

Drei Dinge, die hier schiefgehen:

- Das innere `ORDER BY` ist **nur zusammen mit `LIMIT`** wirksam — es wählt die
  Zeilen aus. Die Reihenfolge der Ausgabe legt das äußere `ORDER BY` fest; ohne
  das wäre die Reihenfolge nicht garantiert. `ORDER BY n` (ohne `DESC`) liest
  das Ranking von Platz 20 nach Platz 1.
- `count(*)` ohne Alias heißt als Ausgabespalte `count`; `ORDER BY count`
  funktioniert dann zwar, kippt aber bei einer zweiten Aggregatspalte oder einer
  echten Spalte `count` stillschweigend auf etwas anderes. Deshalb `AS n`.
- Platz 6 dieser Liste ist `Cyprinidae` („Karpfenfisch") — ein Sammel-Eintrag
  auf Familienebene, keine Art. Die Tabelle als „häufigste Taxa" beschriften
  oder Sammelzeilen (`speciesName = family`) kennzeichnen.

Fänge pro Jahr und Fluss, inkl. Jahre ohne Fänge:

```sql
SELECT s.year, r."riverName", count(c.id) AS faenge
FROM   samplings s
JOIN   river_sites r ON r.id = s."siteId"
LEFT   JOIN fish_catches c ON c."samplingId" = s.id
GROUP  BY 1,2 ORDER BY 1,2;
```

… liefert 222 Zeilen (27 Jahre × 93 Flüsse, nur tatsächlich beobachtete
Kombinationen).

Arten-Matrix (Art × Jahr) für Breiten-/Längsschnitt-Aufgaben:

```sql
SELECT f."germanName", s.year, count(*) AS n
FROM   fish_catches c
JOIN   samplings s ON s.id = c."samplingId"
JOIN   fish_species f ON f.id = c."speciesId"
WHERE  f.id IN (102, 117, 75, 35)          -- Bachforelle, Äsche, Regenbogenforelle, Groppe
GROUP  BY 1,2 ORDER BY 1,2;
```

Längen-Häufigkeiten (Histogramm-Grundlage für Verteilungen in R):

```sql
SELECT f."germanName",
       width_bucket(c."lengthMm", 0, 800, 16) AS klasse,
       count(*) AS n, round(avg(c."lengthMm")::numeric,1) AS mittel_mm
FROM   fish_catches c JOIN fish_species f ON f.id = c."speciesId"
WHERE  c."lengthMm" IS NOT NULL AND f.id = 102
GROUP  BY 1,2 ORDER BY 2;
```

Umweltvariablen gegen Artvorkommen (die Brücke zur Regression):

```sql
SELECT s.year, r."riverName", s.temp, s."oCont", s."pHValue", s.conductivity,
       count(c.id) AS faenge, count(DISTINCT c."speciesId") AS arten
FROM   samplings s
JOIN   river_sites r ON r.id = s."siteId"
LEFT   JOIN fish_catches c ON c."samplingId" = s.id
GROUP  BY s.id, r."riverName" ORDER BY s.year DESC;
```

## Fallstricke (beim Bau von Aufgaben relevant)

| Beobachtung | Konsequenz |
|---|---|
| `"fishName"` existiert nicht in `fish_catches` | Artname kommt ausschließlich aus `fish_species` → Join nötig |
| 6 von 10.497 Befischungen haben **keinen** Fang | INNER JOIN verliert sie; für „Befischungen pro Jahr" LEFT JOIN |
| 32 von 125 Arten kommen in keinem Fang vor | Arten-Katalog ≠ beobachtete Arten; `LEFT JOIN` ab `fish_species` drehen |
| `assessment`: `'strip'` (4.579), `'Strip'` (1.430), `'strip '` mit Schlussleerzeichen (8), `'Seber-LeCren'`/`'seber-LeCren'` | vor Gruppieren normalisieren (`lower(btrim(...))`), sonst 3 statt 1 Kategorie |
| `assessment = 'NA'` ist **Text**, nicht NULL (2.383 Zeilen) | `IS NULL` filtert nichts; `IN ('NA','')` mitprüfen |
| 9 Zeilen: `samplings.year` ≠ Jahr aus `"catchDate"` | Zeitreihen auf **eine** Quelle festlegen und im Text nennen |
| `recapture` ist durchgehend `false`, obwohl 17 Fänge einen `pitDec` haben | als Wiederfang-Merkmal unbrauchbar |
| 9.715 Fänge ohne `"fishId"`, 10.677 ohne `"lengthMm"` (2,3 %), 142.144 ohne `"totalWeightGr"` (30,6 %) | `avg()`/`n()` immer mit `WHERE … IS NOT NULL` bzw. `count(spalte)` kombinieren, sonst stiller Datenverlust |
| `fish_species` enthält Sammel-Einträge auf Familienebene (z. B. `Cyprinidae` = „Karpfenfisch", 27.974 Fänge) | Artnamen-Auswertung entweder als „Taxon" labeln oder Sammelzeilen explizit ausweisen |
| `river_sites."siteCode"` ist zusammengesetzt (`Fluss__Strecke__lat__lon`) und unique | als Join-Schlüssel unbrauchbar, immer `river_sites.id` verwenden |
| Datenbestand 1998–2024, aber sehr ungleich verteilt (2005: 2 Befischungen, 2015: 1.543) | Jahresvergleiche brauchen die Fallzahl in der Tabelle, nicht nur die Rate |

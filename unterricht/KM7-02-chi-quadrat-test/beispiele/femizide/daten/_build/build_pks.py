#!/usr/bin/env python3
"""PKS-Beilage zu 17838/AB -> daten/pks_morde-frauen_2019-2023_roh.csv

Einmaliges Herkunfts-Werkzeug, kein Unterrichtsmaterial. Die Beilage-PDF wird
NICHT ins Repo gelegt (nur `unterricht/` wird deployt und fremde PDFs haben
dort nichts verloren) — hier wird sie bei Bedarf frisch geladen.

Aufruf:
    python3 daten/_build/build_pks.py
"""

import csv
import io
import re
import subprocess
import sys
import urllib.request
from collections import Counter
from pathlib import Path

PDF_URL = "https://www.parlament.gv.at/dokument/XXVII/AB/17838/imfname_1636158.pdf"
OUT = Path(__file__).resolve().parents[1] / "pks_morde-frauen_2019-2023_roh.csv"

# Abschnittsnamen je Druckblock, in der Reihenfolge der Beilage.
# Bloecke mit zwei Messreihen pro Jahr (Anzahl+geklaert bzw. Taeter+Opfer)
# bekommen zwei Abschnitte, damit jede Zeile genau fuenf Jahreswerte hat.
BLOCK_SECTIONS = {
    0: ["mord_vollendet_opfer", "mord_vollendet_opfer_geklaert"],
    1: ["mord_vollendet_beziehung_taeter", "mord_vollendet_beziehung_opfer"],
    2: ["mord_vollendet_opfer_alter_nation"],
    3: ["mord_vollendet_taeter_geschlecht_alter_nation"],
    4: ["mordversuch_opfer"],
    5: ["mordversuch_taeter_geschlecht_alter_nation"],
    6: ["mordversuch_beziehung_taeter", "mordversuch_beziehung_opfer"],
}

HEADER_RE = re.compile(r"^\s*(?:Zu den Fragen|Zu der Frage|Zur Frage|Fragen)\b")
DATA_RE = re.compile(r"^(?P<label>.*?)\s{2,}(?P<nums>(?:\d+\s+)+\d+)\s*$")


def pdf_text(pdf_bytes: bytes) -> str:
    """pdftotext -layout auf stdin -> stdout (haelt die Einrueckung)."""
    res = subprocess.run(
        ["pdftotext", "-layout", "-", "-"],
        input=pdf_bytes, capture_output=True, check=True,
    )
    return res.stdout.decode("utf-8", errors="replace")


def main() -> None:
    url = sys.argv[1] if len(sys.argv) > 1 else PDF_URL
    if url.startswith("http"):
        with urllib.request.urlopen(url) as fh:
            raw = fh.read()
    else:
        raw = Path(url).read_bytes()
    text = pdf_text(raw)

    rows, block = [], -1
    for line in text.splitlines():
        if HEADER_RE.match(line):
            block += 1
            continue
        if block < 0:
            continue
        m = DATA_RE.match(line)
        if not m:
            continue
        label = m.group("label").rstrip()
        if not label.strip():
            continue
        nums = [int(x) for x in m.group("nums").split()]
        secs = BLOCK_SECTIONS[block]
        if len(nums) not in (5, 10) or len(nums) // 5 != len(secs):
            print(f"uebersprungen (Block {block}, {len(nums)} Werte): {label[:60]!r}",
                  file=sys.stderr)
            continue
        if len(nums) == 5:
            rows.append([secs[0], label] + nums)
        else:
            rows.append([secs[0], label] + nums[0::2])
            rows.append([secs[1], label] + nums[1::2])

    with OUT.open("w", encoding="utf-8", newline="") as fh:
        w = csv.writer(fh, quoting=csv.QUOTE_MINIMAL)
        w.writerow(["abschnitt", "zeile", "jahr_2019", "jahr_2020",
                    "jahr_2021", "jahr_2022", "jahr_2023"])
        w.writerows(rows)

    print(f"{len(rows)} Datenzeilen -> {OUT.name}")
    for sec, n in Counter(r[0] for r in rows).items():
        print(f"  {sec:48s} {n:4d}")


if __name__ == "__main__":
    main()

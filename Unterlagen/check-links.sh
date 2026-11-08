#!/usr/bin/env bash
# Prüft alle externen Links in getrackten HTML-/Markdown-Dateien auf HTTP-Status.
# Nur getrackte Dateien (git ls-files) — lokale Ordner wie .opencode/node_modules
# fliegen damit automatisch raus und erzeugen keine Phantom-Fehler.
#
# Aufruf:
#   Unterlagen/check-links.sh                 # deploytes Set: index.html + unterricht/
#   Unterlagen/check-links.sh --all           # alle getrackten *.html/*.md im Repo
#   Unterlagen/check-links.sh --strict        # WARN (403/429) zählt als Fehler
#   Unterlagen/check-links.sh PFAD...         # nur diese Dateien/Ordner
#
# Bewertung:
#   OK    2xx / 3xx
#   WARN  403 / 429 (Bot-Blocker) und 5xx (Server- oder Rate-Limit-Fehler —
#         Link ist erreichbar, Antwort aber nicht vertrauenswürdig)
#   FAIL  404 / 410 / 000 (DNS, Timeout, Verbindungsabbruch)
#
# Exit: 0 = grün, 1 = mindestens ein FAIL (bzw. WARN bei --strict)

set -uo pipefail
cd "$(dirname "$0")/.."

scope_all=0
strict=0
paths=()

for arg in "$@"; do
  case "$arg" in
    --all)    scope_all=1 ;;
    --strict) strict=1 ;;
    -h|--help) sed -n '2,20p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
    *) paths+=("$arg") ;;
  esac
done

# ---------------------------------------------------------------- Dateiliste
if [ ${#paths[@]} -gt 0 ]; then
  mapfile -t files < <(git ls-files -- "${paths[@]}" | grep -E '\.(html|md)$')
elif [ "$scope_all" -eq 1 ]; then
  mapfile -t files < <(git ls-files -- '*.html' '*.md')
else
  mapfile -t files < <(git ls-files | grep -E '^(index\.html$|unterricht/)' | grep -E '\.(html|md)$')
fi

if [ ${#files[@]} -eq 0 ]; then
  echo "Keine Dateien im Prüfbereich gefunden." >&2
  exit 2
fi

echo "Prüfe ${#files[@]} Datei(en) …"

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

# ------------------------------------------------- Fundstellen samt Datei:Zeile
# Nur echte Link-Ziele prüfen (href="…" in HTML, ](…) in Markdown) — URLs in
# Prosa oder Code-Spans sind keine Links und erzeugen nur Falschmeldungen.
{
  grep -HnoP 'href="\Khttps?://[^"]+'       "${files[@]}" 2>/dev/null
  grep -HnoP '\]\(\Khttps?://[^)[:space:]]+' "${files[@]}" 2>/dev/null
} \
  | sed -E 's/^([^:]+):([0-9]+):(.*)$/\1\t\2\t\3/' \
  | sed -E 's/[`"'"'"'.,;]+$//' \
  | grep -vE '\$\{|localhost|127\.0\.0\.1|example\.(com|org|net)' \
  | grep -vE '…|\{|\}' \
  | sort -u \
  > "$tmp/hits" || true

if [ ! -s "$tmp/hits" ]; then
  echo "Keine externen Links gefunden."
  exit 0
fi

cut -f3 "$tmp/hits" | sort -u > "$tmp/urls"
total=$(wc -l < "$tmp/urls")

# ------------------------------------------------------------------ HTTP-Status
check_url() {
  # Verbindungsresets und 5xx sind oft transient (Rate-Limit, kurzer Aussetzer):
  # bis zu drei Versuche, nur dann als FAIL melden.
  local url=$1 code attempt
  for attempt in 1 2 3; do
    code=$(curl -sSL -o /dev/null -m 20 \
                -A 'Mozilla/5.0 (X11; Linux x86_64; rv:128.0) Gecko/20100101 Firefox/128.0' \
                -w '%{http_code}' "$url" 2>/dev/null)
    [ -z "$code" ] && code=000
    case "$code" in
      000|5*) sleep 2 ;;
      *) break ;;
    esac
  done
  printf '%s\t%s\n' "$code" "$url"
}

if command -v xargs >/dev/null; then
  export -f check_url
  xargs -a "$tmp/urls" -d '\n' -P 12 -I{} bash -c 'check_url "$@"' _ {} > "$tmp/results"
else
  while IFS= read -r u; do check_url "$u"; done < "$tmp/urls" > "$tmp/results"
fi

# ------------------------------------------------------------------- Auswertung
ok=0; warn=0; fail=0

report() {   # report <label> <url>
  local label=$1 url=$2 i=0
  echo ""
  echo "$label $url"
  while IFS=$'\t' read -r f l _; do
    echo "      $f:$l"
    i=$((i + 1))
    [ "$i" -ge 3 ] && break
  done < <(awk -F'\t' -v u="$url" '$3 == u' "$tmp/hits")
}

while IFS=$'\t' read -r code url; do
  case "$code" in
    2*|3*) ok=$((ok + 1)) ;;
    403|429) warn=$((warn + 1)); report "WARN [$code]" "$url" ;;
    5*) warn=$((warn + 1)); report "WARN [$code, Server/Rate-Limit]" "$url" ;;
    *) fail=$((fail + 1)); report "FAIL [$code]" "$url" ;;
  esac
done < "$tmp/results"

echo ""
echo "Ergebnis: $total URL(s) — OK $ok · WARN $warn · FAIL $fail"

if [ "$fail" -gt 0 ]; then exit 1; fi
if [ "$strict" -eq 1 ] && [ "$warn" -gt 0 ]; then exit 1; fi
exit 0

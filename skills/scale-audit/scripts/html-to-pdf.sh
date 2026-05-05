#!/usr/bin/env bash
#
# html-to-pdf.sh
#
# Converteert een HTML-bestand naar een PDF via headless Chrome.
# Probeert in volgorde: Google Chrome, Chromium, wkhtmltopdf.
# Als geen van deze beschikbaar is, geeft een nette foutmelding.
#
# Gebruik:
#   ./html-to-pdf.sh <input.html> <output.pdf>
#
# De HTML moet zelf @page-regels hebben voor papierformaat (bv. landscape).
# Dit script geeft alleen de Chrome/Chromium-flags die headless conversie
# mogelijk maken zonder Chrome-eigen header/footer.
#
# Voorbeeld voor een SCALE Audit:
#   ./html-to-pdf.sh \
#     "/path/to/.scale-audit-pdf-source.html" \
#     "/path/to/2026-05-05 - SCALE Audit.pdf"

set -e

INPUT="${1:?Geef het input HTML-pad als eerste argument}"
OUTPUT="${2:?Geef het output PDF-pad als tweede argument}"

if [ ! -f "$INPUT" ]; then
  echo "Fout: input HTML niet gevonden op '$INPUT'" >&2
  exit 1
fi

# Maak file:// URL met juiste percent-encoding (spaties etc.)
INPUT_URL=$(python3 -c "import urllib.parse,sys; print('file://' + urllib.parse.quote(sys.argv[1]))" "$INPUT" 2>/dev/null) \
  || INPUT_URL="file://$INPUT"

CHROME_MAC="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
CHROMIUM_MAC="/Applications/Chromium.app/Contents/MacOS/Chromium"

CONVERTER=""
if [ -f "$CHROME_MAC" ]; then
  CONVERTER="chrome"
  CHROME_BIN="$CHROME_MAC"
elif [ -f "$CHROMIUM_MAC" ]; then
  CONVERTER="chrome"
  CHROME_BIN="$CHROMIUM_MAC"
elif command -v google-chrome >/dev/null 2>&1; then
  CONVERTER="chrome"
  CHROME_BIN="$(command -v google-chrome)"
elif command -v chromium >/dev/null 2>&1; then
  CONVERTER="chrome"
  CHROME_BIN="$(command -v chromium)"
elif command -v chromium-browser >/dev/null 2>&1; then
  CONVERTER="chrome"
  CHROME_BIN="$(command -v chromium-browser)"
elif command -v wkhtmltopdf >/dev/null 2>&1; then
  CONVERTER="wkhtmltopdf"
fi

if [ -z "$CONVERTER" ]; then
  cat >&2 <<EOF
Fout: geen PDF-converter gevonden.

Installeer een van de volgende tools:
  - Google Chrome (https://www.google.com/chrome/)
  - Chromium (brew install --cask chromium)
  - wkhtmltopdf (brew install wkhtmltopdf)

De skill heeft Chrome of Chromium nodig om HTML naar PDF te converteren.
EOF
  exit 1
fi

case "$CONVERTER" in
  chrome)
    "$CHROME_BIN" \
      --headless=new \
      --disable-gpu \
      --no-sandbox \
      --no-pdf-header-footer \
      --print-to-pdf="$OUTPUT" \
      "$INPUT_URL" 2>&1 | grep -v "ERROR:google_apis" | grep -v "Trying to load the allocator" || true
    ;;
  wkhtmltopdf)
    wkhtmltopdf \
      --orientation Landscape \
      --page-size A4 \
      --margin-top 11mm \
      --margin-bottom 11mm \
      --margin-left 13mm \
      --margin-right 13mm \
      --print-media-type \
      "$INPUT" "$OUTPUT"
    ;;
esac

if [ ! -f "$OUTPUT" ]; then
  echo "Fout: PDF-generatie is mislukt, '$OUTPUT' bestaat niet." >&2
  exit 1
fi

echo "PDF gegenereerd: $OUTPUT ($(du -h "$OUTPUT" | cut -f1))"

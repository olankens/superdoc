#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"
SRC="$DIR/../source"
RME="$DIR/../README.md"
MAX=6

# Create table
out="<!-- START_TABLE -->\n<table>\n" && i=0
for f in "$SRC"/*/assets/icon.svg; do
  [ -f "$f" ] || continue
  folder="$(basename "$(dirname "$(dirname "$f")")")"
  [ $((i % MAX)) -eq 0 ] && out+="  <tbody><tr>\n"
  out+="    <td align=\"center\" width=\"99999\"><a href=\"source/$folder\"><img src=\"source/$folder/assets/icon.svg\" align=\"center\" width=\"56\"></a></td>\n"
  i=$((i + 1))
  [ $((i % MAX)) -eq 0 ] && out+="  </tr></tbody>\n"
done
[ $((i % MAX)) -ne 0 ] && out+="  </tr></tbody>\n"
out+="</table>\n<!-- CEASE_TABLE -->"

# Inject table
awk -v t="$out" '
  /<!-- START_TABLE -->/ { printf "%s\n", t; skip=1; next }
  /<!-- CEASE_TABLE -->/ { skip=0; next }
  !skip
' "$RME" > "$RME.tmp" && mv "$RME.tmp" "$RME"
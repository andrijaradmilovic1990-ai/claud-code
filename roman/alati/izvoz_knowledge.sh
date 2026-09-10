#!/bin/bash
# Rasparcava roman/SAHRANA_BEZ_TELA_CELA.md na zasebna poglavlja u knowledge/knjiga/,
# imenovana redom kojim se citaju (01..17), za ucitavanje u Claude Projects.
# CELA se pre toga sastavlja iz roman/poglavlja/ alatom build_cela.sh — dakle
# knowledge/knjiga/ je uvek isti tekst kao knjiga, samo drugacije imenovan.
set -eu
cd "$(dirname "$0")/../.."
SRC=roman/SAHRANA_BEZ_TELA_CELA.md
OUT=knowledge/knjiga
[ -f "$SRC" ] || { echo "nema $SRC — pusti prvo build_cela.sh" >&2; exit 1; }

declare -A ORD=( [I]=1 [II]=2 [III]=3 [IV]=4 [V]=5 [VI]=6 [VII]=7 [VIII]=8 [IX]=9 [X]=10 \
                 [XI]=11 [XII]=12 [XIII]=13 [XIV]=14 [XV]=15 [XVI]=16 [XVII]=17 )
slug(){ printf '%s' "$1" \
  | sed 's/č/c/g; s/ć/c/g; s/ž/z/g; s/š/s/g; s/đ/dj/g; s/Č/C/g; s/Ć/C/g; s/Ž/Z/g; s/Š/S/g; s/Đ/Dj/g' \
  | tr 'a-z' 'A-Z' | tr -c 'A-Z0-9' '_' | sed 's/_\+/_/g; s/^_//; s/_$//'; }

rm -f "$OUT"/*.md
mkdir -p "$OUT"
cur=""
while IFS= read -r line; do
  case "$line" in
    '# '[IVX]*' — '*)
      rn=${line#\# }; rn=${rn%% *}
      name=${line#*— }
      n=$(printf '%02d' "${ORD[$rn]}")
      cur="$OUT/${n}_$(slug "$name").md"
      : > "$cur"
      printf '%s\n' "$line" >> "$cur"
      continue ;;
  esac
  [ -n "$cur" ] && printf '%s\n' "$line" >> "$cur"
done < "$SRC"

# skini separator "---" i prazne redove koje dodaje sklapanje; poglavlje se ne
# zavrsava prelomom reda, kao ni izvorni fajl u roman/poglavlja/
for f in "$OUT"/*.md; do
  perl -0pi -e 's/\n+---\n+\z//; s/\n+\z//' "$f"
done

W=$(LC_ALL=C.UTF-8 wc -w "$OUT"/*.md | tail -1 | awk '{print $1}')
echo "$OUT: $(ls "$OUT"/*.md | wc -l) poglavlja, $W reči"

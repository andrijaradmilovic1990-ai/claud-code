#!/bin/bash
# Sastavlja roman/SAHRANA_BEZ_TELA_CELA.md iz roman/poglavlja/,
# redom koji pise u naslovu unutar fajla (# XI — Fabrika), ne po imenu fajla.
set -eu
cd "$(dirname "$0")/.."
OUT=SAHRANA_BEZ_TELA_CELA.md
declare -A ORD=( [I]=1 [II]=2 [III]=3 [IV]=4 [V]=5 [VI]=6 [VII]=7 [VIII]=8 [IX]=9 [X]=10 \
                 [XI]=11 [XII]=12 [XIII]=13 [XIV]=14 [XV]=15 [XVI]=16 [XVII]=17 )
list=""
for f in poglavlja/*.md; do
  t=$(head -1 "$f")
  rn=$(printf '%s' "$t" | sed -n 's/^# \([IVX]\+\) .*/\1/p')
  [ -n "$rn" ] || { echo "NEMA rimskog broja u naslovu: $f" >&2; exit 1; }
  list="$list${ORD[$rn]}\t$f\n"
done
N=$(printf "$list" | wc -l)
W=$(LC_ALL=C.UTF-8 wc -w poglavlja/*.md | tail -1 | awk '{print $1}')
{
  echo "# SAHRANA BEZ TELA"
  echo
  WD=$(printf '%s' "$W" | sed ':a;s/\B[0-9]\{3\}\>/.&/;ta')
  printf '*%s poglavlja, redom kojim se čitaju. %s reči.*\n' "$N" "$WD"
  echo
  printf '*Sastavljeno alatom iz `roman/poglavlja/`. Ne prepravlja se rukom — pusti `build_cela.sh`.*\n'
  printf "$list" | sort -n | cut -f2 | while read -r f; do
    echo
    echo "---"
    echo
    cat "$f"
    echo
  done
} > "$OUT"
echo "$OUT: $N poglavlja, $W reči"

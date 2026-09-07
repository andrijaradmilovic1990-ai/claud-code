#!/bin/bash
# Provera repoa — sve sto se u istoriji rada proveravalo rukom, na jednom mestu.
# Pusti pre svakog commita koji dira poglavlja ili brojeve.
cd "$(dirname "$0")/.."
FAIL=0
ok(){ printf '  ✅ %s\n' "$1"; }
no(){ printf '  ❌ %s\n' "$1"; FAIL=1; }

echo "== ZAPECACENA IMENA =="
chk(){ # ime  dozvoljeni_fajl_regex  ocekivano
  n=$(grep -ro "$1" poglavlja/ | wc -l)
  van=$(grep -rlo "$1" poglavlja/ | grep -cv "$2")
  [ "$van" -eq 0 ] && ok "$1: $n instanci, sve u dozvoljenom poglavlju" \
                   || no "$1: pada van dozvoljenog poglavlja"
}
chk "Jovan"    "KUKAVICA"
chk "David"    "KUKAVICA"
chk "Katarina" "BELI_GRAD\|NOVO_KATARINA"
[ "$(grep -ric beograd poglavlja/ | grep -v ':0' | wc -l)" -eq 0 ] \
  && ok "Beograd: nigde" || no "Beograd se pojavljuje u tekstu"
[ "$(grep -roi heroin poglavlja/ | wc -l)" -eq 1 ] \
  && ok "heroin: tacno jednom" || no "heroin nije tacno jednom"
[ "$(grep -ro čudovište poglavlja/ | wc -l)" -eq 1 ] \
  && ok "cudoviste: tacno jednom" || no "cudoviste nije tacno jednom"

echo "== FAJLOVI POGLAVLJA =="
NL=0
for f in poglavlja/*.md; do
  [ -n "$(tail -c1 "$f")" ] || { no "$f zavrsava prelomom reda"; NL=1; }
done
[ "$NL" -eq 0 ] && ok "nijedan fajl ne zavrsava prelomom reda"
n=$(ls poglavlja/*.md | wc -l)
rn=$(for f in poglavlja/*.md; do head -1 "$f" | sed -n 's/^# \([IVX]\+\) .*/\1/p'; done | sort -u | wc -l)
[ "$n" -eq "$rn" ] && ok "$n poglavlja, $rn razlicitih rimskih brojeva" \
                   || no "broj poglavlja ($n) != broj rimskih brojeva ($rn) — duplikat ili rupa"

echo "== BROJEVI RECI =="
W=$(LC_ALL=C.UTF-8 wc -w poglavlja/*.md | tail -1 | awk '{print $1}')
WD=$(printf '%s' "$W" | sed ':a;s/\B[0-9]\{3\}\>/.&/;ta')
echo "  zbir: $WD reci"
for f in NASTAVAK.md README.md ../CLAUDE.md; do
  [ -f "$f" ] || continue
  grep -q "$WD" "$f" && ok "$f nosi tacan zbir" || no "$f ne nosi zbir $WD"
done

echo "== BROJEVI PO POGLAVLJU (protiv tabele u NASTAVAK.md) =="
BAD=0
while IFS='|' read -r _ _ _ file words _; do
  f=$(printf '%s' "$file" | tr -d ' `')
  w=$(printf '%s' "$words" | tr -cd '0-9')
  [ -z "$f" ] || [ -z "$w" ] && continue
  [ -f "poglavlja/$f" ] || continue
  real=$(LC_ALL=C.UTF-8 wc -w < "poglavlja/$f")
  if [ "$real" -ne "$w" ]; then no "$f: tabela kaze $w, izmereno $real"; BAD=1; fi
done < <(grep -E '^\| \*{0,2}[IVX]+\*{0,2} \|' NASTAVAK.md)
[ "$BAD" -eq 0 ] && ok "svih 17 poglavlja nosi tacan broj u tabeli"

echo "== SASTAVLJENA KNJIGA =="
cp SAHRANA_BEZ_TELA_CELA.md /tmp/_cela_pre.md 2>/dev/null
bash alati/build_cela.sh >/dev/null
cmp -s /tmp/_cela_pre.md SAHRANA_BEZ_TELA_CELA.md \
  && ok "SAHRANA_BEZ_TELA_CELA.md je azurna" \
  || no "SAHRANA_BEZ_TELA_CELA.md je bila zastarela — regenerisana, commituj je"
rm -f /tmp/_cela_pre.md

echo
[ "$FAIL" -eq 0 ] && echo "SVE PROLAZI." || echo "IMA NALAZA — vidi ❌ iznad."
exit $FAIL

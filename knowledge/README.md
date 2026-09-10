# SAHRANA BEZ TELA — knowledge

**Ovaj folder je spreman za učitavanje u Claude Projects.** Ništa se u njemu ne piše
rukom — sve je izvedeno iz rukopisa i iz repoa.

## Šta je unutra

| fajl | šta pokriva |
|---|---|
| **`PRAVILA_RADA.md`** | kako se radi — pravila, cilj, šta je skupo, alati, git |
| **`STIL.md`** | kako se piše — ton, emotivna dinamika, šesnaest postupaka, stil-filter, ček-lista |
| **`LIKOVI_I_SVET.md`** | o čemu se piše — osa knjige, ko je ko, hronologija, struktura, zaštićena mesta |
| **`knjiga/01..17_*.md`** | **sedamnaest poglavlja**, svako zasebno, imenovano **redom kojim se čita** |

**Zbir: 32.295 reči u sedamnaest poglavlja.**

## Odakle dolaze poglavlja

`knowledge/knjiga/` se **ne prepravlja rukom.** Sastavlja se alatom, iz iste sklopljene
knjige:

```
bash roman/alati/provera.sh          # provera pre svega
bash roman/alati/build_cela.sh       # roman/poglavlja/ -> roman/SAHRANA_BEZ_TELA_CELA.md
bash roman/alati/izvoz_knowledge.sh  # -> knowledge/knjiga/01..17
```

**Svih sedamnaest fajlova je provereno bajt u bajt protiv `roman/poglavlja/`** — isti
tekst, samo imenovan redom čitanja umesto redom nastanka.

## Odnos prema repou

Tri dokumenta su **sažeta i pročišćena verzija** onoga što stoji u `roman/dokumenti/`.
Nose **stanje koje danas važi** i uz svaku zabranu **jednu rečenicu zašto je pala** —
bez datuma, bez istorije rada i bez prevodnih tabela između starih numeracija.

**Puni zapis, s datumima i istorijom svake odluke, ostaje u repou:**
`REGISTAR_ODLUKA.md` *(zašto)* · `NASTAVAK.md` *(stanje)* ·
`ODGOVORI_AUTORA_03_09_2026.md` *(izvor — autorovo znanje o svojim ljudima)*.

**Kad se ovi dokumenti i tekst razilaze — važi tekst** *(Pravilo E)*.

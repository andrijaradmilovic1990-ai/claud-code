# NASTAVAK — gde smo stali

> Poslednje ažuriranje: 21.08.2026.
> Ovaj fajl je handoff. Otvara se prvi, pre svega ostalog.

---

## Stanje revizije

| # | Poglavlje | Finalni prolaz | Fajl |
|---|-----------|----------------|------|
| I | Susret | **zatvoreno** | aktuelan |
| II | Pukotina | **zatvoreno** | aktuelan |
| III | Krv | **zatvoreno** | aktuelan |
| IV | Pariz | **zatvoreno** | **dve verzije — vidi tačku 1** |
| V | Nestanak | **zatvoreno 21.08.** | aktuelan, dvanaest izmena |
| VI | Prazna stolica | na redu | proveren (3 od 3 izmene iz dnevnika) |
| VII | Beli grad | čeka | **NEPROVEREN** |
| VIII | Ćebence | čeka | aktuelan |

**V — zatvoreno 21.08.** Devet izmena od 05.08. preuzeto s grane PR #1, pa tri nove,
sve tri odobrene pojedinačno: red 53 („jednom" u susednom pasusu), red 99 (dva „tri"
u istom pasusu), red 141 (rez repa — lomi formulu i skida dupli broj „četiri
godine"). 1399 → 1312 reči; „kao" 13 → 11, veznik uzroka 10 → 6. Pun zapis u
dnevniku. Grana `claude/sahrana-poglavlje-v-wklwf4`, draft PR **#3**.

**Sporno u V, upisano a nerešeno:** kvota 2.4 vodi se kao popunjena preko
Andrijaninog „Dva broja, dva traga." Ona jeste pritisak i ona ne skreće — ali
pritiska postupak koji je već poznat, ne ono što se u V zaista krije (okidač
bekstva, red 61, zapečaćen po H1). Njega niko ne dodirne. Odluka autora.

---

## ŠTA VISI

### 1. Tri grane rade isti posao — mora se rešiti pre VI

| PR | grana | šta nosi |
|----|-------|----------|
| **#1** | `claude/nastavimo-hx5mu5` | **Deo 0 odgovoren u celosti** i upisan · I, II, III zatvoreno na spratu knjige · IV zatvoreno (Katarinina lična karta) · V devet izmena |
| **#2** | `claude/sahrana-bez-tela-poglavlje-vi-3grvzk` | IV zatvoreno **drugačije** (bistro scena, utrnula noga, tri reza) · V dva reza |
| **#3** | `claude/sahrana-poglavlje-v-wklwf4` | **V zatvoreno** — devet iz #1 plus tri nove |

**IV ima dve verzije koje se ne poklapaju ni u jednoj rečenici.** Nijedna nije
pogrešna — obe su rađene po pravilima, nezavisno, jer druga sesija nije znala za
prvu. **Autor mora da izabere.** Do tada se VI ne otvara.

**Deo 0 na ovoj grani i dalje stoji kao „(nije upisano)".** Odgovori postoje samo u
PR #1, gde su 05.08. odgovoreni na osnovu čitanja celog rukopisa i gde 0.4 nosi
zapis „ispravka autora". Ukratko: **0.1** Katarina traži zajednički život, meri se
martom · **0.2** Katarinino neznanje · **0.3** Katarina, ne iz sumnje nego iz želje
da žive kao ljudi · **0.4** Katarina adresu, Andrijana da David bude srećan, Jovana
da bude izabrana, Nataša nekog kome je potrebna · **0.5** za Katarinu, od II ·
**0.6** tabela pitanja po poglavlju. Prenošenje u dokument čeka odluku o granama.

### 2. Draft za I — čeka „da" ili „ne"

Iz starog handoffa, nikad odlučeno, i **sad je verovatno bespredmetan.** Nosio je
kandidata za 0.1 („Jovana se približava preko Andrijane") koji je u PR #1 odbačen u
korist drugog odgovora. Ako odgovor iz PR #1 stoji, draft pada s njim.

### 3. Prolaz kroz I, II, III samo na spratu knjige

U PR #1 je urađen i upisan kao **zatvoreno zauvek, odlukom autora.** Na ovoj grani
ga nema. Ide zajedno s odlukom iz tačke 1.

### 4. Dva sukoba u dokumentima — za VI, ne pre

**(a) Registar VI.** Mapa u dnevniku kaže „VI je sadašnjost, žive zajedno".
`SVET_I_LIKOVI_1.md` to izričito ispravlja: **VI je PROŠLOST, ne žive zajedno**, VI
i VII su uzastopni dani, ~2 godine pre I. SVET je noviji i tekst ga podržava
(„Sinoć." u VI, „Preksinoć." u VII). Ispraviti mapu kad se VI otvori.

**(b) „Dvanaest godina" u VI i VII — računica ne štima.** Nestanak je pre 12 godina,
nesreća pre ~2 godine. VI se dešava dan posle nesreće, dakle **deset** godina posle
nestanka — a tekst pet puta kaže „dvanaest" (redovi 17, 63, 73, 131, 137). VII isto
na redu 103. **Hronologija je zamrznuta, pa ovo mora da odluči autor:** popušta broj
u tekstu, ili „~2 godine"?

### 5. VII — fajl neproveren

Jedini koji nije upoređen s dnevnikom. Uraditi pre otvaranja VII.

---

## Redosled posla

1. **Odluka o granama** (tačka 1) — koja verzija IV, i prenosi li se Deo 0.
2. VI — ulazni list pa sva tri sprata. Prvo rešiti sukobe iz tačke 4.
3. VII (proveriti fajl prvo), pa VIII.

---

## Prompt za novi čet u Claude projektu

```
Nastavljamo reviziju romana "Sahrana bez tela".

Pročitaj NASTAVAK.md — tamo je sve. Ne objašnjavaj mi ispočetka.

Gde smo: I, II, III, IV i V su zatvoreni u finalnom prolazu. Sledeće je VI
(Prazna stolica) — ali PRE toga moram da odlučim o granama, tačka 1 u
NASTAVAK.md: IV ima dve verzije koje se ne poklapaju, a Deo 0 je odgovoren
samo na jednoj grani. Pokaži mi obe verzije IV i pusti me da biram.

Za VI prvo reši dva sukoba iz tačke 4 (registar VI, i "dvanaest godina"
koje ne štima).

Poštuj Pravilo K — mehanika ide bez pitanja i prijavljuje se posle, a svaka
rečenica napisana u moje ime čeka izričito "da", jedno po jedno. Pravilo L —
zatvoreno se ne otvara. Pravilo M — uz svaki nalaz reci sprat. Pravilo G —
ako se dvoumiš, ne diraj.

I piši kratko. Kratke rečenice, u crtama. Ne šalji mi knjigu na čitanje.
```

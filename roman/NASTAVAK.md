# NASTAVAK — gde smo stali

> Poslednje ažuriranje: 21.08.2026.
> Ovaj fajl je handoff. Otvara se prvi, pre svega ostalog.

---

## Stanje revizije

**I, II, III, IV i V su ZAKLJUČANI (21.08.).** Sav rad sa tri odvojene grane
objedinjen je ovde. Sledeće je VI.

| # | Poglavlje | Stanje | reči | „kao" | uzrok |
|---|-----------|--------|------|-------|-------|
| I | Susret | **zaključano** | 797 | 6 | 1 |
| II | Pukotina | **zaključano** | 1568 | 11 | 4 |
| III | Krv | **zaključano** | 1125 | 4 | 3 |
| IV | Pariz | **zaključano** | 1696 | 10 | 7 |
| V | Nestanak | **zaključano** | 1312 | 11 | 6 |
| VI | Prazna stolica | **na redu** | — | — | — |
| VII | Beli grad | čeka · **fajl neproveren** | — | — | — |
| VIII | Ćebence | čeka | — | — | — |

Nijedna reč sa spiska iz Dela 1 nije preko praga ni u jednom od pet.

**Odluka o IV:** izabrana verzija sa grane PR #1, jer jedina izvršava raniju odluku
da se sat prenosi u IV („Prestala je da priča. Stajala je s onom šoljom, čekala, i
nije sela."). Verzija sa PR #2 nosila je bistro scenu, utrnulu nogu i tri reza —
**stoji na grani `claude/sahrana-bez-tela-poglavlje-vi-3grvzk` ako je autor hoće
nazad.** Hibrid nije pravljen: spojene bi bile treća verzija koju autor nije video.

---

## Šta VI, VII i VIII nasleđuju

Puno objašnjenje u `DUGOVI_KNJIGE.md`. Ukratko:

| dug | gde se plaća |
|-----|--------------|
| **sat** (mart) | VIII — jedina preostala sadašnjost |
| **dodir spolja** | VII ili VIII — mora skrenuti David, a ona ostati |
| **Katarina kao osoba** | VII — jedini prazan razmak između V i VIII |
| **figura** (isti potez) | VI — model je III |
| **strah umesto radoznalosti** | VI, VII, VIII |

**VIII nosi najviše:** sat, dodir spolja, Katarinu i kraj knjige odjednom.

---

## ŠTA VISI

### 1. Verzija IV — zatvoreno izborom, otvoreno ako autor hoće drugo

Vidi odluku gore. Grane PR #1 i PR #2 ostaju kao arhiva.

### 2. VII — fajl neproveren

Jedini koji nije upoređen s dnevnikom. Uraditi pre otvaranja VII.

### 3. Kvota 2.4 u V — sporno, upisano a nerešeno

Vodi se kao popunjena preko Andrijaninog „Dva broja, dva traga." Ona jeste pritisak
i ona ne skreće — ali pritiska postupak koji je već poznat, ne ono što se u V zaista
krije (okidač bekstva, red 61, zapečaćen po H1). Odluka autora.

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

### 5. Novo — `DUGOVI_KNJIGE.md`

Napravljen 21.08. posle čitanja I–V u nizu. Sprat iznad Dela 2: Deo 2 meri
poglavlje protiv samog sebe, ovo meri **šta poglavlje duguje knjizi i šta se posle
njega više ne može uraditi.** Pet dugova (sat · dodir spolja · Katarina · figura ·
strah umesto radoznalosti), tabela ko šta duguje, i registar propuštenog.

**Otvara se pre svakog poglavlja, uz ulazni list.** Čeka odobrenje autora.

---

## Redosled posla

1. **VI — Prazna stolica.** Prvo rešiti oba sukoba iz tačke 4. Ulazni list po
   Pravilu H, sad sa sedmom stavkom (H7 — dug knjige). VI duguje **figuru**.
2. **VII** — proveriti fajl, pa otvoriti. VII duguje **Katarinu** i **dodir spolja**.
3. **VIII** — nosi najviše: sat, dodir spolja, Katarinu i kraj knjige.

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

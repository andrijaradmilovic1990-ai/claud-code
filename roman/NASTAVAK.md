# NASTAVAK — gde smo stali

> Poslednje ažuriranje: 18.08.2026.
> Ovaj fajl je handoff. Otvara se prvi, pre svega ostalog.

---

## Stanje revizije

Finalni prolaz (tri sprata: knjiga / poglavlje / rečenica) zatvorio je **četiri
poglavlja**. Sledeće je **V — Nestanak**.

| # | Poglavlje | Finalni prolaz | Fajl proveren |
|---|-----------|----------------|----------------|
| I | Susret | **zatvoreno** | da — 18 od 18 upisanih izmena nađeno |
| II | Pukotina | **zatvoreno** | da — 16 od 16 |
| III | Krv | **zatvoreno** | da — 17 od 17, „kao" 4 i „jer" 3 poklapaju se s dnevnikom |
| IV | Pariz | **zatvoreno 18.08.** | da |
| V | Nestanak | **na redu** | da — aktuelan, prošireno otvaranje unutra |
| VI | Prazna stolica | čeka | da — 3 od 3 izmene iz dnevnika |
| VII | Beli grad | čeka | **NEPROVERENO** |
| VIII | Ćebence | čeka | aktuelan, provereno ranije |

**Slučaj sa V od 04.08. (fajl zastareo za pet izmena) nije se ponovio nigde.**
Provera je rađena u oba smera — i da li je ono što treba unutra, i da li je ono
što je izbačeno stvarno izbačeno.

---

## Šta je urađeno u sesiji 18.08.

**Provera aktuelnosti svih fajlova** (prvi zadatak iz starog handoffa) — završena,
rezultat u tabeli gore. VII ostaje jedini neproveren.

**Dijagnoza zašto IV i V nisu bili gotovi.** Dnevnik je za njih imao zapis starog
prolaza kroz deset tačaka i dopune iz prolaza kroz celinu, ali ne i finalni
prolaz. Brojka je to potvrdila: uzročni veznik u IV je bio 5,6 na hiljadu reči, u
V 7,2 — gušće nego što je II imao **pre** finalnog prolaza (6,4 → 2,5).

**V — mehanika uneta** (Pravilo K, bez pojedinačnog odobrenja):
- red 81: pao rep „kao i sve ostalo od tog grada" (dvostruko poređenje)
- red 111: pao rep „i baš zato boli" (imenovana emocija posle slike)

**IV — zatvoreno, sedam izmena.** Pun zapis u dnevniku. Ukratko: dva mesta za
kvotu 2.2 (bistro gde se sve tri smeju Davidu, i utrnula noga na ivičnjaku),
dopuna po B5, tri reza potpisa i jedan rez ponovljenog poteza. 1799 → 1928 reči.

---

## ŠTA VISI — po hitnosti

### 1. Deo 0 — i dalje neodgovoren u dokumentu

`FINALNI_PROLAZ_PRAVILA.md` na tri mesta zabranjuje otvaranje IV pre nego što se
odgovori Deo 0. **IV je ipak otvoren i zatvoren, po izričitoj odluci autora.**
Zapisano ovde da se zna da je pravilo svesno preskočeno, ne previđeno.

U samom dokumentu svih šest odgovora i dalje stoji kao „(nije upisano)".
Prethodni handoff je tvrdio da je 0.2 odgovoreno a 0.1 ima kandidata — ti
odgovori nikad nisu preneti u dokument.

| | Pitanje | Status u dokumentu |
|---|---------|--------------------|
| **0.1** | Šta se u sadašnjosti pogoršava bez obzira šta David radi | nije upisano · kandidat: *Jovana se približava preko Andrijane, a David nema potez kojim to zaustavlja* |
| **0.2** | Šta ima na strani jedan a nema na zadnjoj | nije upisano · kandidat: *Katarinino neznanje* (III 91) |
| **0.3** | Ko lovi ono što se krije | otvoreno |
| **0.4** | Šta svaka žena hoće za sebe, mimo Davida | otvoreno |
| **0.5** | Za koga se čitalac boji, i od kad | otvoreno · kandidat: *za Katarinu, od trenutka kad shvati da postoji nešto što ona ne zna* |
| **0.6** | Koje pitanje nosi svako poglavlje na kraju | otvoreno |

**Postoji otvoren draft PR #1** — „Šest pitanja o knjizi odgovorena; čišćenje
dokumenata; provera VI i VII", na grani `claude/nastavimo-hx5mu5`. Po naslovu tu
leže ti odgovori. **Pogledati ga pre nego što se Deo 0 radi iznova.**

### 2. Draft za I — čeka „da" ili „ne"

Iz starog handoffa, nikad odlučeno. Posle reda 45:

> Ustao sam i pogledao kroz izlog na koju je stranu otišao. Nije bilo razloga. Vratio sam se i seo.
>
> **Telefon je zavibrirao na stolu. Andrijana.**
> ***Pitala je za tebe.***
> **Okrenuo sam ga ekranom nadole.**
>
> Zapalio sam cigaretu.

Nosi 0.1 — prvi od četiri otkucaja (I → IV → V → VIII). VIII to već ima
(„Pita za tebe nekad."), ali kao jedini put pada kao tuga umesto kao udarac.

### 3. Prolaz kroz I, II, III samo na spratu knjige

`FINALNI_PROLAZ_PRAVILA` ga zakazuje: kvote 2.3, 2.4, 2.5 i pitanje iz 0.6. Sme
da dira **isključivo** raspored informacije i dodatke od dva do tri reda.
Nijedna rečenica se ne prepisuje zbog stila. Blokiran dok Deo 0 ne dobije
odgovore.

### 4. Dva sukoba u dokumentima — za VI, ne pre

**(a) Registar VI.** Mapa u dnevniku (red ~120) kaže „VI je sadašnjost, David i
Katarina žive zajedno". `SVET_I_LIKOVI_1.md` to izričito ispravlja: **VI je
PROŠLOST, ne žive zajedno**, VI i VII su uzastopni dani, ~2 godine pre I. SVET je
noviji i tekst ga podržava („Sinoć." u VI, „Preksinoć." u VII). Ispraviti mapu
kad se VI otvori.

**(b) „Dvanaest godina" u VI i VII — računica ne štima.** Nestanak je pre 12
godina, nesreća pre ~2 godine. VI se dešava dan posle nesreće, dakle **deset**
godina posle nestanka — a tekst pet puta kaže „dvanaest" (redovi 17, 63, 73, 131,
137). VII ima isto na redu 103. `SVET_I_LIKOVI` red 103 tvrdi da „ostaje
dvanaest, tačno", ali taj upis je stariji od ispravke koja je VI premestila u
prošlost. **Hronologija je zamrznuta, pa ovo mora da odluči autor:** popušta
broj u tekstu, ili „~2 godine"?

### 5. VII — fajl neproveren

Jedini koji nije upoređen s dnevnikom. Uraditi pre otvaranja VII.

---

## Redosled posla

1. **V — Nestanak.** Ulazni list (Pravilo H, šest stavki), pa sva tri sprata.
   Tri predloga su već pripremljena, vidi dole.
2. VI — ulazni list pa sva tri sprata. Prvo rešiti sukobe iz tačke 4.
3. VII (proveriti fajl prvo), pa VIII.
4. Deo 0 i prolaz kroz I–III na spratu knjige — kad autor odluči.

---

## V — pripremljeno, čeka odobrenje

Tri predloga, nijedan nije unet:

1. **Red 19, prepis.** „Podigla je torbu s poda, spustila je opet, *jer je bila
   teška i jer je htela nešto da radi rukama*." — dva „jer" u jednoj rečenici.
   Predlog: „Podigla je torbu s poda, spustila je opet. Bila je teška, i trebalo
   joj je nešto da radi rukama." *Ne uneto kao mehanika namerno* — ovo je u
   proširenom otvaranju koje je autor pisao red po red.
2. **Red 157, rez repa.** „…pa spustio telefon ekranom nadole, *jer neke stvari
   čovek ne sme da gleda kako sijaju*." H4 + B7 — gest već nosi. (I rešava isti
   gest bez repa.)
3. **Red 149, rez.** „I bila je u pravu." B7 — „Kao nekog ko ju je jednom već
   sahranio živu." je udarac, potvrda posle njega ga tupi. **Najslabiji od tri**
   — ovo je i priznanje, što ide u prilog B3. Lako pada.

Stanje kvota u V, po prethodnoj proceni: 2.1 popunjena (kiša/hodnik), 2.2
popunjena („jeo iz šerpe, stojeći"), 2.3 popunjena (sestra), 2.4 popunjena
(Andrijana: „Dva broja, dva traga."), 2.5 popunjena. **V je poglavlje s najmanje
duga na spratu poglavlja.**

---

## Pravila koja se najčešće krše (podsetnik)

- **K** — mehanika ide bez pitanja i prijavljuje se posle. **Svaka rečenica
  napisana u autorovo ime čeka izričito „da", jedno po jedno.** Blanko „da" se
  ne prima; ako autor kaže „uradi sve", to važi za tekst koji je pročitao, ne za
  rečenice koje još nije video.
- **L** — zatvoreno se ne otvara. Ako treba otvoriti — **jedno pitanje**, bez
  argumenta, i čeka se odgovor.
- **M** — uz svaki nalaz reći sprat: rečenica, poglavlje ili knjiga.
- **G** — ako se dvoumiš, ne diraj. Prag je „merljivo bolje".
- **J** — najmanje trećina predloga po poglavlju mora biti prepisana rečenica.
- Poglavlje se ne zatvara dok se ne pročita **do kraja, red po red**.
- Po zatvaranju: fajl + upis u dnevnik + commit, bez traženja. Jedno poglavlje,
  jedan commit.

---

## Git

Grana: `claude/sahrana-bez-tela-poglavlje-vi-3grvzk`. Draft PR **#2**.
Otvoren i **PR #1** na drugoj grani — vidi tačku 1 iznad.

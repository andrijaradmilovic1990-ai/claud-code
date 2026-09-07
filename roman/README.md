# Sahrana bez tela

Rukopis romana u reviziji. Autobiografski. Radni jezik: **srpski, latinica.**

Repo postoji iz jednog razloga: **git pamti svaku verziju teksta**, pa se stara i
nova verzija poglavlja mogu uporediti red po red.

---

## Ako otvaraš ovo prvi put

Idi na **[`NASTAVAK.md`](NASTAVAK.md)**. To je jedini ulaz — gde je revizija stala i
šta je sledeće. Ovaj README je samo mapa fajlova.

**Ali ne kreći u posao dok ne pročitaš i osu, izvor i plan** — redosled je u
`CLAUDE.md`, na vrhu. Znati *da* se nešto radi a ne znati *zašto* postoji je najskuplja
greška u ovom repou i pravljena je više puta.

---

## Poglavlja

**Prva knjiga: devet poglavlja, 15.529 reči**, cela od **28.08.2026**, sva zaključana.

**Od 28.08.2026. piše se NOVA, veća knjiga.** Devet postojećih poglavlja ostaje
netaknuto i u istom redosledu; nova se umeću između njih.

## ⚑ Knjiga ima SEDAMNAEST poglavlja *(od 04.09.2026)*

**Sva su napisana. Stanje na 07.09.2026: 32.137 reči.**

Rasla je u tri koraka: **30.08.2026** je autor otvorio sva poglavlja i umetnut je
**`IVIČNJAK`, mesto 7** *(devet → šesnaest)*; **04.09.2026** je zahvatom 4 napisano
**`KATARINA`, mesto XII**, između `Fabrike` i `Prazne stolice`, i sve od `Prazne
stolice` naniže je prenumerisano *(šesnaest → sedamnaest)*.

> **Stariji zapisi koji kažu „Prazna stolica XII" misle na XIII, „Maska XIV" na XV,
> „Kukavica XV" na XVI, „Ćebence XVI" na XVII.** Stari zapisi se ne prepisuju — oni su
> istorija rada.

> **⚑ 01.09.2026 — KNJIGA JE PONOVO OTVORENA.** Kostur, ne gotova knjiga. **Nema više
> zaključanih poglavlja.** Rupa ostaje zapečaćena, pa knjiga **ne raste unazad nego
> unapred.**
>
> **⚑ 03.09.2026 — VAŽIO JE JEDAN PLAN: [`dokumenti/PLAN_03_09_2026.md`](dokumenti/PLAN_03_09_2026.md).**
> `PLAN_RASTA.md` je obrisan *(nije bio autorov)*, `PLAN_RADA.md` je iscrpljen.
> Uz plan idu dva fajla iznad njega: **[`dokumenti/POENTA_KNJIGE.md`](dokumenti/POENTA_KNJIGE.md)**
> *(osa)* i **[`dokumenti/ODGOVORI_AUTORA_03_09_2026.md`](dokumenti/ODGOVORI_AUTORA_03_09_2026.md)**
> *(izvor — autorovo znanje o svojim ljudima, 54 stavke u jedanaest krugova)*.

## ⚑ 06.09.2026 — PLAN JE ISCRPLJEN

**Devet zahvata i sva tri poteza A/B/C su zatvoreni**, a poglavlje `BRAT` je palo s
upisanim razlogom *(registar, sekcija 27)*. **Nema otvorenih zahvata i ne pravi se nov
plan bez autorove reči.**

| | zatvoreno |
|---|---|
| **03.09.** | sidra u vremenu · tetka u `Ulasku` · kaput napolje iz `Maske` |
| **04.09.** | **B** *(zatečenost kod brata)* i **C** u istom bloku · novo poglavlje **`KATARINA`** · dvorište |
| **06.09.** | **A** *(Jovanin glas, jednom, ceo)* · Jovana danas · proređivanje motiva *(20 → 14)* · slepi prolaz po Pravilu R |

**Sledeće što knjizi treba nije zahvat nego čitalac.** Prompt stoji u `NASTAVAK.md`.

## Svih sedamnaest mesta, redom kojim se čita

**Imena fajlova ne prate mesta u knjizi** — stari nose stare rimske brojeve, novi nose
`NOVO_`. **Redosled je onaj iz naslova unutar fajla** (`# XI — Fabrika`), ne po imenu
fajla. Brojevi izmereni `LC_ALL=C.UTF-8 wc -w`, **06.09.2026**.

| # | Fajl | Naslov | reči |
|---|------|--------|------|
| I | `POGLAVLJE_1_SUSRET.md` | Susret | 793 |
| II | `POGLAVLJE_NOVO_1_ULAZAK.md` | Ulazak | **2.634** |
| III | `POGLAVLJE_2_PUKOTINA.md` | Pukotina | 1.786 |
| IV | `POGLAVLJE_3_KRV.md` | Krv | 1.324 |
| V | `POGLAVLJE_NOVO_2_ITALIJA.md` | Italija | **3.381** |
| VI | `POGLAVLJE_4_PARIZ.md` | Pariz | 2.019 |
| VII | `POGLAVLJE_NOVO_IVICNJAK.md` | Ivičnjak | 1.127 |
| VIII | `POGLAVLJE_NOVO_3_PRELOM.md` | Prelom | **1.791** |
| IX | `POGLAVLJE_5_NESTANAK.md` | Nestanak | 1.366 |
| X | `POGLAVLJE_NOVO_4_MAJKA.md` | Majka | 1.580 |
| XI | `POGLAVLJE_NOVO_5_FABRIKA.md` | Fabrika | **1.913** |
| **XII** | `POGLAVLJE_NOVO_KATARINA.md` | **Orman** | **1.683** |
| XIII | `POGLAVLJE_6_PRAZNA_STOLICA.md` | Prazna stolica | 1.386 |
| XIV | `POGLAVLJE_7_BELI_GRAD.md` | Beli grad | **2.209** |
| XV | `POGLAVLJE_NOVO_MASKA.md` | Maska | **1.736** |
| XVI | `POGLAVLJE_8_KUKAVICA.md` | Kukavica | 3.749 |
| XVII | `POGLAVLJE_9_CEBENCE.md` | Ćebence | 1.644 |

**ZBIR: 32.137 reči.**

> **Ne prepisuj ovu tabelu rukom.** `roman/alati/provera.sh` meri zbir iz teksta i javlja
> ako `README.md`, `NASTAVAK.md` ili `CLAUDE.md` nose staru cifru.

> **⚑ `ULAZAK` JE MESTO II, `PUKOTINA` III** *(odluka autora, 31.08.2026)*. Raniji zapisi
> koji ih vode obrnuto su zastareli. **`MASKA` stoji ispred `Kukavice`** — danas XV, ne XIV.
>
> **Golo `wc -w` u ovom okruženju potcenjuje za oko 1%** — uvek `LC_ALL=C.UTF-8`.
> **`cat` preko svih fajlova daje netačan zbir**, jer nijedan fajl ne završava prelomom
> reda pa se reči slepe na spojevima.

**23.08.2026.** je stari VII (5.896 reči, 38% knjige) podeljen na **VII — Beli grad**
i **VIII — Kukavica**, a dotadašnje VIII — Ćebence postalo je **IX**. Zapisi stariji
od tog datuma koji kažu „VIII" misle na Ćebence.

**30.08.2026.** je `Fabrika` zaključana i **hronologija preračunata**: David je 1990.
godište, **danas ima 35** (36 puni u oktobru). Tablica je do tada vodila 36 i ceo niz je
stajao godinu previsoko; otkrilo ga je to što s Katarinom ima **tri godine**, a ne
četiri. **Nijedna rečenica u knjizi nije promenjena** — sve cifre u tekstu se slažu s
novom tablicom bolje nego sa starom. Puna tablica: `dokumenti/SVET_I_LIKOVI_1.md`;
razlog i provere: `dokumenti/REGISTAR_ODLUKA.md`, sekcija 14.

**28.08.2026.** je odrađen **korak 4** — rad na celoj knjizi po CILJU. Uneto dvanaest
izmena u osam od devet poglavlja (I nije diran) i **jedna nova scena na početku IV**,
jedini put posle podele da je zabrana novih scena otvorena. Detalji: `NASTAVAK.md`.

**Fajlovi poglavlja ne završavaju prelomom reda.** Proverava se `od -An -c` na
poslednjem bajtu, pre rada. `xxd` u okruženju ne postoji i tiho puca.

Imena fajlova ujednačena istog dana (`V_Nestanak.md` i `POGLAVLJE_6_.md` su odudarala).
Git prati preimenovanja — istorija nije prekinuta.

---

## Stanje

**Knjiga ima sedamnaest poglavlja, sva su napisana, 32.137 reči.** Od **01.09.2026**
nijedno nije zaključano. **Plan je iscrpljen 06.09.2026** i nov se ne pravi bez
autorove reči.

**Šta je knjiga**, upisano bez ulepšavanja: mala, precizna, tužna knjiga — četvoro
ljudi, tri kuhinje i dva kafića. **Ovo nije noar i ne meri se noarom** *(autor je
izvadio taj motor: niko ga ne traži)*. **Ovo je elegija.**

Gde je stalo i šta je sledeće — uvek `NASTAVAK.md`.

**Zakazano za kraj:** prolaz kroz šavove, pa **noir prolaz kroz ceo roman** *(odluka
autora, 30.08.2026)*. Tek tada se zaključano otvara, i otvara ga autor rečju „otvaram".

---

## Alati

| Fajl | Šta radi |
|------|----------|
| `alati/build_cela.sh` | sastavlja `SAHRANA_BEZ_TELA_CELA.md` iz `poglavlja/`, redom iz naslova unutar fajla |
| `alati/provera.sh` | zapečaćena imena · fajlovi bez preloma reda · zbir reči protiv `README`/`NASTAVAK`/`CLAUDE.md` · je li sastavljena knjiga ažurna |

**`SAHRANA_BEZ_TELA_CELA.md` se ne prepravlja rukom.** Sastavlja se alatom; ako se dira
rukom, sledeći prolaz čita staru verziju knjige kao pravu. **To se već desilo** — fajl
je 06.09.2026. zatečen s šesnaest poglavlja i bez `Katarine`.

---

## Dokumenti

> **⚑ 07.09.2026 — TRI POLICE.** Dokumentacija je bila **129.281 reč** na **32.137** reči
> knjige, sva u jednom folderu. **Devet fajlova (64.858 reči, pola svega) preseljeno je u
> `dokumenti/arhiva/` — ništa nije obrisano.** Svaki red u tabeli ispod čiji put sadrži
> `arhiva/` **ne otvara se u radu.**
>
> **Pre sesije se čitaju tri fajla:** `../CLAUDE.md` · `NASTAVAK.md` · `dokumenti/POENTA_KNJIGE.md`.
> Ostalo se otvara **kad posao dotakne ono čega se tiče.** Police i razlozi: `../CLAUDE.md`
> i [`dokumenti/arhiva/README.md`](dokumenti/arhiva/README.md).

| Fajl | Šta pokriva | Kad ga otvaraš |
|------|-------------|----------------|
| **[`NASTAVAK.md`](NASTAVAK.md)** | **handoff — stanje, dugovi, šta je sledeće** | **prvo, uvek** |
| **[`dokumenti/POENTA_KNJIGE.md`](dokumenti/POENTA_KNJIGE.md)** | **⚑ OSA KNJIGE — najviši sprat u repou** | **odmah posle `NASTAVAK.md`, pre plana** |
| **[`dokumenti/ANALIZA_KRUGA_07_09_2026.md`](dokumenti/ANALIZA_KRUGA_07_09_2026.md)** | zašto se rad vrteo u krugu · tri poteza **A/B/C** *(nijedan odobren)* · **mišljenje čitaoca o svih sedamnaest poglavlja** | pre nego što se otvori bilo kakav nov posao |
| **[`dokumenti/arhiva/PRESUDA_I_NOVA_KNJIGA.md`](dokumenti/arhiva/PRESUDA_I_NOVA_KNJIGA.md)** | presuda o gotovoj knjizi i ideja o novoj — **istorija** | kad zatreba |
| `dokumenti/REGISTAR_ODLUKA.md` | šta je zatvoreno i **ne otvara se** | pre svakog predloga izmene |
| `dokumenti/FINALNI_PROLAZ_PRAVILA.md` | Deo 0, radna pravila, spisak zaštićenog | pre otvaranja poglavlja |
| `dokumenti/DUGOVI_KNJIGE.md` | pet dugova knjige, sprat iznad poglavlja | pre otvaranja poglavlja |
| `dokumenti/PRAVILA_STILA.md` | zanat — kako se piše | kad se piše rečenica |
| `dokumenti/SVET_I_LIKOVI_1.md` | ko je ko, hronologija, zaključana pravila sveta | kad se proverava činjenica |
| **[`dokumenti/PLAN_03_09_2026.md`](dokumenti/PLAN_03_09_2026.md)** | **poslednji plan — devet zahvata i potezi A/B/C. ISCRPLJEN 06.09.2026** | zbog razloga i zabrana; posla u njemu nema |
| **[`dokumenti/ODGOVORI_AUTORA_03_09_2026.md`](dokumenti/ODGOVORI_AUTORA_03_09_2026.md)** | **⚑ IZVOR — autorovo znanje o svojim ljudima, 54 stavke u jedanaest krugova** | **pre svake napisane rečenice; sve mora da stoji na njemu** |
| `dokumenti/arhiva/PLAN_RADA.md` | stari plan — **iscrpljen 31.08.2026** | istorija, ne posao |
| `dokumenti/arhiva/LEKTORSKA_OCENA_31_08_2026.md` | ocena petnaest poglavlja po spratovima — **istorija** | kad se pita da li je knjiga dobra |
| `dokumenti/arhiva/ARHIVA_NASTAVAK.md` | istorijski deo `NASTAVAK.md`, izmešten 06.09.2026 | poslednje mesto, ne prvo |
| `dokumenti/arhiva/NOVA_KNJIGA_MAPA.md` | mapa — **zastarela u numeraciji** (vodi petnaest); razlozi i zabrane i dalje važe | zbog razloga, ne zbog plana |
| `dokumenti/arhiva/NOVA_KNJIGA_IDEJE.md` | građa nove knjige, prazna mesta, Godfather odluke | kad se traži šta poglavlje plaća |
| `dokumenti/arhiva/GRADJA_FABRIKA.md` | autorova građa za `Fabriku` — radni fajl | istorija tog poglavlja |
| `dokumenti/arhiva/IDEJE_ZA_KORAK_3.md` | odložene ideje autora — **nisu odluke** | kad autor kaže „otvaram" |
| `dokumenti/arhiva/Analiza_i_pokret_prepravke_3_1_1.md` | dnevnik rada — istorija, ne registar | kad treba znati *zašto* je nešto tako |

**Razlika koja se stalno meša:** dnevnik je **istorija** (šta se radilo i zašto),
`REGISTAR_ODLUKA.md` je **zakon** (šta se ne dira). Kad se sukobe — važi registar.

> **⚑ O numeraciji u starim dokumentima.** `REGISTAR_ODLUKA.md`, `SVET_I_LIKOVI_1.md`,
> `NOVA_KNJIGA_MAPA.md`, `FINALNI_PROLAZ_PRAVILA.md`, `DUGOVI_KNJIGE.md` i dnevnik pisani
> su dok je knjiga imala **devet, pa petnaest, pa šesnaest** poglavlja. Svaki od njih nosi
> **prevodnu tabelu na vrhu**. Oznake se **ne prepisuju** — one su zapis onoga što je tada
> odlučeno.

---

## Pravila koja se ne krše

Puni tekst u `CLAUDE.md` u korenu repoa. Ukratko:

- **K** — mehanika bez pitanja; **svaka napisana rečenica čeka izričito „da", jedno po jedno.**
- **L** — **ništa nije trajno zatvoreno**; sve se sme prepraviti kad je neophodno, ali se pre toga čita **razlog** zbog kog je odluka pala. *(Prepisano 30.08.2026 — zabrana ponovnog predlaganja je skinuta.)*
- **M** — svaka ocena mora reći sprat: rečenica / poglavlje / knjiga.
- **E** — tekst je autoritet nad dokumentima.
- **G** — ako se dvoumiš, ne diraj.
- **J** — rez nije prolaz; najmanje trećina **unetog** mora biti napisana rečenica.
- **P** — dug se plaća unapred, nikad unazad.
- **T** — **tajna se ne otvara** *(03.09.2026)*. Knjiga sme da **pokaže**, ne sme da
  **protumači.** Čitalac se nikad ne gubi u **poziciji** *(vreme, mesto, ko govori)*, a
  uvek se gubi u **uzroku** *(zašto je otišao, šta mu je ona)*.

**Dva radna pravila, upisana 30.08.2026:** dokumenti se čitaju **celi** pre pisanja, ne
po sekcijama · tekst poglavlja se šalje **kao `.md` fajl**, ne u razgovor.

---

## Git

Jedno poglavlje, jedan commit, poruka na srpskom sa spiskom šta je promenjeno.
Ne gomilati izmene.

**Šta se NE radi** *(odluka autora, 27.08.2026)*: nema nadgledanja PR-ova, nema
pretplate na PR aktivnost, nema zakazanih samoprovera. Izmena se commituje i pushuje
kako ide.

**Merge ide na kraju SVAKOG razgovora** *(odluka autora, 28.08.2026)*. Autor radi
jedan chat = jedno poglavlje, pa „na kraju" znači na kraju tog chata, ne na kraju
knjige. **Poglavlje nije zatvoreno dok njegov rad nije na glavnoj grani; draft PR ne
važi kao sačuvano.** Puno pravilo i razlog: `CLAUDE.md`.

**Prvo u novom razgovoru:** proveri ima li grana s neuvezanim radom (komanda je u
`CLAUDE.md`). Ako nešto ispliva — ne mergovati granu na slepo, nego preneti izmenu
po izmenu.

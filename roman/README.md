# Sahrana bez tela

Rukopis romana u reviziji. Autobiografski. Radni jezik: **srpski, latinica.**

Repo postoji iz jednog razloga: **git pamti svaku verziju teksta**, pa se stara i
nova verzija poglavlja mogu uporediti red po red.

---

## Ako otvaraš ovo prvi put

Idi na **[`NASTAVAK.md`](NASTAVAK.md)**. To je jedini ulaz — gde je revizija stala,
šta je zaključano, šta je sledeće. Ovaj README je samo mapa fajlova.

---

## Poglavlja

**Prva knjiga: devet poglavlja, 15.529 reči**, cela od **28.08.2026**, sva zaključana.

**Od 28.08.2026. piše se NOVA, veća knjiga: petnaest poglavlja, cilj oko 30.500 reči.**
Devet postojećih ostaje netaknuto i u istom redosledu; **šest novih se umeće između
njih.** Zaključana mapa: `dokumenti/NOVA_KNJIGA_MAPA.md`.

**Napisano do sada: 25.464 reči.** Pet novih poglavlja postoji — četiri zaključana
(`Ulazak`, `Italija`, `Prelom`, `Majka`) i jedno u radu (`Fabrika`, Deo 1 unet).

| # | Fajl | Naslov | reči |
|---|------|--------|------|
| I | `POGLAVLJE_1_SUSRET.md` | Susret | 797 |
| II | `POGLAVLJE_2_PUKOTINA.md` | Pukotina | 1.574 |
| III | `POGLAVLJE_3_KRV.md` | Krv | 1.135 |
| IV | `POGLAVLJE_4_PARIZ.md` | Pariz | 1.973 |
| V | `POGLAVLJE_5_NESTANAK.md` | Nestanak | 1.289 |
| VI | `POGLAVLJE_6_PRAZNA_STOLICA.md` | Prazna stolica | 1.405 |
| VII | `POGLAVLJE_7_BELI_GRAD.md` | Beli grad | 2.150 |
| VIII | `POGLAVLJE_8_KUKAVICA.md` | Kukavica | 3.635 |
| IX | `POGLAVLJE_9_CEBENCE.md` | Ćebence | 1.571 |

**Nova poglavlja** *(mesto u mapi od petnaest)*:

| mesto | Fajl | Naslov | reči | stanje |
|---|------|--------|------|--------|
| 3 | `POGLAVLJE_NOVO_1_ULAZAK.md` | Ulazak | 2.181 | zaključano |
| 5 | `POGLAVLJE_NOVO_2_ITALIJA.md` | Italija | 3.368 | zaključano |
| 7 | `POGLAVLJE_NOVO_3_PRELOM.md` | Prelom | 1.791 | zaključano |
| 9 | `POGLAVLJE_NOVO_4_MAJKA.md` | Majka | 1.571 | zaključano |
| 10 | `POGLAVLJE_NOVO_5_FABRIKA.md` | Fabrika | 1.024 | **u radu — Deo 1** |
| 14 | *(nije napisano)* | Maska | — | predstoji |

**23.08.2026.** je stari VII (5.896 reči, 38% knjige) podeljen na **VII — Beli grad**
i **VIII — Kukavica**, a dotadašnje VIII — Ćebence postalo je **IX**. Zapisi stariji
od tog datuma koji kažu „VIII" misle na Ćebence.

**28.08.2026.** je odrađen **korak 4** — rad na celoj knjizi po CILJU. Uneto dvanaest
izmena u osam od devet poglavlja (I nije diran) i **jedna nova scena na početku IV**,
jedini put posle podele da je zabrana novih scena otvorena. Detalji: `NASTAVAK.md`.

**Fajlovi poglavlja ne završavaju prelomom reda.** Proverava se `od -An -c` na
poslednjem bajtu, pre rada. `xxd` u okruženju ne postoji i tiho puca.

Imena fajlova ujednačena istog dana (`V_Nestanak.md` i `POGLAVLJE_6_.md` su odudarala).
Git prati preimenovanja — istorija nije prekinuta.

---

## Stanje

**Prva knjiga je gotova i zaključana.** Plan od četiri koraka iscrpljen je 28.08.2026.
Pročitana je cela i ocenjena: jako dobra, s jednom pravom zamerkom — **prekratka**
(novela, ne roman). Presuda: `dokumenti/PRESUDA_I_NOVA_KNJIGA.md`.

**Iz toga je izašla nova knjiga, i ona se sada piše.** Gde je stalo i šta je sledeće —
uvek `NASTAVAK.md`.

**Zakazano za kraj, kad sve bude napisano:** prolaz kroz šavove, pa **noir prolaz kroz
ceo roman** *(odluka autora, 30.08.2026)*. Tek tada se zaključano otvara, i otvara ga
autor rečju „otvaram".

---

## Dokumenti

| Fajl | Šta pokriva | Kad ga otvaraš |
|------|-------------|----------------|
| **[`NASTAVAK.md`](NASTAVAK.md)** | **handoff — stanje, dugovi, šta je sledeće** | **prvo, uvek** |
| **[`dokumenti/PRESUDA_I_NOVA_KNJIGA.md`](dokumenti/PRESUDA_I_NOVA_KNJIGA.md)** | **presuda o gotovoj knjizi i ideja o novoj** | **odmah posle NASTAVAK.md** |
| `dokumenti/REGISTAR_ODLUKA.md` | šta je zatvoreno i **ne otvara se** | pre svakog predloga izmene |
| `dokumenti/FINALNI_PROLAZ_PRAVILA.md` | Deo 0, radna pravila, spisak zaštićenog | pre otvaranja poglavlja |
| `dokumenti/DUGOVI_KNJIGE.md` | pet dugova knjige, sprat iznad poglavlja | pre otvaranja poglavlja |
| `dokumenti/PRAVILA_STILA.md` | zanat — kako se piše | kad se piše rečenica |
| `dokumenti/SVET_I_LIKOVI_1.md` | ko je ko, hronologija, zaključana pravila sveta | kad se proverava činjenica |
| `dokumenti/IDEJE_ZA_KORAK_3.md` | odložene ideje autora — **nisu odluke** | kad autor kaže „otvaram" |
| `dokumenti/Analiza_i_pokret_prepravke_3_1_1.md` | dnevnik rada — istorija, ne registar | kad treba znati *zašto* je nešto tako |

**Razlika koja se stalno meša:** dnevnik je **istorija** (šta se radilo i zašto),
`REGISTAR_ODLUKA.md` je **zakon** (šta se ne dira). Kad se sukobe — važi registar.

---

## Pravila koja se ne krše

Puni tekst u `CLAUDE.md` u korenu repoa. Ukratko:

- **K** — mehanika bez pitanja; **svaka napisana rečenica čeka izričito „da", jedno po jedno.**
- **L** — zatvoreno je zatvoreno.
- **M** — svaka ocena mora reći sprat: rečenica / poglavlje / knjiga.
- **E** — tekst je autoritet nad dokumentima.
- **G** — ako se dvoumiš, ne diraj.
- **J** — rez nije prolaz; najmanje trećina **unetog** mora biti napisana rečenica.
- **P** — dug se plaća unapred, nikad unazad.

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

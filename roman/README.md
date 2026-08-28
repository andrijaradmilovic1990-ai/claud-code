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

Devet poglavlja, **15.497 reči.** Knjiga je cela od **28.08.2026.**
**Sva poglavlja su zaključana.**

| # | Fajl | Naslov | reči |
|---|------|--------|------|
| I | `POGLAVLJE_1_SUSRET.md` | Susret | 797 |
| II | `POGLAVLJE_2_PUKOTINA.md` | Pukotina | 1.574 |
| III | `POGLAVLJE_3_KRV.md` | Krv | 1.135 |
| IV | `POGLAVLJE_4_PARIZ.md` | Pariz | 1.973 |
| V | `POGLAVLJE_5_NESTANAK.md` | Nestanak | 1.278 |
| VI | `POGLAVLJE_6_PRAZNA_STOLICA.md` | Prazna stolica | 1.405 |
| VII | `POGLAVLJE_7_BELI_GRAD.md` | Beli grad | 2.137 |
| VIII | `POGLAVLJE_8_KUKAVICA.md` | Kukavica | 3.635 |
| IX | `POGLAVLJE_9_CEBENCE.md` | Ćebence | 1.571 |

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

## Dokumenti

| Fajl | Šta pokriva | Kad ga otvaraš |
|------|-------------|----------------|
| **[`NASTAVAK.md`](NASTAVAK.md)** | **handoff — stanje, dugovi, šta je sledeće** | **prvo, uvek** |
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
kako ide; **PR i merge idu na kraju, kad se skupi** — jedan PR, jedan merge.

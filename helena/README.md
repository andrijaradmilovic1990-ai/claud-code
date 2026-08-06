# Helena sistem

Ovo je pisano da nov razgovor ne mora da počne od nule. Nije uputstvo šta da
misliš — nego mapa gde šta stoji, plus popis odluka koje su donete i zašto.

**Ništa ovde ne traži da veruješ na reč.** Svaka tvrdnja ima izvor koji možeš
sam da otvoriš. Ako se ovaj tekst i izvor razlikuju — izvor je u pravu, a ovaj
fajl treba popraviti.

## Šta je sistem

Andrija Radmilović vodi lični sistem od nekoliko delova:

| Deo | Gde živi | Šta drži |
|---|---|---|
| **ZIVOT** | Google Sheets | smene, posao, zdravlje, finansije, kontakti, obećanja, dani, pisanje |
| **JEZGRO** | Google Doc | trajne teme — ko je ko, ritam, ukus, glas, infrastruktura |
| **NITI** | Google Doc | otvorene stvari; na vrhu PULS blok |
| **ZANAT** | Google Doc | lekcije i kalibracija |
| **VOZILO** | Google Sheets | auto, servis, registracija |
| **helena-strazar** | Cloudflare Worker | cron koji radi kad razgovora nema |
| **helena-drive** | skill | ruter i refleksi; učitava se i u Claude Code i u claude.ai |

ID-jevi fajlova su u skillu (`SKILL-helena-drive.md`), da ne bi stajali na dva
mesta i razišli se.

## Dva sloja i zašto je to problem

Sistem ima **kratki sloj** (memorija u claude.ai — jedna rečenica plus putokaz)
i **dugi sloj** (Drive — pun sadržaj). Claude Code menja Drive ali nema pristup
memorijama. claude.ai chat ima oboje.

Zato slojevi tiho beže jedan od drugog. 05.08.2026 je ceo dan menjan Drive dok
je memorija i dalje tvrdila stanje od pre mesec dana.

Rešenje je **MEMORIJA tab** u ZIVOT sheetu — dvosmeran log. Ko ne može da upiše
u drugi sloj, ostavi red sa statusom `CEKA`. Druga strana ga odradi i zatvori.
Stražar zvoca ako red predugo stoji.

## Šta je stražar

Cloudflare Worker, `helena-strazar`, verzija **2.2**. Radi bez razgovora:

- **05:30** jutarnji mejl — smena, obaveze, rokovi, brifing, sveže ideje
- **14:00** popodnevna provera — crvena zona i/ili sveže ideje
- **utorkom** — nedeljni audit, blok u mejlu + red u OBECANJA
- **ulazna forma** `/u-<tajna>/dodaj` — Andrija s telefona ubacuje obavezu,
  odjek, belešku ili ideju

Rute za proveru, sve GET: `/health`, `/smena`, `/pregled`, `/test-ideje`,
`/test-memorija`, `/test-audit`, `/test-konfig`, `/test-ai`.
GET umeju da vrate keširan odgovor — dodati `?v=N`.

Izvor koda je Cloudflare. Kopija je u `strazar/worker.js` radi istorije — ako se
razlikuje od živog, živi je merodavan (`workers_get_worker_code`).

## Otvoreno — čeka Andriju

1. **PISANJE red 2** — index drži stari radni naslov romana („Čudovište koje je
   naučilo da pije kafu"). Pravo ime je **„Sahrana bez tela"**, potvrđeno iz
   `roman/README.md`. JEZGRO je već ispravljeno, index nije.
2. **Tri para mogućih duplikata** u PISANJE tabu, označeni u koloni NAPOMENA.
3. **Dva skraćena naslova** — „Pljuvanje" je „Pljuvanje u oko Suncu", „Rain" je
   „Have You Ever Seen the Rain".
4. **Da li vaditi brifing iz stražara** u zaseban worker — vidi `ARHITEKTURA.md`.

## Otvoreno — tehnički

- Može li claude.ai chat da poziva `workers.dev` rute? Tvrđeno je da ne može,
  ali nije provereno. Od toga zavisi rezervni put za računanje smene.
- Prvi automatski nedeljni audit: **utorak 11.08.2026.**

## Kako se ovo održava

Kad se nešto promeni, menja se **i izvor i ovaj fajl**, u istom potezu. Ako se
menja samo jedno, za nedelju dana niko neće znati koje.

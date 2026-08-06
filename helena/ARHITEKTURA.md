# Arhitektura — jedan stražar ili više workera

Andrijino pitanje, 06.08.2026: *„zašto forsiramo jednog stražara koji je
primarno bio za vesti, zašto ne koristimo više stražara i svaki da ima svoj
posao?"*

Zapisano da se ne raspravlja iznova. **Odluka nije doneta** — ovo je stanje
razmišljanja i uslov pod kojim se menja.

## Zašto je jedan worker do sada bio ispravan

**Izlaz je jedan.** Andrija dobija jedan mejl ujutru, i to je cela vrednost —
jedno mesto koje kaže sve. Pet workera znači pet mejlova u 05:30, i tog trenutka
prestaje da ih čita. Fragmentacija izlaza je gora bolest od velikog fajla.

Sve funkcije dele istu mašineriju: Google auth, `readRange`, računanje datuma,
bela lista upisa. Podela na pet znači ili petostruko dupliran kod, ili zajednička
biblioteka — a onda izmena u auth-u traži pet deploya umesto jednog.

## Šta je stvarna cena monolita

05.08.2026 je stražar deployovan **pet puta u jednom danu**. Svaki put je išao
ceo fajl, i svaki put je jutarnji mejl bio u opasnosti zbog izmene koja se tiče
memorije ili ideja. Dva puta je izgledalo da deploy nije prošao — bila je samo
propagacija, ali se to nije moglo odmah razlikovati od kvara.

Fajl je oko hiljadu linija i radi tri stvari po tri ritma: vesti dnevno, audit
nedeljno, ideje i memorija po događaju.

## Dijagnoza: pogrešna osa deljenja

Ne treba deliti **po temi** (jedan za vesti, jedan za audit, jedan za ideje),
nego **po sloju**:

- **skupljači** — donesu sirove podatke spolja
- **odlučivač** — sastavi šta je danas bitno
- **dostavljač** — pošalje jedan mejl

Odlučivač i dostavljač moraju ostati jedno, jer mejl mora ostati jedan.
Skupljači su ti koji smeju napolje.

## Jedini rez koji se isplati

**Vesti.** Stražar nosi sopstvenu listu RSS izvora, sopstveni parser i sopstveni
poziv Workers AI za prevod — a worker `helena-vesti` postoji i to mu je jedini
posao. To je stvarna duplikacija, ne teorijska.

Da je taj deo izvučen, stražar bi ostao bez ~80 linija koje nemaju veze sa
Andrijinim životom, a promena RSS izvora ne bi dirala kod koji računa smenu.

**Uslov pre bilo kakvog reza:** proveriti šta `helena-vesti` stvarno izlaže.
Koren vraća 404, dakle rute postoje ali ne na `/`. Ne predlagati rez na osnovu
pretpostavke.

## Šta se NE deli

Audit, memorija i ideje. Sve troje čita iste tabove, koristi iste datume i
završava u istom mejlu. Zaseban worker za njih znači drugi Google auth, drugi
`/health`, drugo mesto gde Workers AI binding može da nestane — a ne dobija se
ništa. Prekršilo bi i pravilo protiv širenja: ništa staro ne bi umrlo.

## Kada bi drugi worker bio opravdan

Kad nešto traži **drugačiji raspored** ili **ne sme da deli domen otkaza** sa
jutarnjim mejlom. Trenutno takvog posla nema. Ako se pojavi, ovo je mesto gde se
to zapisuje pre nego što se napravi.

#!/usr/bin/env python3
"""Sklapa stampu-spreman A5 PDF: korica -> sadrzaj -> sedamnaest poglavlja.

Redosled se cita iz rimskog broja u naslovu unutar fajla, ne iz imena fajla.
Brojevi strana u sadrzaju se racunaju iz stvarnog preloma (dva prolaza).

Upotreba:  python3 roman/alati/build_pdf.py [korica.png] [izlaz.pdf]
"""
import html
import re
import sys
from pathlib import Path

from weasyprint import HTML

KOREN = Path(__file__).resolve().parent.parent
POGLAVLJA = KOREN / "poglavlja"
RIMSKI = {"I":1,"II":2,"III":3,"IV":4,"V":5,"VI":6,"VII":7,"VIII":8,"IX":9,
          "X":10,"XI":11,"XII":12,"XIII":13,"XIV":14,"XV":15,"XVI":16,"XVII":17}


def ucitaj():
    glave = []
    for f in sorted(POGLAVLJA.glob("*.md")):
        redovi = f.read_text(encoding="utf-8").split("\n")
        m = re.match(r"^# ([IVX]+) — (.+)$", redovi[0])
        if not m:
            sys.exit(f"GRESKA: {f.name} nema ispravan naslov u prvom redu")
        glave.append((RIMSKI[m.group(1)], m.group(1), m.group(2), redovi[1:]))
    glave.sort()
    brojevi = [g[0] for g in glave]
    if brojevi != list(range(1, len(glave) + 1)):
        sys.exit(f"GRESKA: rupa ili duplikat u numeraciji: {brojevi}")
    return glave


def kurziv(s):
    s = html.escape(s)
    return re.sub(r"\*([^*]+)\*", r"<em>\1</em>", s)


def telo(redovi):
    out, prvi = [], True
    for red in redovi:
        red = red.strip()
        if not red:
            continue
        if red == "⁂":
            out.append('<p class="zvezde">⁂</p>')
            prvi = True
        else:
            klasa = ' class="prvi"' if prvi else ''
            out.append(f'<p{klasa}>{kurziv(red)}</p>')
            prvi = False
    return "\n".join(out)


def sastavi(glave, korica, rasponi=None):
    if korica and Path(korica).exists():
        naslovna = f'<section class="korica"><img src="{Path(korica).resolve().as_uri()}"></section>'
    else:
        naslovna = ('<section class="korica tipo"><div><h1>SAHRANA BEZ TELA</h1>'
                    '<p class="potpis">Mr. Nobody</p></div></section>')

    redovi_toc = []
    for br, rim, naslov, _ in glave:
        if rasponi:
            od, do = rasponi[br]
            strane = f"{od}–{do}"
        else:
            strane = f'<span class="broj"></span>'
        redovi_toc.append(
            f'<li><a href="#p{br}"><span class="rim">{rim}</span>'
            f'<span class="ime">{html.escape(naslov)}</span>'
            f'<span class="tacke"></span><span class="str">{strane}</span></a></li>')

    poglavlja = "\n".join(
        f'<section class="poglavlje" id="p{br}">'
        f'<h2><span class="rim">{rim}</span><span class="ime">{html.escape(naslov)}</span></h2>'
        f'{telo(redovi)}</section>'
        for br, rim, naslov, redovi in glave)

    dopuna = '<section class="dopuna"></section>' * (rasponi or {}).get("__dopuna__", 0)
    return f"""<!doctype html><html lang="sr"><head><meta charset="utf-8">
<title>Sahrana bez tela</title><style>{CSS}</style></head><body>
{naslovna}
<section class="sadrzaj"><h2>Sadržaj</h2><ol>{''.join(redovi_toc)}</ol></section>
{poglavlja}
{dopuna}
</body></html>"""


CSS = """
@page { size: 148mm 210mm; margin: 16mm 14mm 18mm 17mm;
        @bottom-center { content: counter(page); font-family: serif;
                         font-size: 8.5pt; color: #333; } }
@page :left  { margin-left: 14mm; margin-right: 17mm; }
@page korica { margin: 0; @bottom-center { content: none; } }
@page prazna { @bottom-center { content: none; } }


body { font-family: "DejaVu Serif", "Liberation Serif", Georgia, serif;
       font-size: 10.5pt; line-height: 15.6pt; text-align: justify;
       hyphens: auto; color: #111; margin: 0; }

.korica { page: korica; break-after: page; }
.korica img { width: 148mm; height: 210mm; object-fit: cover; display: block; }
.korica.tipo { display: flex; align-items: center; justify-content: center;
               height: 210mm; text-align: center; }
.korica.tipo h1 { font-size: 21pt; letter-spacing: .18em; font-weight: normal; margin: 0; }
.korica.tipo .potpis { font-size: 10pt; margin-top: 14mm; color: #444; }

.sadrzaj { page: prazna; break-after: page; }
.dopuna { page: prazna; break-before: page; height: 1mm; }
.sadrzaj h2 { font-size: 13pt; font-weight: normal; letter-spacing: .22em;
              text-align: center; margin: 2mm 0 8mm; }
.sadrzaj ol { list-style: none; padding: 0; margin: 0; }
.sadrzaj li { margin: 0 0 2.4mm; font-size: 9.5pt; }
.sadrzaj a { color: inherit; text-decoration: none; display: flex;
             align-items: baseline; gap: 2mm; }
.sadrzaj .rim { min-width: 13mm; font-size: 8.5pt; letter-spacing: .1em; color: #555; }
.sadrzaj .tacke { flex: 1; border-bottom: 1px dotted #bbb; margin: 0 1mm 1mm; }
.sadrzaj .broj::after { content: target-counter(attr(href), page); }

.poglavlje { break-before: page; }
.poglavlje h2 { break-after: avoid; text-align: center; font-weight: normal;
                margin: 18mm 0 11mm; }
.poglavlje h2 .rim { display: block; font-size: 9pt; letter-spacing: .3em; color: #666; }
.poglavlje h2 .ime { display: block; font-size: 15pt; letter-spacing: .1em; margin-top: 3mm; }

p { margin: 0; text-indent: 5.2mm; orphans: 2; widows: 2; }
p.prvi { text-indent: 0; }
p.zvezde { text-align: center; text-indent: 0; margin: 5mm 0; letter-spacing: .5em; color: #666; }
em { font-style: italic; }
"""


def strane_poglavlja(dokument, glave):
    """Iz prvog prolaza vadi stvarnu stranu na kojoj svako poglavlje pocinje."""
    ukupno = len(dokument.pages)
    poc = {}
    for i, strana in enumerate(dokument.pages):
        for oznaka in strana.anchors:
            if oznaka.startswith("p") and oznaka[1:].isdigit():
                poc.setdefault(int(oznaka[1:]), i)
    if len(poc) != len(glave):
        sys.exit("GRESKA: nisu nadjena sva sidra poglavlja u prvom prolazu")
    # WeasyPrint ne ume da resetuje brojac strana usred dokumenta, pa se broji
    # neprekidno od korice; korica i sadrzaj samo nemaju odstampan broj.
    rasponi = {}
    redom = sorted(poc.items())
    for k, (br, i) in enumerate(redom):
        od = i + 1
        do = redom[k + 1][1] if k + 1 < len(redom) else ukupno
        rasponi[br] = (od, max(od, do))
    return rasponi


def main():
    korica = sys.argv[1] if len(sys.argv) > 1 else None
    izlaz = Path(sys.argv[2]) if len(sys.argv) > 2 else KOREN / "SAHRANA_BEZ_TELA_A5.pdf"
    glave = ucitaj()

    prvi = HTML(string=sastavi(glave, korica), base_url=str(KOREN)).render()
    rasponi = strane_poglavlja(prvi, glave)
    rasponi["__dopuna__"] = (-len(prvi.pages)) % 4   # povez trazi visekratnik cetiri
    drugi = HTML(string=sastavi(glave, korica, rasponi), base_url=str(KOREN)).render()
    drugi.write_pdf(izlaz)

    print(f"{izlaz}  —  {len(drugi.pages)} strana "
          f"({len(prvi.pages)} + {rasponi['__dopuna__']} prazne za povez), A5 148x210mm")
    for br, rim, naslov, _ in glave:
        od, do = rasponi[br]
        print(f"  {rim:>5}  {naslov:<16} {od:>3}–{do}")


if __name__ == "__main__":
    main()

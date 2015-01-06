# Analiza podatkov s programom R, 2014/15

Avtor: Žana Šteković

Repozitorij z gradivi pri predmetu APPR v študijskem letu 2014/15.

## Tematika

### Izobrazba v Sloveniji

Vsi vemo, da se vse več ljudi odloča za študij, v primerjavi z nekaj let nazaj. Zato sem se odločila analizirati koliko slovenk in slovencev ima visokošolsko izobrazbo 1., 2., 3. stopnje med leti 2011 in 2013 in kako se ta spreminja.

Zanimale me bodo 3 stopnje izobrazbe in sicer: Visokošolka izobrazba 1. stopnje,2. stopnje, 3. stopnje. Primerjava bo med ženskam in moškim starih od 15 let naprej, med leti 2011, 2012 in 2013.

Cilj : Predstaviti izobrazbo moških in žensk po regijah in kako se ta spreminja. Na koncu me bo zanimalo katera stopnja izobrazbe je najbolj pogosta(po regijah in nasplošno v Sloveniji), in v kateri regiji je stopnja izobrazbe najvišja. Zanimiva bo tudi primerjava med moškimi in ženskami, katerih je več, pri vsaki stopnji izobrazbe posebej. Dobljene rezultate razdeljene po regijah bom prikazala tudi na zemljevidu.

Podatke bom uvozila iz spletne strani STATISTIČNEGA URADA REPUBLIKE SLOVENIJE : http://pxweb.stat.si/pxweb/Dialog/varval.asp?ma=05G2010S&ti=&path=../Database/Dem_soc/05_prebivalstvo/20_soc_ekon_preb/01_05G20_izobrazba/&lang=2 ; podatke na tej strani lahko zbiram med oblikami : .html, .csv, .txt, .xls. ... 


##Uporaba

Ko poženemo glavni program z imenom `projekt.r` se nam izpišeta dve tabeli teh dva grafa, ki sta shranjena v mapi `slike/`. V mapi `vizualizacija/` pa je napisan program `vizualizacija.r` ki izvede in nariše zemljevid Slovenije po regijah. Slika zemljevida pa se shrani v mapo `slike/` pod imenom `zemljevid_regije.pdf`.

## Program

Glavni program se nahaja v datoteki `projekt.r`. Ko ga poženemo, se izvedejo
programi, ki ustrezajo drugi, tretji in četrti fazi projekta:

* obdelava, uvoz in čiščenje podatkov: `uvoz/uvoz.r`
* analiza in vizualizacija podatkov: `vizualizacija/vizualizacija.r`
* napredna analiza podatkov: `analiza/analiza.r`

Vnaprej pripravljene funkcije se nahajajo v datotekah v mapi `lib/`. Podatkovni
viri so v mapi `podatki/`. Slike, ki jih program naredi, se shranijo v mapo
`slike/`. Zemljevidi v obliki SHP, ki jih program pobere, se shranijo v mapo
`zemljevid/`.

## Poročilo

Poročilo se nahaja v mapi `porocilo/`. Za izdelavo poročila v obliki PDF je
potrebno datoteko `porocilo/porocilo.tex` prevesti z LaTeXom. Pred tem je
potrebno pognati program, saj so v poročilu vključene slike iz mape `slike/`.

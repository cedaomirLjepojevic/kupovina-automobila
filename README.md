# kupovina-automobila

Kreirana je SQL baza po zahtevu sa tabelama Prodavac i Prodaja

Glavni task: Prikazati prodavca pod imenom Petar Petrovic, koji prodaje BMW u crnoj boji, koliko je cena automobila, kog datuma je prodat i koliko je kolicina ostalo.
Sledeci upit u SQL je:

SELECT p2.Kolicina, p2.Cena, p2.Datum FROM Prodavac as p1 INNER JOIN Prodaja as p2 ON p2.ProdavacID = p1.ID WHERE p1.Ime='Petar' AND p1.Prezime='Petrovic' AND p1.Automobil='BMW' AND p1.Boja='Crna';

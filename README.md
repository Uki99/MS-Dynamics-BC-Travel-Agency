# Introduction and Explanation
This is an internal practice task i got on topic of Travel Agency. Bellow is the task requirements as recieved in e-mail from my mentor.

# Uvod

Zadatak je pisan za NAV (npr. MenuSuite), ali napravi kompatibilno i za NAV 2018 i BC.
Rok: Nekoliko dana, ali videćemo kako ide.

## Zadatak: Turistička agencija 
### Napraviti:
1)	Tabele šifarnike: **destinacija**, **hotela**, **tipova smeštaja** i **šifarnik smena**. Ne treba previše detalja, dovoljno je staviti šifru, opis i poneko dodatno polje za najbitnije podatke.
2)	Pageve (u obliku lista) za unos ovih šifarnika. 
3)	Tabelu Aranžman u kojoj se povezuju destinacija, hotel, tip smeštaja, smena i cena smeštaja.
4)	Listu aranžmana (page) i sa nje pokretanje kartice (page tipa Card) na kome se unose podaci o jednom aranžmanu. Lista aranžmana je needitabilna.
5)	Dve tabele za evidentiranje prodaje aranžmana, jedna je zaglavlje a druga redovi ovog prodajnog dokumenta. 
a.	U zaglavlju se unose podaci o kupcu (iskoristiti vezu sa standardnom tabelom Customer iz koje treba uzeti šifru i ime), datum prodaje, šifra aranžmana i cena prepisana sa aranžmana i status dokumenta (option polje sa vrednostima Open, Released i Closed). 
Dodati needitabilna polja “Created By” (Code[50]) i “Created Date”.  Vrednosti ovih polja se popunjavaju automatski na OnInsert table trigger pomoću funkcija USERID i TODAY.
b.	U redovima se unose podaci o putnicima, nije potrebno detaljno, samo veza sa zaglavljem, redni broj i opisno polje za unos imena putnika. 
6)	Page tipa Document za unos podataka o prodaji i page tipa lista koja predstavlja listu prodajnih dokumenata. Na dokumentu dodati akciju koja otvara pregled liste aranžmana.

**Pogledajte tabele  Sales Header i Sales Line kako su povezane, kao i page Sales Order.**

7)	Napraviti novu sekciju u MenuSuite 1090 – Turistička agencija sa podgrupama:
- a.	Šifarnici – Destinacije, Hoteli, Tipovi smeštaja, Šifarnik smena
- b.	Prodaja – Aranžmani, Lista aktivne prodaje aranžmana (Dokumenta prodaje u statusima Open i Released) i Lista realizovane prodaje aranžmana (Dokumenta prodaje u status Closed). 

-- Transactions

/*
Tranzaksii - eto operasiya kotoraya sostoit iz odnoy ili
neskolkix operasiy v kotorom libo vse operasii doljni
vipolnitsya, libo nedoljno vipolnyatsya ne odna iz etix operasiy

ACID

A - Atomicity (atomarnost) - Kajdaya tranzaksiya ne smotrya
	chto sostoit iz neskolkix operasiy, v selom ona schitayetsya
	odnoy nedelimoy operasiyey. V tranzaksii libo 
	vse operasii doljni vipolnitsya, 
	libo ne odna iz etix operasiy ne doljno vipolnyatsya.

C - Consistency (Soqlsovannost) - Kajdaya tranzaksiya, bud eto
	vipolnennaya ili otkatannaya (prervannaya) tranzaksii doljni
	ostavit bazu dannix v soqlasovannom sostayanii.
	(To est v baze dannix i obyektax vse oqranicheniya
	doljni ostavatsya v ranne ustonovlennom sostayanii)

I - Isolation (izolyasiya) - Kajdaya tranzaksiya doljno vipolnyatsa
	tak, kak budto ona sushestvuyet otdelno (izolirovano) 
	ot druqix tranzaksiy

D - Durability (ustoychivost) - Yesli v servere sluchilos kakaya to
	problema (Server upal, perestal otvechat, soedeneniye propala, 
	elektrichestvo ushlo i t.d.), Kak tolko vsyo vostonovitsya 
	te tranzaksii kotoriye bili vipolneni doljni ostavatsya
	vipolnennom sostayanii, a te tranzaksii kotoriye prervalis
	doljni otkatitsya nazad.


Sushestvuyut 2 osnovnix vida tranzaksiy:
	+ Sistemniye tranzaksii
	+ Polzovatelskiye tranzaksii

V SQL Server-e yest 3 tipa polzovatelskix tranzaksiy:

	+ Autocommit (Avtofiksasiya) - Kajdaya komanda zaprosa po otdelnosti
		schitayetsya tranzaksiyey. V rezultate udachnoqo vipolneniya
		server sam delayet fiksasiyu etoy tranzaksii

	+ Implicit transactions (Neyavniye traznzaksii) - Mi ne ukazivayem
		nachalo tranzaksii, no commit i rollback doljni ukazivatsya.
		Dlya toqo chtobi takoye povedeniye srabotalo mi doljni vipolnit
		SET_IMPLICIT_TRANSACTIONS ON

	+ Explicit transactions (Yavniye traznzaksii) - Mi  ukazivayem
		i nachalo tranzaksii i commit i rollback . 

Sintaksis:

BEGIN TRANSACTION | BEGIN TRAN - nachalo tranzaksii

COMMIT - fiksasiya tranzaksii (esli udachno vipolneno)

ROLLBACK [TRANSACTION | TRAN] - otkat tranzaksii (esli bili oshibki)

SAVE TRANSACTION | TRAN - ustonovka tochki soxroneniya 
*/
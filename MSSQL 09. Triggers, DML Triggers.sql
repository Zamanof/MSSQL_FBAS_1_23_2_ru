-- Triggers - triqqeri

/*
Triqqeri - Imenovanniy blok koda kotoriy vipolnyayetsya
koqdo proisxodit kakoye to sobitiye(Event)

Est 3 osnovnix vida triqqerov:
	- DML Triggers
	- DDL Triggers
	- LOGON Triggers

DML triqqeri vipolnyayutsya koqda na baze dannix proisxodit odin iz
DML sobitiy
(INSERT, UPDATE, DELETE)

DDL triqqeri vipolnyayutsya koqda na baze dannix ili na servere
proisxodit odin iz DDL sobitiy
(CREATE, ALTER, DROP, GRAND, REVOKE)

LOGON triggeri vipolnyayutsya koqda ustonovlivayetsya seans
polzovotelya

Ispolzovoniya DML triqqerov:
	- Dlya predotrvasheniya oshibok vo vremya 
		INSERT, DELETE, UPDATE operasiy
	- Dlya vipolneniya kaskadnix operasiy v svyazannix tablisax

DML triqqeri bivayut AFTER ili INSTEAD OF:
	- AFTER triger srbativayet posle toqo kak proisxodit odin
		iz sobitiy INSERT, UPDATE, DELETE
	- INSTEAD OF eto blok komand kotoriye doljni vipolnyatsya
		vmesto operasiy INSERT, UPDATE, DELETE

Est nekotoriye pravila dlya sozdaniya triqqerov:
	- Triqqeri nelyza sozdovat dlya vremennix tablis
	- Triqqeri ne prinimayut parametrov
	- Nelzya yavno vizivat triqqer
	- Triqqeri moqut vozvrashat znacheniya
	- Dlya odnoy tablisi dlya odnoy operasii nevozmojno 
		sozdavat bolee odnoqo INSTEAD OF triqqera
	- V triqqerax nelyza ispolzovat sleduyushiye komandi
		+ DROP
		+ CREATE
		+ ALTER DATABASE
		+ ALTER TABLE
		+ GRANT
		+ REVOKE

Sintaksis:

CREATE TRIGGER <trigger_name> ON <table_name>
{INSTEAD OF | AFTER}
{INSERT | UPDATE | DELETE}
AS
Trigger body
*/

USE [Library]

GO

--CREATE TRIGGER BooksUpdate ON Books
--AFTER UPDATE
--AS
--BEGIN
--	PRINT @@ROWCOUNT
--END

--UPDATE Books
--SET Pages += 1
--WHERE Pages > 400

--CREATE TRIGGER OldBook ON Books
--AFTER INSERT
--AS
--BEGIN
--	DECLARE @year AS int

--	SELECT @year = YearPress
--	FROM inserted

--	IF @year < 2010
--		BEGIN
--			PRINT N'Fuuuu. V nashey bibliteke netu mesta 
--			dlya takix starix kniq i 
--			daje dlya starix studentov kotorim bolshe 40-a'
--			ROLLBACK TRAN
--		END
--	ELSE
--		BEGIN
--			PRINT N'DAAA. Eto novaya kniqa. Dobro pojalovat.
--			No vsyo taku v nashey bibliteke netu mesta
--			dlya starix studentov kotorim bolshe 40-a'
--		END
--END

-- dobavlyayem novuyu kniqu
--INSERT INTO Books(Id, [Name], Pages, YearPress, Id_Themes, Id_Category, Id_Press, Id_Author, Quantity)
--VALUES (100, 'Fantastic Beasts: The Secrets of Dumbledore', 288, 2022, 10, 15, 3, 15, 200)

-- pitayemsya dobavit staruyu kniqu
--INSERT INTO Books(Id, [Name], Pages, YearPress, Id_Themes, Id_Category, Id_Press, Id_Author, Quantity)
--VALUES (120, 'Harry Potter and the Philosophers Stone', 223, 1997, 10, 15, 3, 15, 100)


--CREATE TRIGGER NotPiter ON Books
--AFTER DELETE
--AS
--BEGIN
--	IF EXISTS(SELECT * 
--				FROM deleted
--				WHERE Id_Press = 3)
--		BEGIN
--			PRINT N'Udalyat kniqi svyashennoqo izdatelstva Piter zapresheno'
--			ROLLBACK TRAN
--		END
--	ELSE
--		BEGIN
--			PRINT N'Lyubiye druqiye kniqi mojno udalit'
--		END
--END

--DELETE
--FROM Books
--WHERE Id = 3

--CREATE TRIGGER NoInsertLibrarian ON Libs
--INSTEAD OF INSERT
--AS
--BEGIN
--	PRINT N'THIS IS SPARTAAAAAAAAAAAAA!!! NO PASARAN!!!'
--END


--INSERT INTO Libs (Id, FirstName, LastName)
--VALUES(5, 'Xerxes', 'I')

--DECLARE @i AS int = 3

--WHILE @i < 100
--BEGIN
--	INSERT INTO Libs (Id, FirstName, LastName)
--	VALUES(@i, 'Xerxes', @i)
--	SET @i += 1
--END

--DROP TRIGGER NoInsertLibrarian


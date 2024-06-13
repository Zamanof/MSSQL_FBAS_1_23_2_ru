SELECT *
FROM Students

-- INSERT

/*
INSERT INTO <table_name> [col1, col1, ..., colN]
VALUES (val1, val2, ..., valN)
*/

-- INSERT Examples

--INSERT INTO Students (FirstName, LastName, Age, [Group])
--VALUES (N'Атилла', N'Исмаил', 15, N'1_23_2_ru')

--INSERT INTO Students (FirstName, LastName, Gender,  Age, [Group])
--VALUES (N'Ляман', N'Асланова', 'female' , 28, N'1_23_2_ru')

--INSERT INTO Students (FirstName, LastName, Age, [Group])
--VALUES (N'Джамал', N'Бабаев', 16, N'1_23_2_ru')

--SET IDENTITY_INSERT Students ON
--SET IDENTITY_INSERT Students OFF

--INSERT INTO Students (Id, FirstName, LastName, Age, [Group])
--VALUES (156, N'Алина', N'Оруджова', 16, N'1_23_2_ru')

-- UPDATE

--UPDATE Students
--SET Age += 1

--UPDATE Students
--SET Age = 18
--WHERE Id = 3

--UPDATE Students
--SET Age = 18, [Group] = 'Female_1', Gender = 'female'
--WHERE Gender LIKE N'female' OR Id = 156


-- DELETE

DELETE FROM Students
WHERE Id > 25
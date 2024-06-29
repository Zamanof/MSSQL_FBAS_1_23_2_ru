-- Stored Procedure - SP: Хранимые Процедуры - ХП
/*
	-	SP - именованный блок команд у которых могут быть
		входные и выходные параметры
	-	SP всегда возвращает код ошибки(если он есть),
		если нету нету возвращает 0

	-	Операции которые можно сделать с помощю SP
		+ вызывать их с помощью EXECUTE
		+ поменять данные в таблицах
		+ создавать и удалять индексы в таблицах
		+ вернуть выполненые запросы в клиентскую программу
	
	-	Примущества использования SP
		+ инкапсуляция T-SQL кода
		+ безопасность данных в БД
		+ универсальное использование данных
		+ создавать спланированные запросы 
			и этим получит оптимизацую и преиспользование
*/

/*
CREATE PROCEDURE proc_name
[param1 AS data_type [OUTPUT], ...]
AS
BEGIN
	procedure_body
END

EXEC proc_name
[param1 AS data_type [OUTPUT], ...]
*/

--CREATE PROC TakenBooks
--AS
--BEGIN
--	SELECT S.FirstName, S.LastName, B.[Name]
--	FROM Students AS S
--	JOIN S_Cards AS SC
--	ON S.Id = SC.Id_Student
--	JOIN Books AS B
--	ON B.Id = SC.Id_Book
--	WHERE SC.DateIn IS NULL
--END

--EXEC TakenBooks

--ALTER PROCEDURE  TakenBooks
--	@group AS nvarchar(50)
--AS
--BEGIN
--		SELECT S.FirstName, S.LastName, 
--			B.[Name] AS BookName, G.[Name] AS GroupName
--		FROM Students AS S
--		JOIN S_Cards AS SC
--		ON S.Id = SC.Id_Student
--		JOIN Books AS B
--		ON B.Id = SC.Id_Book
--		JOIN Groups AS G
--		ON G.Id = S.Id_Group
--		WHERE SC.DateIn IS NULL AND G.[Name] = @group
--END

--EXEC TakenBooks N'18P2'

-- через пременную
--DECLARE @group AS nvarchar(50)
--SET @group = N'18P2 '

--EXEC TakenBooks @group

--ALTER PROCEDURE  TakenBooks
--	@group AS nvarchar(50),
--	@count_studs AS int OUTPUT
--AS
--BEGIN
--		SELECT S.FirstName, S.LastName, 
--			B.[Name] AS BookName, G.[Name] AS GroupName
--		FROM Students AS S
--		JOIN S_Cards AS SC
--		ON S.Id = SC.Id_Student
--		JOIN Books AS B
--		ON B.Id = SC.Id_Book
--		JOIN Groups AS G
--		ON G.Id = S.Id_Group
--		WHERE SC.DateIn IS NULL AND G.[Name] = @group

--		SET @count_studs = @@ROWCOUNT
--END


--DECLARE @group AS nvarchar(50)
--SET @group = N'18P2'
--DECLARE @st_count AS int
--EXEC TakenBooks @group, @st_count OUTPUT
--SELECT @st_count AS StudentsCount


--CREATE PROC NeedCall
--@stud_id AS int
--AS
--BEGIN
--	DECLARE @books  AS int = 0
--	SELECT @books = COUNT(*)
--	FROM S_Cards
--	WHERE S_Cards.Id_Student = @stud_id AND S_Cards.DateIn IS NULL

--	IF @books > 0
--		BEGIN
--			PRINT 'Call!!!'
--			PRINT N'This student('
--			+ CAST(@stud_id AS nvarchar(5))
--			+ ') should return '
--			+ CAST(@books AS nvarchar(5))
--			+ ' books'
--		END
--END

--EXEC NeedCall 1

--DECLARE @stud_id AS int = 1

--WHILE @stud_id <= 25
--BEGIN
--	EXEC NeedCall @stud_id
--	SET @stud_id += 1
--END
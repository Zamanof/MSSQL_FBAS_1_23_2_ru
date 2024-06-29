-- Variables - переменные

/*
DECLARE @var_name AS data_type = value
*/
--DECLARE @num AS int = 8

--SELECT @num AS number

---- @num += 5    @num = @num + 5
--SET @num += 5
--DECLARE @num2 AS int
--SET @num2 = 36
--SELECT @num AS number, @num2 AS number2, @num +@num2 AS [Total]

--DECLARE @numb1 AS int = 25, @numb2 AS int = 65
--PRINT @numb1
--PRINT @numb2
--PRINT @numb1 + @numb2

-- IF, ELSE

--DECLARE @numb3 AS int = 25, @numb4 AS int = 895
--IF @numb3 = @numb4
--BEGIN
--	PRINT 'numbers are equal'
--	PRINT @numb3
--	PRINT @numb4
--END
--ELSE 
--	BEGIN
--		PRINT 'numbers are not equal'
--		PRINT @numb3
--		PRINT @numb4
--		IF @numb3 > @numb4
--			BEGIN
--				PRINT '@numb3 > @numb4'
--				PRINT @numb3
--				PRINT @numb4
--			END
--		ELSE
--			BEGIN
--				PRINT '@numb3 < @numb4'
--				PRINT @numb3
--				PRINT @numb4
--			END
--	END


-- WHILE loop
--DECLARE @number AS int = 0
--WHILE @number < 25
--BEGIN
--	PRINT @number
--	SET @number = @number + 1
--END


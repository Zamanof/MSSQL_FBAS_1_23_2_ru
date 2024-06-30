-- Transaction For Blog DB

--USE Blog

--GO 

--CREATE PROC AddCommentMark
--@comid AS int,
--@userid AS int,
--@mark AS int
--AS
--	BEGIN
--		BEGIN TRAN CommentMark

--		INSERT INTO CommentRating(IdComment, IdUser, Mark)
--		VALUES (@comid, @userid, @mark)

--		IF @@ERROR != 0
--			BEGIN
--				PRINT N'INSERT Operation ERROR!!!'
--				ROLLBACK TRAN CommentMark
--			END
--		ELSE
--			BEGIN
--				PRINT N'INSERT Operation OK!'
--				UPDATE Comments
--				SET Rating = (
--				SELECT CAST(SUM(Mark) AS float) / COUNT(*)
--				FROM Comments 
--				JOIN CommentRating 
--				ON Comments.Id = CommentRating.IdComment
--				WHERE Comments.Id = @comid
--				)
--				WHERE Comments.Id = @comid

--				IF @@ERROR != 0
--					BEGIN
--						PRINT 'UPDATE Operation ERROR!!!'
--						ROLLBACK TRAN CommentMark
--					END
--				ELSE
--					BEGIN
--						PRINT 'UPDATE Operation OK!'
--						COMMIT TRAN CommentMark
--					END
--			END
--END

EXEC AddCommentMark 1, 1, 4
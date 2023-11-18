CREATE PROCEDURE [dbo].[spAuthor_GetByBook]
	@BookId INT
AS
	BEGIN
		SET NOCOUNT ON;
		SELECT
			A.AuthorId,
			A.FirstName,
			A.LastName
		FROM Author A, BookAuthors BA
		WHERE
			BA.BookId = @BookId AND
			BA.AuthorId = A.AuthorId;
	END
RETURN 0

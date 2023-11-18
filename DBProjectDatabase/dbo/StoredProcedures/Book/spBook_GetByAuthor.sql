CREATE PROCEDURE [dbo].[spBook_GetByAuthor]
	@AuthorId INT
AS
	BEGIN
		SET NOCOUNT ON;
		SELECT
			B.BookId,
			B.Title,
			B.Description,
			B.CoverImage,
			B.PublicationDate,
			B.Price,
			B.QuantityAvailable,
			B.Publisher
		FROM Book B, BookAuthors BA
		WHERE B.BookId = BA.BookId AND @AuthorId = BA.AuthorId;
	END
RETURN 0

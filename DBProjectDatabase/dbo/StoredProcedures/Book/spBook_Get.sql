CREATE PROCEDURE [dbo].[spBook_Get]
	@BookId INT
AS
	BEGIN
	SET NOCOUNT ON;
	SELECT
		BookId,
		Title,
		Description,
		CoverImage,
		PublicationDate,
		Price,
		QuantityAvailable,
		Publisher
	FROM Book
	WHERE BookId = @BookId;
END
RETURN 0

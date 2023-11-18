CREATE PROCEDURE [dbo].[spBook_Update]
	@BookId INT,
	@Title VARCHAR(255),
	@Description TEXT,
	@CoverImage VARBINARY(MAX),
	@PublicationDate DATE,
	@Price DECIMAL(10, 2),
	@QuantityAvailable INT,
	@Publisher VARCHAR(255)
AS
BEGIN
		SET NOCOUNT ON;
		UPDATE Book SET
			Title = @Title,
			Description = @Description,
			CoverImage = @CoverImage,
			PublicationDate = @PublicationDate,
			Price = @Price,
			QuantityAvailable = @QuantityAvailable,
			Publisher = @Publisher
		WHERE BookId = @BookId;
	END
RETURN 0

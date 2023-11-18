CREATE PROCEDURE [dbo].[spBook_Insert]
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
		INSERT INTO Book (
			Title,
			Description,
			CoverImage,
			PublicationDate,
			Price,
			QuantityAvailable,
			Publisher
		) VALUES (
			@Title,
			@Description,
			@CoverImage,
			@PublicationDate,
			@Price,
			@QuantityAvailable,
			@Publisher
		);

		SELECT SCOPE_IDENTITY() AS BookId
	END
RETURN 0

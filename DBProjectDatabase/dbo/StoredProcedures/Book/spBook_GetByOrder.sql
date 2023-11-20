CREATE PROCEDURE [dbo].[spBook_GetByOrder]
	@OrderId INT
AS
	BEGIN
		SET NOCOUNT ON;
		SELECT
			B.BookId,
			Title,
			Description,
			CoverImage,
			PublicationDate,
			Price,
			QuantityAvailable,
			Publisher
		FROM Book B JOIN OrderItem O ON B.BookId = O.BookId
		WHERE O.OrderId = @OrderId
		ORDER BY B.BookId;
	END
RETURN 0

CREATE PROCEDURE [dbo].[spOrder_GetTotalPrice]
	@OrderId INT
AS
	BEGIN
	SET NOCOUNT ON;
	
	SELECT SUM(Quantity * Price) AS TotalPrice
	FROM OrderItem JOIN Book ON OrderItem.BookId = Book.BookId
	WHERE OrderId = @OrderId
END
RETURN 0

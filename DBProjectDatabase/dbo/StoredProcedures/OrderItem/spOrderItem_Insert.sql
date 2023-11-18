CREATE PROCEDURE [dbo].[spOrderItem_Insert]
	@OrderId INT,
	@BookId INT,
	@Quantity INT
AS
	BEGIN
		SET NOCOUNT ON;
		INSERT INTO [dbo].[OrderItem] (OrderId, BookId, Quantity) 
		VALUES (@OrderId, @BookId, @Quantity)
		
		SELECT SCOPE_IDENTITY() AS OrderId
	END
RETURN 0

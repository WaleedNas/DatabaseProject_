CREATE PROCEDURE [dbo].[spOrderItem_Update]
	@OrderId INT,
	@BookId INT,
	@Quantity INT
AS
	BEGIN
		SET NOCOUNT ON;
		UPDATE [dbo].[OrderItem] SET Quantity = @Quantity
		WHERE OrderId = @OrderId AND BookId = @BookId
	END
RETURN 0

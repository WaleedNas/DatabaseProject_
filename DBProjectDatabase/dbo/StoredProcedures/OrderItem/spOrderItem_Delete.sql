CREATE PROCEDURE [dbo].[spOrderItem_Delete]
	@OrderId INT,
	@BookId INT
AS
	BEGIN
		SET NOCOUNT ON;
		DELETE FROM [dbo].[OrderItem]
		WHERE OrderId = @OrderId AND BookId = @BookId
	END
RETURN 0

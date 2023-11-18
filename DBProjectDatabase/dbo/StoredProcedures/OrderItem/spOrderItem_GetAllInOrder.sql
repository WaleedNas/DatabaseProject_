CREATE PROCEDURE [dbo].[spOrderItem_GetAllInOrder]
	@OrderId INT
AS
	BEGIN
		SET NOCOUNT ON;
		SELECT
			OrderId,
			BookId,
			Quantity
		FROM OrderItem
		WHERE
			OrderId = @OrderId;
	END
RETURN 0

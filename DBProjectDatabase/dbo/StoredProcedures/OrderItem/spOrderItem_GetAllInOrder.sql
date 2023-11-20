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
			OrderId = @OrderId
		ORDER BY BookId;
	END
RETURN 0

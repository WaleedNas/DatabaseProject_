CREATE PROCEDURE [dbo].[spOrderItem_Get]
	@OrderId INT,
	@BookId INT
AS
	BEGIN
		SET NOCOUNT ON;
		SELECT
			OrderId,
			BookId,
			Quantity
		FROM OrderItem
		WHERE
			OrderId = @OrderId AND
			BookId = @BookId;
	END
RETURN 0

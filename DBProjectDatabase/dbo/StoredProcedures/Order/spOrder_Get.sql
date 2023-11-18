CREATE PROCEDURE [dbo].[spOrder_Get]
	@OrderId INT
AS
	BEGIN
		SET NOCOUNT ON;
		SELECT
			OrderId,
			UserId,
			TotalPrice,
			Status,
			OrderDate
		FROM [Order]
		WHERE OrderId = @OrderId
	END
RETURN 0

CREATE PROCEDURE [dbo].[spOrder_GetByUser]
	@UserId INT
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
		WHERE UserId = @UserId
	END
RETURN 0

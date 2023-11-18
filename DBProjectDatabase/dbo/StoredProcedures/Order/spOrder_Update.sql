CREATE PROCEDURE [dbo].[spOrder_Update]
	@OrderId INT,
	@UserId INT,
	@TotalPrice DECIMAL(10, 2),
	@Status INT,
	@OrderDate DATE
AS
	BEGIN
		SET NOCOUNT ON;
		UPDATE [Order] SET
			UserId = @UserId,
			TotalPrice = @TotalPrice,
			Status = @Status,
			OrderDate = @OrderDate
		WHERE OrderId = @OrderId

		SELECT @OrderId AS OrderId
	END
RETURN 0

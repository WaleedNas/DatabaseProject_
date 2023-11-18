CREATE PROCEDURE [dbo].[spOrder_Insert]
	@OrderId INT,
	@UserId INT,
	@TotalPrice DECIMAL(10, 2),
	@Status INT,
	@OrderDate DATE
AS
	BEGIN
	SET NOCOUNT ON;
		INSERT INTO [Order] (
			UserId,
			TotalPrice,
			Status,
			OrderDate
		) VALUES (
			@UserId,
			@TotalPrice,
			@Status,
			@OrderDate
		)
		SELECT SCOPE_IDENTITY() AS OrderId
	END
RETURN 0

CREATE PROCEDURE [dbo].[spOrder_Delete]
	@OrderId INT
AS
	BEGIN
		SET NOCOUNT ON;
		DELETE FROM [Order]
		WHERE OrderId = @OrderId
	END
RETURN 0

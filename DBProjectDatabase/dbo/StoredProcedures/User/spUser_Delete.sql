CREATE PROCEDURE [dbo].[spUser_Delete]
	@UserId INT
AS
	BEGIN
		SET NOCOUNT ON;
		DELETE FROM [dbo].[User] WHERE UserId = @UserId
	END
RETURN 0

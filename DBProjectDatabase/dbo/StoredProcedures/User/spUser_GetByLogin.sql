CREATE PROCEDURE [dbo].[spUser_GetByLogin]
	@Username VARCHAR(255),
	@Password VARCHAR(64)
AS
	BEGIN
		SET NOCOUNT ON;
		SELECT * FROM [User] WHERE Username = @Username AND PasswordHash = @Password
	END
RETURN 0

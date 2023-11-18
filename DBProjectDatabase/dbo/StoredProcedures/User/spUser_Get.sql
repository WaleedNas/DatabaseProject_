CREATE PROCEDURE [dbo].[spUser_Get]
	@UserId int
AS
	BEGIN
		SET NOCOUNT ON;
		SELECT 
			UserId,
			FirstName,
			LastName,
			Username,
			PasswordHash,
			Email,
			UserType
		FROM [dbo].[User] WHERE UserId = @UserId
	END	
RETURN 0

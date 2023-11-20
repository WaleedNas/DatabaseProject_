CREATE PROCEDURE [dbo].[spUser_GetAll]
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
		FROM [dbo].[User];
	END
RETURN 0

CREATE PROCEDURE [dbo].[spUser_Insert]
	@UserId INT,
	@FirstName VARCHAR(255),
	@LastName VARCHAR(255),
	@Username VARCHAR(255),
	@PasswordHash VARCHAR(64),
	@Email VARCHAR(255),
	@UserType INT
AS
	BEGIN
		INSERT INTO [dbo].[User] (FirstName, LastName, Username, PasswordHash, Email, UserType) 
		VALUES (@FirstName, @LastName, @Username, @PasswordHash, @Email, @UserType)
		
		SELECT SCOPE_IDENTITY() AS UserId
	END
RETURN 0

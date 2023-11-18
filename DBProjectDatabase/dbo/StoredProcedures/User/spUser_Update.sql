CREATE PROCEDURE [dbo].[spUser_Update]
	@UserId INT,
	@FirstName VARCHAR(255),
	@LastName VARCHAR(255),
	@Username VARCHAR(255),
	@PasswordHash VARCHAR(64),
	@Email VARCHAR(255),
	@UserType INT
AS
	BEGIN
		SET NOCOUNT ON;
		UPDATE [dbo].[User] 
		SET FirstName = @FirstName, LastName = @LastName, Username = @Username, PasswordHash = @PasswordHash, Email = @Email, UserType = @UserType
		WHERE UserId = @UserId

	END
RETURN 0

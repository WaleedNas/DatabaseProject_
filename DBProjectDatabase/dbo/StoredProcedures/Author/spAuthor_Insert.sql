CREATE PROCEDURE [dbo].[spAuthor_Insert]
	@AuthorId INT,
	@FirstName VARCHAR(255),
	@LastName VARCHAR(255),
	@Description TEXT
AS
	BEGIN
		SET NOCOUNT ON;
		INSERT INTO [dbo].[Author] (FirstName, LastName, Description) 
		VALUES (@FirstName, @LastName, @Description)
		
		SELECT SCOPE_IDENTITY() AS AuthorId
	END
RETURN 0

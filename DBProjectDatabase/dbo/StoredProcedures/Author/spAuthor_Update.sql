CREATE PROCEDURE [dbo].[spAuthor_Update]
	@AuthorId INT,
	@FirstName VARCHAR(255),
	@LastName VARCHAR(255),
	@Description TEXT
AS
	BEGIN
		SET NOCOUNT ON;
		UPDATE [dbo].[Author]
		SET
			FirstName = @FirstName,
			LastName = @LastName,
			Description = @Description
		WHERE
			AuthorId = @AuthorId
	END
RETURN 0

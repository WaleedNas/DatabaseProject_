CREATE PROCEDURE [dbo].[spAuthor_GetByName]
	@FirstName VARCHAR(255),
	@LastName VARCHAR(255)
AS
	BEGIN
		SET NOCOUNT ON;
		SELECT
			AuthorId,
			FirstName,
			LastName,
			Description
		FROM Author
		WHERE
			FirstName = @FirstName AND LastName = @LastName;
	END
RETURN 0

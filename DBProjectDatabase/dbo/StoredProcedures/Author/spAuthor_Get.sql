CREATE PROCEDURE [dbo].[spAuthor_Get]
	@AuthorId INT
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
			AuthorId = @AuthorId;
	END
RETURN 0

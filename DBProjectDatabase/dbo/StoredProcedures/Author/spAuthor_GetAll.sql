CREATE PROCEDURE [dbo].[spAuthor_GetAll]
AS
	BEGIN
		SET NOCOUNT ON;
		SELECT
			AuthorId,
			FirstName,
			LastName,
			Description
		FROM Author;
	END
RETURN 0

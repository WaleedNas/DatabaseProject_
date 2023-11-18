CREATE PROCEDURE [dbo].[spAuthor_Delete]
	@AuthorId INT
AS
	BEGIN
		SET NOCOUNT ON;
		DELETE FROM [dbo].[Author]
		WHERE AuthorId = @AuthorId
	END
RETURN 0

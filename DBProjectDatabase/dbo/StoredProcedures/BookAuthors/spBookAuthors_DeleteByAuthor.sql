CREATE PROCEDURE [dbo].[spBookAuthors_DeleteByAuthor]
	@AuthorId INT
AS
BEGIN
	SET NOCOUNT ON
	DELETE FROM BookAuthors
	WHERE @AuthorId = AuthorId;
END
RETURN 0

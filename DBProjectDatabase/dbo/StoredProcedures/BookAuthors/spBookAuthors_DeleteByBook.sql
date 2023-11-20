CREATE PROCEDURE [dbo].[spBookAuthors_DeleteByBook]
	@BookId INT
AS
BEGIN
	SET NOCOUNT ON
	DELETE FROM BookAuthors
	WHERE @BookId = BookId;
END
RETURN 0

CREATE PROCEDURE [dbo].[spBookAuthors_Insert]
	@BookId INT,
	@AuthorId INT
AS
	BEGIN
		SET NOCOUNT ON;
		INSERT INTO [dbo].[BookAuthors]
			([BookId], [AuthorId])
		VALUES
			(@BookId, @AuthorId)

		SELECT SCOPE_IDENTITY();
	END
RETURN 0

﻿CREATE PROCEDURE [dbo].[spBook_GetAll]
AS
	BEGIN
	SET NOCOUNT ON;
	SELECT * FROM Book
	END
RETURN 0

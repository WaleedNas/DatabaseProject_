CREATE TABLE [dbo].[BookAuthors]
(
	[BookId] INT NOT NULL,
	[AuthorId] INT NOT NULL,
	PRIMARY KEY (BookId, AuthorId),
	FOREIGN KEY (BookId) REFERENCES [Book](BookId),
	FOREIGN KEY (AuthorId) REFERENCES [Author](AuthorId)
)

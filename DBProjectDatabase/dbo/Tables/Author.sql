CREATE TABLE [dbo].[Author]
(
	[AuthorId] INT PRIMARY KEY IDENTITY,
	[FirstName] VARCHAR(255) NOT NULL,
	[LastName] VARCHAR(255) NOT NULL,
	[Description] TEXT
)

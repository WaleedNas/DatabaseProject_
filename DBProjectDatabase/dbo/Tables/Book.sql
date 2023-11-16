CREATE TABLE Book (
  BookId INT PRIMARY KEY IDENTITY,
  Title VARCHAR(255) NOT NULL,
  Description TEXT,
  CoverImage VARBINARY(MAX),
  PublicationDate DATE,
  Price DECIMAL(10, 2) NOT NULL,
  QuantityAvailable INT,
  Publisher VARCHAR(255) NOT NULL,
);
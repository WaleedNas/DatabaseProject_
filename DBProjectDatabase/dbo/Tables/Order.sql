CREATE TABLE [Order] (
  OrderId INT PRIMARY KEY IDENTITY,
  UserId INT,
  TotalPrice DECIMAL(10, 2),
  Status INT,
  OrderDate DATE,
  FOREIGN KEY (UserId) REFERENCES [User](UserId)
);
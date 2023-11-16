CREATE TABLE OrderItem (
  OrderId INT,
  BookId INT,
  Quantity INT DEFAULT 1,
  PRIMARY KEY (OrderId, BookId),
  FOREIGN KEY (OrderId) REFERENCES [Order](OrderId),
  FOREIGN KEY (BookId) REFERENCES [Book](BookId)
);
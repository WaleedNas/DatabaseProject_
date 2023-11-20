using DataAccess.Data.Interfaces;
using DataAccess.DBAccess;
using DataAccess.Models;

namespace DataAccess.Data
{
    public class BookData : DataContext, IBookData
    {
        public BookData(ISqlDataAccess db) : base(db) { }

        public async Task<Book?> GetBook(int bookId)
        {
            var results = await _db.LoadData<Book, dynamic>("dbo.spBook_Get", new
            {
                BookId = bookId
            });

            if (!results.Any())
                throw new BookNotFoundException("Book not found");
             
            return results.FirstOrDefault();
        }

        public async Task<IEnumerable<Book>> GetBooks()
        {
            var results = await _db.LoadData<Book, dynamic>("dbo.spBook_GetAll", new {});

            if (!results.Any())
                throw new BookNotFoundException("Book not found");

            return results;
        }

        public async Task<IEnumerable<Book>> GetBooksByAuthor(int authorId)
        {
            var results = await _db.LoadData<Book, dynamic>("dbo.spBook_GetByAuthor", new
            {
                AuthorId = authorId
            });

            if (!results.Any())
                throw new BookNotFoundException("Book not found");

            return results;
        }

        public async Task<IEnumerable<Book>> GetBooksByOrder(int orderId)
        {
            var results = await _db.LoadData<Book, dynamic>("dbo.spBook_GetByOrder", new
            {
                OrderId = orderId
            });

            if (!results.Any())
                throw new BookNotFoundException("Book not found");

            return results;
        }

        public async Task<int> InsertBook(Book book)
        {
            return await _db.SaveData("dbo.spBook_Insert", book); // returns new book id
        }

        public async Task<int> InsertBookAuthor(int bookId, int authorId)
        {
            return await _db.SaveData("dbo.spBookAuthors_Insert", 
                new {BookId = bookId, AuthorId = authorId}); // returns new bookauthor id
        }

        public async Task<int> UpdateBook(Book book)
        {
            return await _db.SaveData("dbo.spBook_Update", book); // returns book id
        }

        public async Task<int> DeleteBook(int bookId)
        {
            await _db.SaveData("dbo.spBookAuthors_DeleteByBook", new { BookId = bookId });
            return await _db.SaveData("dbo.spBook_Delete", new { BookId = bookId }); // returns book id
        }

        // Book not found exception
        public class BookNotFoundException : Exception
        {
            public BookNotFoundException() { }
            public BookNotFoundException(string message) : base(message) { }
        }

    }

}

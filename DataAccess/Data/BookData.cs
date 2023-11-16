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

        public async Task<int> InsertBook(Book book)
        {
            return await _db.SaveData("dbo.spBook_Insert", book); // returns new book id
        }

        public async Task<int> UpdateBook(Book book)
        {
            return await _db.SaveData("dbo.spBook_Update", book); // returns book id
        }

        public async Task<int> DeleteBook(int bookId)
        {
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

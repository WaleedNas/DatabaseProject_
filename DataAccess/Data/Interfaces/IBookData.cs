using DataAccess.Models;

namespace DataAccess.Data.Interfaces
{
    public interface IBookData
    {
        Task<Book?> GetBook(int bookId);
        Task<IEnumerable<Book>> GetBooks();
        Task<int> InsertBook(Book book);
        Task<int> UpdateBook(Book book);
        Task<int> DeleteBook(int bookId);
    }
}

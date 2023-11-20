using DataAccess.Models;

namespace DataAccess.Data.Interfaces
{
    public interface IBookData
    {
        Task<Book?> GetBook(int bookId);
        Task<IEnumerable<Book>> GetBooks();
        Task<IEnumerable<Book>> GetBooksByAuthor(int authorId);
        Task<IEnumerable<Book>> GetBooksByOrder(int orderId);
        Task<int> InsertBook(Book book);
        Task<int> InsertBookAuthor(int bookId, int authorId);
        Task<int> UpdateBook(Book book);
        Task<int> DeleteBook(int bookId);
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess.Models;

namespace DataAccess.Data.Interfaces
{
    public interface IAuthorData
    {
        Task<Author?> GetAuthor(int authorId);
        Task<Author?> GetAuthorByName(string firstName, string lastName);
        Task<IEnumerable<Author>> GetAuthorsOfBook(int bookId);
        Task<int> InsertAuthor(Author author);
        Task<int> UpdateAuthor(Author author);
        Task<int> DeleteAuthor(int authorId);
        Task<IEnumerable<Author>> GetAuthors();

    }
}

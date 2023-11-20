using DataAccess.DBAccess;
using DataAccess.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess.Data.Interfaces;
using static DataAccess.Data.UserData;

namespace DataAccess.Data;
public class AuthorData : DataContext, IAuthorData
{
    public AuthorData(ISqlDataAccess db) : base(db) { }

    public async Task<Author?> GetAuthor(int authorId)
    {
        var results = await _db.LoadData<Author, dynamic>("dbo.spAuthor_Get", new
        {
            AuthorId = authorId
        });

        if (!results.Any())
            throw new AuthorNotFoundException("Author not found");

        return results.FirstOrDefault();
    }

    public async Task<Author?> GetAuthorByName(string firstName, string lastName)
    {
        var results = await _db.LoadData<Author, dynamic>("dbo.spAuthor_GetByName", new
        {
            FirstName = firstName,
            LastName = lastName
        });

        if (!results.Any())
            throw new AuthorNotFoundException("Author not found");

        return results.FirstOrDefault();
    }

    public async Task<IEnumerable<Author>> GetAuthorsOfBook(int bookId)
    {
        var results = await _db.LoadData<Author, dynamic>("dbo.spAuthor_GetByBook", new { BookId = bookId });
        if (!results.Any())
            throw new AuthorNotFoundException("Author not found");
        return results;
    }

    public async Task<IEnumerable<Author>> GetAuthors()
    {
        var results = await _db.LoadData<Author, dynamic>("dbo.spAuthor_GetAll", new { });

        if (!results.Any())
            throw new AuthorNotFoundException("Author not found");

        return results;
    }

    public async Task<int> InsertAuthor(Author author)
    {
        // Check if author already exists
        try
        {
            if (await GetAuthorByName(author.FirstName, author.LastName) != null)
                throw new AuthorAlreadyExistsException("User already exists");
        }
        catch (AuthorNotFoundException e) {}

        return await _db.SaveData("dbo.spAuthor_Insert", author); // returns new author id
    }

    public async Task<int> UpdateAuthor(Author author)
    {
        return await _db.SaveData("dbo.spAuthor_Update", author); // returns author id
    }

    public async Task<int> DeleteAuthor(int authorId)
    {
        await _db.SaveData("dbo.spBookAuthors_DeleteByAuthor", new { AuthorId = authorId });
        return await _db.SaveData("dbo.spAuthor_Delete", new { AuthorId = authorId });
    }

    // Author already exists exception
    public class AuthorAlreadyExistsException : Exception
    {
        public AuthorAlreadyExistsException() { }
        public AuthorAlreadyExistsException(string message) : base(message) { }
    }

    // Author not found exception
    public class AuthorNotFoundException : Exception
    {
        public AuthorNotFoundException() { }
        public AuthorNotFoundException(string message) : base(message) { }
    }

}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;
using Microsoft.VisualBasic;
using DataAccess.Data.Interfaces;
using DataAccess.DBAccess;
using DataAccess.Models;
using static DataAccess.Data.BookData;

namespace DataAccess.Data;
public class UserData : DataContext, IUserData
{
    public UserData(ISqlDataAccess db) : base(db) { }

    public async Task<User?> GetUser(int userId)
    {
        var results = await _db.LoadData<User, dynamic>("dbo.spUser_Get", new
        {
            UserId = userId
        });

        if(!results.Any())
            throw new UserNotFoundException("User not found");

        return results.FirstOrDefault();
    }

    public async Task<User?> GetUserByLogin(string username, string password)
    {
        var results = await _db.LoadData<User, dynamic>("dbo.spUser_GetByLogin", new
        {
            Username = username,
            Password = password
        });

        if(!results.Any())
            throw new UserNotFoundException("User not found");

        return results.FirstOrDefault();
    }

    public async Task<IEnumerable<User>> GetUsers()
    {
        var results = await _db.LoadData<User, dynamic>("dbo.spUser_GetAll", new { });

        if (!results.Any())
            throw new UserNotFoundException("User not found");

        return results;
    }

    public async Task<int> InsertUser(User user)
    {
        // Check if user already exists
        try
        {
            if (await GetUserByLogin(user.Username, user.PasswordHash) != null)
                throw new UserAlreadyExistsException("User already exists");
        }
        catch(UserNotFoundException e) {}
        
        return await _db.SaveData("dbo.spUser_Insert", user); // returns new user id
    }

    public async Task<int> UpdateUser(User user)
    {
        return await _db.SaveData("dbo.spUser_Update", user); // returns user id
    }

    public async Task<int> DeleteUser(int userId)
    {
        return await _db.SaveData("dbo.spUser_Delete", new { UserId = userId }); // returns user id
    }

    // User already exists exception
    public class UserAlreadyExistsException : Exception
    {
        public UserAlreadyExistsException() { }
        public UserAlreadyExistsException(string message) : base(message) { }
    }

    // User not found exception
    public class UserNotFoundException : Exception
    {
        public UserNotFoundException() { }
        public UserNotFoundException(string message) : base(message) { }
    }

}

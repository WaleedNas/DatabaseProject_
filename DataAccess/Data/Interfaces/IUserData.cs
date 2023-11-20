using DataAccess.Models;

namespace DataAccess.Data.Interfaces;
public interface IUserData
{
    Task<User?> GetUser(int userId);
    Task<User?> GetUserByLogin(string username, string password);
    Task<int> InsertUser(User user);
    Task<int> UpdateUser(User user);
    Task<int> DeleteUser(int userId);

}
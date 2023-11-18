namespace DataAccess.Models
{
    public class User
    {
        public int UserId { get; set; }
        public string? FirstName { get; set; }
        public string? LastName { get; set; }
        public string Username { get; set; } = "";
        public string Email { get; set; } = "";
        public string PasswordHash { get; set; } = "";
        public UserType? UserType { get; set; }
    }

    public enum UserType
    {
        Admin,
        User
    }
}

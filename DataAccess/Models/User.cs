namespace DataAccess.Models
{
    public class User
    {
        public int UserId { get; set; }
        public string? Fname { get; set; }
        public string? Lname { get; set; }
        public string Username { get; set; } = "";
        public string Email { get; set; } = "";
        public string Password { get; set; } = "";
        public UserType? Type { get; set; }
    }

    public enum UserType
    {
        Admin,
        User
    }
}

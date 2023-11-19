namespace DataAccess.Models
{
    public class Book
    {
        public int BookId { get; set; }
        public string? Title { get; set; }
        public string? Description { get; set; }
        public byte[]? CoverImage { get; set; }
        public DateTime? PublicationDate { get; set; }
        public decimal Price { get; set; }
        public int QuantityAvailable { get; set; }
        public string? Publisher { get; set; }
    }
}

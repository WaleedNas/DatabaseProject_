using DataAccess.Models;

namespace DataAccess.Data.Interfaces
{
    public interface IOrderItemData
    {
        Task<OrderItem?> GetOrderItem(int orderId, int bookId);
        Task<IEnumerable<OrderItem>> GetOrderItems(int orderId);
        Task<int> InsertOrderItem(OrderItem order);
        Task<int> UpdateOrderItem(OrderItem order);
        Task<int> DeleteOrderItem(int orderId);
    }
}

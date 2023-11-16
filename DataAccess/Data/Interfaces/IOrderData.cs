using DataAccess.Models;

namespace DataAccess.Data.Interfaces
{
    public interface IOrderData
    {
        Task<Order?> GetOrder(int orderId);
        Task<IEnumerable<Order>> GetOrders();
        Task<int> InsertOrder(Order order);
        Task<int> UpdateOrder(Order order);
        Task<int> DeleteOrder(int orderId);
    }
}

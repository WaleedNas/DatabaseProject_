using DataAccess.Data.Interfaces;
using DataAccess.DBAccess;
using DataAccess.Models;
using static DataAccess.Data.BookData;
using System.Net;

namespace DataAccess.Data
{
    public class OrderData : DataContext, IOrderData
    {
        public OrderData(ISqlDataAccess db) : base(db)
        {
        }

        public async Task<Order?> GetOrder(int orderId)
        {
            var results = await _db.LoadData<Order, dynamic>("dbo.spOrder_Get", new
            {
                OrderId = orderId
            });

            if (!results.Any())
                throw new OrderNotFoundException("Order not found");

            return results.FirstOrDefault();
        }

        public async Task<IEnumerable<Order>> GetOrdersByUser(int userId)
        {
            var results = await _db.LoadData<Order, dynamic>("dbo.spOrder_GetByUser", new
            {
                UserId = userId
            });

            if (!results.Any())
                throw new OrderNotFoundException("Order not found");

            return results;
        }

        public async Task<int> InsertOrder(Order order)
        {
            return await _db.SaveData("dbo.spOrder_Insert", order); // returns new order id
        }

        public async Task<int> UpdateOrder(Order order)
        {
            return await _db.SaveData("dbo.spOrder_Update", order); // returns order id
        }

        public async Task<int> DeleteOrder(int orderId)
        {
            return await _db.SaveData("dbo.spOrder_Delete", new { OrderId = orderId });
        }

        // Order not found exception
        public class OrderNotFoundException : Exception
        {
            public OrderNotFoundException() { }
            public OrderNotFoundException(string message) : base(message) { }
        }
    }
}

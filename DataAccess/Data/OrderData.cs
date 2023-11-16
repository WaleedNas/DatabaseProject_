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

        public async Task<IEnumerable<Order>> GetOrders()
        {
            var results = await _db.LoadData<Order, dynamic>("dbo.spOrder_GetAll", new { });

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
            return await _db.SaveData("dbo.spOrder_Delete", new { OrderId = orderId }); // returns order id
        }

        // Order not found exception
        public class OrderNotFoundException : Exception
        {
            public OrderNotFoundException() { }
            public OrderNotFoundException(string message) : base(message) { }
        }
    }
}

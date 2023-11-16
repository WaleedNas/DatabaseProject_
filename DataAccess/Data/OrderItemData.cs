using DataAccess.Data.Interfaces;
using DataAccess.DBAccess;
using DataAccess.Models;
using static DataAccess.Data.OrderData;

namespace DataAccess.Data
{
    public class OrderItemData : DataContext, IOrderItemData
    {
        public OrderItemData(ISqlDataAccess db) : base(db)
        {
        }

        public async Task<OrderItem?> GetOrderItem(int orderId, int bookId)
        {
            var results = await _db.LoadData<OrderItem, dynamic>("dbo.spOrderItem_Get", new
            {
                OrderId = orderId,
                BookId = bookId
            });

            if (!results.Any())
                throw new OrderItemNotFoundException("Order item not found");

            return results.FirstOrDefault();
        }

        public async Task<IEnumerable<OrderItem>> GetOrderItems(int orderId)
        {
            var results = await _db.LoadData<OrderItem, dynamic>("dbo.spOrderItem_GetAllInOrder", new
            {
                OrderId = orderId
            });

            if (!results.Any())
                throw new OrderItemNotFoundException("Order item not found");

            return results;
        }

        public async Task<int> InsertOrderItem(OrderItem order)
        {
            return await _db.SaveData("dbo.spOrderItem_Insert", order); // returns new book id
        }

        public async Task<int> UpdateOrderItem(OrderItem order)
        {
            return await _db.SaveData("dbo.spOrderItem_Update", order); // returns book id
        }

        public async Task<int> DeleteOrderItem(int orderId)
        {
            return await _db.SaveData("dbo.spOrderItem_Delete", new {OrderId = orderId}); // returns book id
        }

        // Order not found exception
        public class OrderItemNotFoundException : Exception
        {
            public OrderItemNotFoundException() { }
            public OrderItemNotFoundException(string message) : base(message) { }
        }
    }
}

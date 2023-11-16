using DataAccess.DBAccess;

namespace DataAccess.Data;

public class DataContext
{
    protected readonly ISqlDataAccess _db;

    public DataContext(ISqlDataAccess db)
    {
        _db = db;
    }
}
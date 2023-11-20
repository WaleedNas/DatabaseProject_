using DataAccess.Models;

namespace DatabaseProject_.Util
{
    public class ImageConverter
    {
        public static string BytesToSrc(byte[] bytes)
        {
            return $"data:image/Bmp;base64,{Convert.ToBase64String(bytes)}";
        }
    }
}

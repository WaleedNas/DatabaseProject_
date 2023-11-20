using DataAccess.Models;

namespace DatabaseProject_.Util
{
    public class ImageConverter
    {
        public static string BytesToSrc(byte[] bytes)
        {
            if (bytes == null || bytes.Length == 0)
                return "";
            return $"data:image/Bmp;base64,{Convert.ToBase64String(bytes)}";
        }
    }
}

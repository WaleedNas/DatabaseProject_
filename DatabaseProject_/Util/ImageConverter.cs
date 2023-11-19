
namespace DatabaseProject_.Util
{
    public class ImageConverter
    {
        public static byte[] ImageToByteArray(System.Drawing.Image imageIn)
        {
            using (var ms = new MemoryStream())
            {
                imageIn.Save(ms, imageIn.RawFormat);
                return ms.ToArray();
            }
        }

        // Image path to byte array
        public static byte[] ImageToByteArray(string imagePath)
        {
            var image = System.Drawing.Image.FromFile(imagePath);
            return ImageToByteArray(image);
        }

        public static string ByteArrayToBase64(byte[] byteArrayIn)
        {
            return System.Convert.ToBase64String(byteArrayIn);
        }
    }
}

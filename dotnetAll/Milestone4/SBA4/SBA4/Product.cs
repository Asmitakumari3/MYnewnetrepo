using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SBA4
{
    internal class Product
    {
        public int pId { get; set; }
        public string pName { get; set; }

        public int pPrice { get; set; }

        public int pAvailableQty { get; set; }

        public string pDescription { get; set; }

        public bool pIsInStock { get; set; }

        public List<Product> getAllProducts()
        {

            string url = "https://localhost:7267/api/Products";
            HttpClient client = new HttpClient();
            client.DefaultRequestHeaders.Clear();
            client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));

            var call = client.GetAsync(url);

            var response = call.Result;

            if (response.StatusCode == System.Net.HttpStatusCode.OK)
            {
                var data = response.Content;

                List<Product> result = data.ReadAsAsync<List<Product>>().Result;


                call.Wait();
                return result;

            }


            else
            {
                throw new Exception("could not get the data,please contact admin");
            }
        }
    }
}
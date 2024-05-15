using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SBA4
{
    internal class Customer
    {
        public int Oid { get; set; }
        public int Cid { get; set; }

        public int Pid { get; set; }
        public string Ostatus { get; set; }

        public List<Customer> GetCustomerbyid(int id)
        {

            string url = $"https://localhost:7267/api/Orders/getbyCustomerId/{id}";
            HttpClient client = new HttpClient();
            client.DefaultRequestHeaders.Clear();
            client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));

            var call = client.GetAsync(url);

            var response = call.Result;

            if (response.StatusCode == System.Net.HttpStatusCode.OK)
            {
                var data = response.Content;

                List<Customer> result = data.ReadAsAsync<List<Customer>>().Result;


                call.Wait();
                return result;

            }


            if (response.StatusCode == System.Net.HttpStatusCode.NotFound)
            {
                throw new Exception("Data may have been deleted");


            }

            else
            {
                throw new Exception("could not get the data,please contact admin");
            }

        }

    }



}



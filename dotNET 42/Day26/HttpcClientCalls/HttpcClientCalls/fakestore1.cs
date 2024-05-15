using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HttpcClient_Calls
{
    public class FakestoreAPI
    {
        public int id { get; set; }
        public string title{ get; set; }
        public string price { get; set; }
        public string description { get; set; }
        public string image { get; set; }
        //public string rating { get; set; }



        public List<FakestoreAPI> ConsumePostData()
        {
            string url = "https://fakestoreapi.com/products";

            
            HttpClient client = new HttpClient();

            client.DefaultRequestHeaders.Clear();

            client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));

            var call = client.GetAsync(url);
            var response = call.Result;

            if (response.StatusCode == System.Net.HttpStatusCode.OK)
            {
                var data = response.Content;
                List<FakestoreAPI> commentdata = data.ReadAsAsync<List<FakestoreAPI>>().Result;
                call.Wait();
                return commentdata;
            }
            else
            {
                throw new Exception("Could not get the data, plzz contact admin");
            }
        }
    }
}


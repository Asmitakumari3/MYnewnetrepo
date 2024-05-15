using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HttpcClientCalls
{
    public class CommentAPI
    {
        public int postId { get; set; }
        public int id { get; set; }
        public string name { get; set; }
        public string email { get; set; }
        public string body { get; set; }


        public List<CommentAPI> ConsumePostData()
        {
            string url = "https://jsonplaceholder.typicode.com/comments";
            HttpClient client = new HttpClient();

            client.DefaultRequestHeaders.Clear();

            client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));

            var call = client.GetAsync(url);
            var response = call.Result;

            if (response.StatusCode == System.Net.HttpStatusCode.OK)
            {
                var data = response.Content;
                List<CommentAPI> commentdata = data.ReadAsAsync<List<CommentAPI>>().Result;
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
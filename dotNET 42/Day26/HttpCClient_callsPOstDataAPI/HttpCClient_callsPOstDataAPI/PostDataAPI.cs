namespace HttpClient_Calls
{
    public class PostDataAPI
    {
        public int userId { get; set; }
        public int id { get; set; }
        public string title { get; set; }
        public string body { get; set; }

        public List<PostDataAPI> ConsumePostData()
        {
            string url = "https://jsonplaceholder.typicode.com/posts";
            HttpClient client = new HttpClient();

            client.DefaultRequestHeaders.Clear();

            client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));

            var call = client.GetAsync(url);
            var response = call.Result;

            if (response.StatusCode == System.Net.HttpStatusCode.OK)
            {
                var data = response.Content;
                List<PostDataAPI> postdata = data.ReadAsAsync<List<PostDataAPI>>().Result;
                call.Wait();
                return postdata;
            }
            else
            {
                throw new Exception("Could not get the data, plzz contact admin");
            }
        }
    }
}

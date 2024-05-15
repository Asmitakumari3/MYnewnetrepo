using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace netflixAPI
{
    public class NetflixAPIclass
    {
       
    
        #region Properties
            public int movieId { get; set; }
            public string movieName { get; set; }
            public string movieCategory { get; set; }
            public string movieState { get; set; }
            public string movieActorName { get; set; }
            public string movieActress { get; set; }
            #endregion

            #region GetAllMovies
            public List<NetflixAPIclass> ConsumePostData()
            {
            string url = "https://localhost:7177/all2";


                HttpClient client = new HttpClient();
                client.DefaultRequestHeaders.Clear();

                client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));

                var call = client.GetAsync(url);
                var response = call.Result;

                if (response.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    var data = response.Content;
                    List<NetflixAPIclass> postdata = data.ReadAsAsync<List<NetflixAPIclass>>().Result;
                    call.Wait();
                    return postdata;
                }
                else
                {
                    throw new Exception("Could not get the data, plzz contact admin");
                }
            }
            #endregion
            public NetflixAPIclass GetMovieByName(string name)
            {
                string url = "https://localhost:7177/api/Action/movieByName/" + name;
                HttpClient client = new HttpClient();

                client.DefaultRequestHeaders.Clear();

                client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));

                var call = client.GetAsync(url);
                var response = call.Result;

                if (response.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    var data = response.Content;
                NetflixAPIclass result = data.ReadAsAsync<NetflixAPIclass>().Result;
                    call.Wait();
                    return result;
                }
                else if (response.StatusCode == System.Net.HttpStatusCode.NotFound)
                {
                    throw new Exception("Movie Not Found");

                }
                throw new Exception("Please Contact Admin");
            }
        }
    }

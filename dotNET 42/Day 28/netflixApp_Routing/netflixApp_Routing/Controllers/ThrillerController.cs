using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace netflixApp_Routing.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ThrillerController : ControllerBase
    {
        MovieDetail mObj;
        public ThrillerController(MovieDetail mObjREF)
        {
            mObj = mObjREF;
        }

        [HttpGet("ViewAllMovies")]
        public IActionResult ViewAllMovies()
        {
            var data = mObj.ViewAllMovies();
            return Ok(data);
        }

        [HttpGet("movieByCategory/{category}")]
        public IActionResult GetMovieByCategory(string category)
        {
            var data = mObj.GetMovieByCategory(category);
            return Ok(data);
        }
        [HttpGet("movieByState/{state}")]
        public IActionResult GetMovieByState(string state)
        {
            var data = mObj.GetMovieByState(state);
            return Ok(data);
        }
        [HttpGet("movieByName/{name}")]
        public IActionResult GetMovieByName(string name)
        {
            var data = mObj.GetMovieByName(name);
            return Ok(data);
        }

        [HttpPost("AddMovie")]
        public IActionResult AddNewMovie(int id, string name, string category, string state, string actorName, string actressName)
        {
            MovieDetail newMovie = new MovieDetail()
            {
                movieId = id,
                movieName = name,
                movieCategory = category,
                movieState = state,
                movieActorName = actorName,
                movieActress = actressName
            };
            var data = mObj.AddNewMovie(newMovie);
            return Created("", data);
        }

        [HttpDelete("delete/{id}")]
        public IActionResult DeleteMovie(int id)
        {
            var data = mObj.DeleteMovie(id);
            return Accepted(data);
        }

        [HttpPut("updateMovie")]
        public IActionResult UpdateMovie(int id, string name, string category, string state, string actorName, string actressName)
        {
            MovieDetail movie = new MovieDetail()
            {
                movieId = id,
                movieName = name,
                movieCategory = category,
                movieState = state,
                movieActorName = actorName,
                movieActress = actressName
            };

            var data = mObj.UpdateMovie(movie);
            return Accepted(data);
        }
    }
}

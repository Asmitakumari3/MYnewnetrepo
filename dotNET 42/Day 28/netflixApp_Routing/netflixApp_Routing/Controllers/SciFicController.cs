using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace netflixApp_Routing.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SciFicController : ControllerBase
    {
        MovieDetail mObj;
        public SciFicController(MovieDetail mObjREF)
        {
            mObj = mObjREF;
        }

       // [HttpGet("ViewAllMovies")]
        [HttpGet]
        [Route("/all")]


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
        public IActionResult AddNewMovie(MovieDetail movie)
        {
            var data = mObj.AddNewMovie(movie);
            return Created("", data);
        }

        [HttpDelete("delete/{id}")]
        public IActionResult DeleteMovie(int id)
        {
            var data = mObj.DeleteMovie(id);
            return Accepted(data);
        }

        [HttpPut("updateMovie")]
        public IActionResult UpdateMovie(MovieDetail movie)
        {
            var data = mObj.UpdateMovie(movie);
            return Accepted(data);
        }



    }
}

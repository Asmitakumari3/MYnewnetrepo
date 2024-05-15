
using Microsoft.AspNetCore.Http;

using Microsoft.AspNetCore.Mvc;

namespace greetingsAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class greetingsController : Controller
    {

        //we write methods
        [HttpGet]
        public IActionResult Index()
        {
            return Ok("Hello and Welcome to WebAPI development");
        }
    }
}

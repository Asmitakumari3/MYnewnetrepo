using Microsoft.AspNetCore.Mvc;

namespace greetingsAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class greetings1Controller : ControllerBase
    {
        [HttpGet]
        public IActionResult Greetuser()
        {
            return Ok("Hello and Welcome to WebAPI development");
        }
        [HttpGet("greetguest")]
        public IActionResult GreetsUser(string name) 
        {
            string message = "Hello" + name;
            return Ok(message);

        }
       // [HttpGet("addition")]
            //return Ok("Hello your" + OperationName + "result is :" + result);

            //}


        
    }
}


using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace GREET5.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class greetingsController : ControllerBase
    {

        //we write methods    
        //this is a function, technically called as action method in webapi        
        [HttpGet]
        public IActionResult Greetuser()
        {
            return Ok("Hello and Welcome to WebAPI development");
            //ok is for return code 200

        }

        //you can have only1 HttpGet method in  controller, which is a default method
        //if you need more, then you have to give it a accessible name on Http

        [HttpGet("greetguest")]
        public IActionResult GreetGuest(string name)
        {
            string message = "Hello " + name;
            return Ok(message);
        }

        [HttpGet("addition")]
        public IActionResult AddNumbers(int num1, int num2)
        {
            int addResult = num1 + num2;
            return Ok(addResult);
        }

        [HttpGet("calculate")]
        public IActionResult Calculations(int num1, int num2, string operationName)
        {
            double result = 0;
            if (operationName == "add")
            {
                result = num1 + num2;
            }
            else if (operationName == "sub")
            {
                result = num1 - num2;
            }
            else if (operationName == "mul")
            {
                result = num1 * num2;
            }
            else if (operationName == "div")
            {
                result = num1 / num2;
            }
            return Ok("Hello your " + operationName + " result is :" + result);
        }










    }
}

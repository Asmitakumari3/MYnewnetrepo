using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace greetingsAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FriendsController : ControllerBase
    {
        List<string> friends = new List<string>() { "Rohit","Rahul","Mansi","Divya","Pooja"}
    }
}

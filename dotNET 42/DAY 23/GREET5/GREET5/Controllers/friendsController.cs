using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace GREET5.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class friendsController : ControllerBase
    {
        static List<string> friends = new List<string>() { "Rohit", "Rahul", "Mansi", "Divya", "Pooja", "Akshay" };




        #region Get Methods

        [HttpGet("allfriends")]
        public IActionResult GetAllFriends()
        {
            return Ok(friends);
        }


        [HttpGet("friendbyposition/{position}")]
        public IActionResult GetFriendByPosition(int position)
        {
            if (position > friends.Count)
            {
                return NotFound("No Friend at this position found");
            }
            else
            {
                string friendByPosition = friends[position];
                return Ok(friendByPosition);
            }
        }


        [HttpGet("friendsbyorder/{order}")]
        public IActionResult GetFriendsByOrder(int order)
        {
            if (order == 1)
            {
                var data = from f in friends
                           orderby f
                           select f;
                return Ok(data);
            }
            else
            {
                var data = from f in friends
                           orderby f descending
                           select f;
                return Ok(data);
            }
        }

        [HttpGet("total")]
        public IActionResult GetTotalFriends()
        {
            int total = friends.Count;
            return Ok(total);
        }

        [HttpGet("findfriend/{chars}")]
        public IActionResult GetFriendByChar(string chars)
        {
            var data = from f in friends
                       where f.StartsWith(chars)
                       select f;

            return Ok(data);
        }

        #endregion


        [HttpPost("addnewfriend/{newFriendName}")]
        public IActionResult AddNewFriend(string newFriendName)
        {
            friends.Add(newFriendName);
            return Created("", newFriendName + " is been Added as your friend");
        }


        [HttpDelete("deletebyposition/{index}")]
        public IActionResult DeleteFriend(int index)
        {
            friends.RemoveAt(index);
            return Accepted("Friend Deleted from your list");
        }

        [HttpDelete("deleteByName/{name}")]
        public IActionResult DeletefriendByName(string name)
        {
            var idx = 0;
            idx = friends.IndexOf(name);
            if (idx == 0)
            {
                return NotFound("Sorry no friend with name " + name + " is found in the name");
            }
            else
            {
                friends.RemoveAt(idx);
                return Accepted("Friend deleted from list");
            }
        }

        [HttpPut("editfriend/{position}/{newName}")]
        public IActionResult RenameAFriend(int position, string newName)
        {
            friends[position] = newName;
            return Ok("Friend name changed");
        }

        [HttpGet("bestfriend")]
        public IActionResult GetBestFriendDetails() 
        {
            Friend bestFriend = new Friend()
            {
                friendName = "Shanti",
                friendEmail = "shanti@gmail.com",
                friendMobile = "989887675",
                friendAddress = "Somewhere",
                friendNickName = "shantikala"
            };
            return Ok(bestFriend);

        }

    }




  }

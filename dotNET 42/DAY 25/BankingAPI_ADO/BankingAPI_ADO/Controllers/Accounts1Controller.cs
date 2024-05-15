using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace BankingAPI_ADO.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class accountsController : ControllerBase
    {
        Accounts accObj;
        public accountsController(Accounts accRef)
        {
            accObj = accRef;
        }

        [HttpGet("showallaccounts")]
        public IActionResult getAllAccounts()
        {
            var data = accObj.allAccounts();

            return Ok(data);
        }

        [HttpGet("accounts-by-no/{accNo}")]
        public IActionResult getAccountsbyAccNo(int accNo)
        {
            Accounts acc = accObj.GetAccountByNo(accNo);

            if (acc == null)
            {
                return BadRequest("No Account Found");
            }
            else
            {
                return Ok(acc);
            }
        }

        [HttpPost("add-account")]
        public IActionResult AddAccount(int no)
        {
            Accounts dummy = new Accounts()
            {
                accNo = Convert.ToInt32(no),
                accName = "Test",
                accType = "Savings",
                accBalance = 500,
                accIsActive = true,
                accBranch = 10
            };

            int resp = accObj.AddAccount(dummy);

            if (resp == 0)
            {
                return BadRequest("Acc not created");
            }
            else
            {
                return Created("", $"Acc with acc no: {no}");
            }
        }
    }
}

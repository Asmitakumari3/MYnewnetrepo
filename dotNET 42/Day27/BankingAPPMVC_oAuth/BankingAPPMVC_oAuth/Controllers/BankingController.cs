using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace BankingAPPMVC_oAuth.Controllers
{
    public class BankingController : Controller
    {
        public IActionResult AboutBanking()
        {
            return View();
        }
        public IActionResult History()
        {
            return View();
        }
        [Authorize]
        public IActionResult TransferFunds()
        {
            return View();
        }
        [Authorize]
        public IActionResult DownloadStatement()
        {
            return View();
        }

    }
}

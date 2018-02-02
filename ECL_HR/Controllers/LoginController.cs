using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ECL_HR.Models;

namespace ECL_HR.Controllers
{
    public class LoginController : Controller
    {
        ECL_HR.Controllers.DBController dblayer = new ECL_HR.Controllers.DBController();
        // GET: Login
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public JsonResult userlogin(userController us)
        {
            string result = Convert.ToString(dblayer.login(us));
            if (result == "1")
            {
                Session["login"] = us.Code;
            }
            else
            {
                result = "Employee code or password wrong";
            }
            return Json(result, JsonRequestBehavior.AllowGet);

        }

    }
}
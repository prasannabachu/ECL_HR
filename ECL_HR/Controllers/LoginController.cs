using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ECL_HR.Models;
using System.Web.Security;

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
        [AllowAnonymous]
        public JsonResult userlogin(userController us)
        {
            string result = Convert.ToString(dblayer.login(us));
            if (result == "1")
            {
                FormsAuthentication.SetAuthCookie(us.Code.ToString(), false);

                var authTicket = new FormsAuthenticationTicket(1, us.Code.ToString(), DateTime.Now, DateTime.Now.AddMinutes(20), false, us.Code.ToString());
                string encryptedTicket = FormsAuthentication.Encrypt(authTicket);
                var authCookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptedTicket);
                HttpContext.Response.Cookies.Add(authCookie);
                //return RedirectToAction("Index", "Home");
                //Session["login"] = us.Code;
            }
            else
            {
                result = "Employee code or password wrong";
            }
            return Json(result, JsonRequestBehavior.AllowGet);

        }

        //
        // POST: /Account/LogOff
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public void LogOff()
        {
            //AuthenticationManager.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
            FormsAuthentication.SignOut();
            //return RedirectToAction("Login", "Login");
        }
    }
}
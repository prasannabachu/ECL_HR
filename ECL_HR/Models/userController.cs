using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ECL_HR.Models
{
    public class userController : Controller
    {
        // GET: user
       public int Code { get; set; }
        public string EmpPassword { get; set; }
    }
}
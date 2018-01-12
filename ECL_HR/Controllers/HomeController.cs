using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Configuration;
using System.Web.Script.Serialization;
using Newtonsoft.Json;
using System.Data;

namespace ECL_HR.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        public ActionResult home()
        {
            getEmployeeData();
            return View();
        }
        public string getEmployeeData()
        {
            string JSONString = string.Empty;

            string query = "select Code,FullName,Designation,Manager,BusinessUnit from Employee";
            using (SqlCommand cmd = new SqlCommand(query,con))
            {
                con.Open();
                SqlDataAdapter da=new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                JSONString = JsonConvert.SerializeObject(dt);
              
            }
            return JSONString;
        }
         
    }
}
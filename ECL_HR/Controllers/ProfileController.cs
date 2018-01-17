using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ECL_HR.Controllers
{
    
    public class ProfileController : Controller
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        // GET: Profile
        public ActionResult Profile()
        {
            //getCommunicationDetails();
            return View();
        }

        public string getCommunicationDetails()
        {
            string JSONString = string.Empty;

            string query = "select Type,HouseNo,Street1,Street2,Country,State,City,District,PinCode,EmpId from Address where EmpId=1";
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                JSONString = JsonConvert.SerializeObject(dt);
            }
            return JSONString;
        }
    }
}
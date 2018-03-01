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
    public class LeaveController : Controller
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        // GET: Leave
        public ActionResult Leave()
        {
            return View();
        }

        public string GetLeaveDetails()
        {
            string JSONString = string.Empty;
            string query3 = "USP_GET_LEAVE_DETAILS";
            using (SqlCommand cmd2 = new SqlCommand(query3, con))
            {
                cmd2.CommandType = CommandType.StoredProcedure;
                //cmd2.Parameters.AddWithValue("pcurrentDate", System.DateTime.Now.ToShortDateString());
                con.Open();
                SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                DataTable dt2 = new DataTable();
                da2.Fill(dt2);
                con.Close();
                JSONString = JsonConvert.SerializeObject(dt2);
            }
            return JSONString;
        }
    }
}
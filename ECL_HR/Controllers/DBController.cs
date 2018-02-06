using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using ECL_HR.Models;
using System.Web.Mvc;
using System.Data.SqlClient;

namespace ECL_HR.Controllers
{
    public class DBController : Controller
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        // GET: DB
        public int  login(userController us)
        {
     
            SqlCommand com = new SqlCommand("usp_user_login",con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@code", us.Code);
            com.Parameters.AddWithValue("@password" ,us.EmpPassword);
            SqlParameter oblogin = new SqlParameter();
            oblogin.ParameterName = "@Isvalid";
            oblogin.Direction = ParameterDirection.Output;
            oblogin.SqlDbType = SqlDbType.Bit;
            com.Parameters.Add(oblogin);
            con.Open();
            com.ExecuteNonQuery();
            int res = Convert.ToInt32(oblogin.Value);
            con.Close();

            return res;
        }
    }
}
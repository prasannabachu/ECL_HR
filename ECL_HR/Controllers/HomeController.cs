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
using System.Text;
using System.Net.Mail;
using System.Diagnostics;

namespace ECL_HR.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        // GET: Home
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        
        public ActionResult home()
        {
            //getEmployeeData();
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

        //[HttpPost]
        public void SendEmail()
        {
            string sendemail = ConfigurationManager.AppSettings["SendEmail"];
            if (sendemail.ToLower() == "true")
            {
                MailMessage mailMessage = new MailMessage("bachuvlnk.prasanna@gmail.com", "bachuvlnk.prasanna@gmail.com");
                mailMessage.Subject = "Creating of the mail setup in .Net";
                mailMessage.Body = "sample masseage for creating the send email";
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.Credentials = new System.Net.NetworkCredential()
                {
                    UserName = "bachuvlnk.prasanna@gmail.com",
                    Password = "Sravani1994@."
                };
                smtpClient.EnableSsl = true;
                smtpClient.Send(mailMessage);
            }
          
        }
         
    }
}
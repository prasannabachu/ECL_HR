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
        public ActionResult Language()
        {
            //getCommunicationDetails();
            return View();
        }
        public ActionResult Personal()
        {
            //getCommunicationDetails();
            return View();
        }
        public ActionResult Family()
        {
            return View();
        }
       public ActionResult Education()
        {
            return View();
        }
        public string getLanguageDropdownDetails()
        {
            string JSONString = string.Empty;
            string query3 = "exec USP_GET_DROPDOWN_DETAILS 'Language'";
            using (SqlCommand cmd2 = new SqlCommand(query3, con))
            {
                con.Open();
                SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                DataTable dt2 = new DataTable();
                da2.Fill(dt2);
                JSONString = JsonConvert.SerializeObject(dt2);

            }
            return JSONString;
        }

        public string getLanguageDetails()
        {
            string JSONString = string.Empty;

            string query1 = "select EL.[Id], D.[DisplayText] Language,[IsRead],[IsWrite],[IsSpeak],[PrimaryLanguage] From EmpLanguage EL inner join Dropdown D on D.Id=EL.LanguageId where EmpId=1";
            using (SqlCommand cmd1 = new SqlCommand(query1, con))
            {
                con.Open();
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
                JSONString = JsonConvert.SerializeObject(dt1);
            }
            return JSONString;
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
        public string getPersonalDetails()
        {
            string JSONString = string.Empty;

            string query = "select E.id,FullName,DOB,G.id Gender_id,G.DisplayText Gender,B.id BloodGrp_id,B.DisplayText BloodGroup,M.id Marital_id,M.DisplayText MaritalStatus,N.id Natioanality_id,N.DisplayText Nationality,Mobile,PersonalEmail,OfficialEmail from Employee E inner join Dropdown M on M.id=E.MaritalStatus inner join Dropdown G on G.id=E.Gender inner join Dropdown N on N.id=E.Nationality inner join Dropdown B on B.id=E.BloodGroup";
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
        [HttpPost]
        public string savePersonalDetails(PersonalDetailsModel obj)
        {
            string JSONString = string.Empty;
            SqlCommand com = new SqlCommand("USP_SAVE_PERSONALINFO", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@pId", obj.id);
            com.Parameters.AddWithValue("@pLEGALNAME", obj.FullName);
            com.Parameters.AddWithValue("@pDOB", obj.DOB);
            com.Parameters.AddWithValue("@pGENDER", obj.Gender_id);
            com.Parameters.AddWithValue("@pMarital_Status", obj.Marital_id);
            com.Parameters.AddWithValue("@pNationality", obj.Natioanality_id);
            con.Open();
            com.ExecuteNonQuery();
            return JSONString;
        }
    }


}
public class PersonalDetailsModel
{
    public string FullName { set; get; }
    public string id { set; get; }
    //public  string FullName;
    public string DOB { set; get; }
    public string GENDER { set; get; }
    public string MaritalStatus { set; get; }
    public string Nationality { set; get; }
    public string Gender_id { set; get; }
    public string Marital_id { set; get; }
    public string BloodGrp_id { get; set; }
    public string Natioanality_id { get; set; }
}





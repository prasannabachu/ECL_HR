﻿
using ECL_HR.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;

namespace ECL_HR.Controllers
{
    [Authorize]
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
                con.Close();
                JSONString = JsonConvert.SerializeObject(dt2);

            }
            return JSONString;
        }
        public string getFamilyGridDetails()
        {
            string JSONString = string.Empty;
            string query3 = "USP_GET_FAMILYDETAILS 1";
            using (SqlCommand cmd2 = new SqlCommand(query3, con))
            {
                con.Open();
                SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                DataTable dt2 = new DataTable();
                da2.Fill(dt2);
                con.Close();
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
                con.Close();
                JSONString = JsonConvert.SerializeObject(dt1);
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
                con.Close();
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
            con.Close();
            return JSONString;
        }


        public string getDropDownListValues(string param)
        {
            string JSONString = string.Empty;
            string query = "EXEC USP_GET_DROPDOWN_DETAILS '"+ param + "'";

            using (SqlCommand cmd = new SqlCommand(query.ToString(), con))
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dtDdlData = new DataTable();
                da.Fill(dtDdlData);
                con.Close();
                JSONString = JsonConvert.SerializeObject(dtDdlData);
            }
            return JSONString;
        }

        #region Communication

        public string getCommunicationDetails(string Type)
        {
            string JSONString = string.Empty;

            using (SqlCommand cmd = new SqlCommand("USP_GET_COMMUNICATIONDETAILS", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("pEmpID", 1);
                cmd.Parameters.AddWithValue("pType", Type);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();
                JSONString = JsonConvert.SerializeObject(dt);
            }
            return JSONString;
        }
        public string getStatesforselectedCountry(int selectedvalue)
        {
            string JSONString = string.Empty;
            using (SqlCommand cmd = new SqlCommand("USP_GET_DROPDOWN_DETAILS", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("pITEM", "State");
                cmd.Parameters.AddWithValue("pParentID", selectedvalue);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();
                JSONString = JsonConvert.SerializeObject(dt);
            }
            return JSONString;
        }

        [HttpPost]
        public string saveCommunicationDetails(communicationDetailsModel obj, string Type)
        {
            int empID;
            string JSONString = string.Empty;
            using (SqlCommand com = new SqlCommand("USP_SAVE_COMMUNICATIONINFO", con))
            {
                if (obj.EmpId == 0)
                {
                    empID = 1;
                }
                else
                {
                    empID = obj.EmpId;
                }
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("pId", obj.Id);
                com.Parameters.AddWithValue("pEmpId", empID);
                com.Parameters.AddWithValue("pHouseNo", ((object)obj.HouseNo) ?? DBNull.Value);
                com.Parameters.AddWithValue("pStreet1", ((object)obj.Street1) ?? DBNull.Value);
                com.Parameters.AddWithValue("pStreet2", ((object)obj.Street2) ?? DBNull.Value);
                com.Parameters.AddWithValue("pCountryId", obj.CountryId);
                com.Parameters.AddWithValue("pStateId", obj.StateId);
                com.Parameters.AddWithValue("pCity", ((object)obj.City) ?? DBNull.Value);
                com.Parameters.AddWithValue("pDistrict", ((object)obj.District) ?? DBNull.Value);
                com.Parameters.AddWithValue("pPinCode", ((object)obj.PinCode) ?? DBNull.Value);
                com.Parameters.AddWithValue("pHomePhone", ((object)obj.HomePhone) ?? DBNull.Value);
                com.Parameters.AddWithValue("pType", ((object)obj.Type) ?? Type);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                return JSONString;
            }
        }

        #endregion Communication
    }
}
public class PersonalFamilyDetails
{
    public string Id { set; get; }
    public string firstname { set; get; }
    public string middlename { set; get; }
    public string lastname { set; get; }
    public string dateofbirth { set; get; }
    public string age { set; get; }
    public string bloodgroup_id { set; get; }
    public string gender_id { set; get; }
    public string relation_id { set; get; }
    public string birthplace { set; get; }
    public string occupation_id { set; get; }
    public string Isdependent { set; get; }
    public string Ismediclaim { set; get; }
    public string country_of_birth_id { set; get; }
    public string nationality_id { set; get; }
    public string aadhaar { set; get; }
    public string EmpId { set; get; }
}




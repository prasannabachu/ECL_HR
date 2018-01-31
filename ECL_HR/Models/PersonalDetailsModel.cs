using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ECL_HR.Models
{
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
}
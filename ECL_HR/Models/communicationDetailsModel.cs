using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ECL_HR.Models
{
    public class communicationDetailsModel
    {
        public int Id { get; set; }
        public int EmpId { get; set; }
        public string HouseNo { get; set; }
        public string Street1 { get; set; }
        public string Street2 { get; set; }
        public int CountryId { get; set; }
        public int StateId { get; set; }
        public string City { get; set; }
        public string District { get; set; }
        public string PinCode { get; set; }
        public string HomePhone { get; set; }
        public string Type { get; set; }
    }
}
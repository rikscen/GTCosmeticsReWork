using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace CoreFramework.Master_Manager
{
    public class UserUnit
    {
        public string UserIndex {get; set;}
        public string UserName {get; set;}
        public string Password {get; set;}
        public string AuthLevel { get; set; }
        public string CompanyName { get; set; }
        public string FullName { get; set; }
        public string BranchIndex {get; set;}
        public string Gender {get; set;}
        public string Client {get; set;}
        public string Client2 {get; set;}
        public string Client3 {get; set;}
        public string Client4 {get; set;}
        public string Client5 { get; set; }
        public string UserType { get; set; }
        public string Status {get; set;}
        public DateTime DateStamp {get; set;}
    }
    public class UserManager : DataSupport 
    {
        public void RegisterUser(UserUnit oUnit)
        {
            Dictionary<String, Object> Unit = new Dictionary<String, Object>();
            String SQL;

            Unit.Add("UserName", oUnit.UserName);
            Unit.Add("Password", oUnit.Password);
            Unit.Add("FullName", oUnit.FullName);
            Unit.Add("AuthLevel", oUnit.AuthLevel);
            Unit.Add("BranchIndex", oUnit.BranchIndex);
            Unit.Add("Gender", oUnit.Gender);
            Unit.Add("Soft1", oUnit.Client);
            Unit.Add("Soft2", oUnit.Client2);
            Unit.Add("Soft3", oUnit.Client3);
            Unit.Add("Soft4", oUnit.Client4);
            Unit.Add("Soft5", oUnit.Client5);
            Unit.Add("UserType", oUnit.UserType);
            Unit.Add("Status", oUnit.Status);
            Unit.Add("DateStamp",oUnit.DateStamp);

            SQL = GetInsert("BASE_User", Unit);
            RunNonQuery(SQL);
        }
        public UserUnit UserInfo(string SQLCommand)
        {
            UserUnit oUnit = new UserUnit();
            DataTable DtaTable = new DataTable();

            DtaTable = RunDataSet(SQLCommand).Tables[0];
            foreach (DataRow Drow in DtaTable.Rows)
            {
                oUnit.UserIndex  = Drow["No"].ToString();
                oUnit.UserName = Drow["UserName"].ToString();
                oUnit.Password = Drow["Password"].ToString();
                oUnit.FullName = Drow["FullName"].ToString();
                oUnit.AuthLevel = Drow["AuthLevel"].ToString();
                oUnit.BranchIndex = Drow["BranchCode"].ToString();
                oUnit.Gender = Drow["Gender"].ToString();
                oUnit.Client = Drow["Soft1"].ToString();
                oUnit.Client2 = Drow["Soft2"].ToString();
                oUnit.Client3 = Drow["Soft3"].ToString();
                oUnit.Client4 = Drow["Soft4"].ToString();
                oUnit.Client4 = Drow["Soft5"].ToString();
                oUnit.Status = Drow["Status"].ToString();
                oUnit.DateStamp = Convert.ToDateTime(Drow["DateStamp"]);
            }
            return oUnit;
        }
    }
}

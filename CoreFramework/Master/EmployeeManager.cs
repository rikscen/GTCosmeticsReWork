using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace CoreFramework.Master
{     
    public class EmployeeUnit
    {
        private string _EmpIndex;
        private string _LastName;
        private string _FirstName;
        private string _MiddleName;
        private string _Position;
        private string _Address;
        private bool _stat;

        public string EmpIndex
        { get { return _EmpIndex; } set { _EmpIndex = value; } }

        public string LastName
        { get { return _LastName; } set { _LastName = value; } }
        
        public string FirstName
        { get { return _FirstName; } set { _FirstName = value; } }
        
        public string MiddleName
        { get { return _MiddleName; } set { _MiddleName = value; } }
        
        public string Position
        { get { return _Position; } set { _Position = value; } }
        
        public string Address
        { get { return _Address; } set { _Address = value; } }
        
        public bool Status
        { get { return _stat; } set { _stat = value; } }
    }

    public class EmployeeManager : DataSupport
    {
        public void AddEmployee(EmployeeUnit oUnit)
        {
            Dictionary<String, Object> Unit = new Dictionary<String, Object>();
            //String SQL;

            Unit.Add("EmpIndex", oUnit.EmpIndex);
            Unit.Add("Lname", oUnit.LastName);
            Unit.Add("Fname", oUnit.FirstName);
            Unit.Add("MI", oUnit.MiddleName);
            Unit.Add("Pos", oUnit.Position);
            Unit.Add("Add", oUnit.Address);
            Unit.Add("stat", oUnit.Status);
            
            //oCommand.ExecuteNonQuery();
        }

        public void UpdateEmployee(EmployeeUnit oUnit)
        {
            Dictionary<String, Object> Unit = new Dictionary<String, Object>();
            //String SQL;

            Unit.Add("EmpIndex", oUnit.EmpIndex);
            Unit.Add("Lname", oUnit.LastName);
            Unit.Add("Fname", oUnit.FirstName);
            Unit.Add("MI", oUnit.MiddleName);
            Unit.Add("Pos", oUnit.Position);
            Unit.Add("Address", oUnit.Address);
            Unit.Add("Stat", oUnit.Status);
            
            //oCommand.ExecuteNonQuery();
        }
        public EmployeeUnit GetEmpInfo(string SQLCommand)
        { 
            EmployeeUnit oUnit = new EmployeeUnit();
            //SqlCeCommand oCommand = new SqlCeCommand();
            //SqlCeDataReader oReader = null;

            //oCommand.Connection = this.Connection;
            //oCommand.CommandText = SQLCommand;
            //oReader = oCommand.ExecuteReader();
            //while (oReader.Read())
            //{
            //    oUnit.EmpIndex = oReader["EmpIndex"].ToString();
            //    oUnit.LastName = oReader["LastName"].ToString();
            //    oUnit.FirstName = oReader["FirstName"].ToString();
            //    oUnit.MiddleName = oReader["MiddleName"].ToString();
            //    oUnit.Position = oReader["Position"].ToString();
            //    oUnit.Address = oReader["Address"].ToString();
            //    oUnit.Status = Convert.ToBoolean(oReader["Status"]);
            //}
            return oUnit;
        }
    }
            
}

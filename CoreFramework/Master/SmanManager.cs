using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace CoreFramework.Master
{
    public class SmanUnit
    {
        private string _SmanCode;
        private string _Name;
        private string _CntactNo;
        private string _Status;

        public string SmanCode
        { get { return _SmanCode; } set { _SmanCode = value; } }

        public string Name
        { get { return _Name; } set { _Name = value; } }

        public string CntactNo
        { get { return _CntactNo; } set { _CntactNo = value; } }

        public string Status
        { get { return _Status; } set { _Status = value; } }
    }
    public class SmanManager:DataSupport 
    {
        public void AddSalesMan(SmanUnit oUnit) 
        {
            Dictionary<String, Object> Unit = new Dictionary<String, Object>();
            //String SQL;
            
            Unit.Add("SmanCode", oUnit.SmanCode);
            Unit.Add("Name", oUnit.Name);
            Unit.Add("CntactNo", oUnit.CntactNo);
            Unit.Add("Status", oUnit.Status);

            //oCommand.ExecuteNonQuery();
        }
        public void UpdateSalesMan(SmanUnit oUnit)
        {
            Dictionary<String, Object> Unit = new Dictionary<String, Object>();
            //String SQL;
            
            Unit.Add("SmanCode", oUnit.SmanCode);
            Unit.Add("Name", oUnit.Name);
            Unit.Add("CntactNo", oUnit.CntactNo);
            Unit.Add("Status", oUnit.Status);
            
            //oCommand.ExecuteNonQuery();
        }
        public SmanUnit GetSmanInfo(string SQLCommand)
        { 
            SmanUnit oUnit = new SmanUnit();
            //SqlCeCommand oCommand = new SqlCeCommand();
            //SqlCeDataReader oReader = null;

            //oCommand.Connection = this.Connection;
            //oCommand.CommandText = SQLCommand;
            //oReader = oCommand.ExecuteReader();
            //while (oReader.Read())
            //{
            //    oUnit.SmanCode = oReader["SmanCode"].ToString();
            //    oUnit.Name = oReader["Name"].ToString();
            //    oUnit.CntactNo = oReader["CntactNo"].ToString();
            //    oUnit.Status = oReader["Status"].ToString();
            //}

            return oUnit;
        }
    }
}

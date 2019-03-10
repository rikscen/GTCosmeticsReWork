using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CoreFramework
{
    public class LogsUnit
    {
	    public string _LogIndex     { get; set; }			
	    public string ProdIndex     { get; set; }			
	    public string DocType       { get; set; }			
	    public string DocNo         { get; set; }				
	    public string DocDate       { get; set; }			
	    public string OriginalValue { get; set; }		
	    public string ReviseValue   { get; set; }		
	    public string MonthCycle    { get; set; }		
	    public string YearCycle     { get; set; }			
	    public string UserN         { get; set; }				
	    public string UserNAuth     { get; set; }			
	    public string DateStamp     { get; set; }			
	    public string remarks       { get; set; }			
	    public string reason        { get; set; }			
	    public string Status        { get; set; }
        public string SQL           { get; set; }

        public void InsertLogs(LogsUnit oUnit)
        {
            Dictionary<String, Object> Unit = new Dictionary<String, Object>();

            Unit.Add("ProdIndex", oUnit.ProdIndex);
            Unit.Add("DocType", oUnit.DocType);
            Unit.Add("DocNo", oUnit.DocNo);
            Unit.Add("DocDate", oUnit.DocDate);
            Unit.Add("OriginalValue", oUnit.OriginalValue);
            Unit.Add("ReviseValue", oUnit.ReviseValue);
            Unit.Add("MonthCycle", oUnit.MonthCycle);
            Unit.Add("YearCycle", oUnit.YearCycle);
            Unit.Add("reason", oUnit.reason);
            Unit.Add("Remarks", oUnit.remarks);
            Unit.Add("UserN", oUnit.UserN);
            Unit.Add("UserNAuth", oUnit.UserNAuth);
            Unit.Add("DateStamp", oUnit.DateStamp);
            Unit.Add("Status", oUnit.Status);

            oUnit.SQL = DataSupport.GetInsert("Logs_Product", Unit);
            //Utils.ExecuteStoredProcedureNonQuery("[dbo].[sp_LOGS_InsertLOGS]", Unit);            
        }
    }

}

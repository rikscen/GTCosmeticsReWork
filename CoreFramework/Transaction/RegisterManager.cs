using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CoreFramework.Transaction
{
    public class RegisterUnit
    {
        public String DocNo { get; set; }
        public String DocDate { get; set; }
        public String DocType { get; set; }
        public String SourceCode { get; set; }
        public String RefName { get; set; }
        public String RefNo { get; set; }
        public String RefDate { get; set; }
        public String SmanCode { get; set; }
        public String ApprovedBy { get; set; }
        public String DeliverdBy { get; set; }
        public String CheckBy { get; set; }
        public String GrossAmt { get; set; }
        public String DiscAmt { get; set; }
        public String VatAmt { get; set; }
        public String NetAmt { get; set; }
        public String MonthCycle { get; set; }
        public String YearCycle { get; set; }
        public String Terms { get; set; }
        public String Zone { get; set; }
        public String DelDate { get; set; }
        public String DelStat { get; set; }
        public String DelType { get; set; }
        public String DelRemarks { get; set; }
        public String isCovered { get; set; }
        public String isChargable { get; set; }
        public String RetCode { get; set; }
        public String RetRemarks { get; set; }
        public String RetStat { get; set; }
        public String Discnt01 { get; set; }
        public String Discnt02 { get; set; }
        public String Discnt03 { get; set; }
        public String Discnt04 { get; set; }
        public String Discnt05 { get; set; }
        public String Remarks { get; set; }
        public String RefName1 { get; set; }
        public String RefName2 { get; set; }
        public String RefName3 { get; set; }
        public String RefNo1 { get; set; }
        public String RefNo2 { get; set; }
        public String RefNo3 { get; set; }
        public String Totalcs { get; set; }
        public String Totalpc { get; set; }
        public String UserN { get; set; }
        public String DateStamp { get; set; }
        public String Status { get; set; }
        public String PriceType { get; set; }
        public String TABLENAME { get; set; }
        public String SQL { get; set; }
    }
    public class RegisterManager : DataSupport
    {
        public void RegisterInsert(RegisterUnit oUnit)
        {
            Dictionary<String, Object> Unit = new Dictionary<String, Object>();
            String SQL;

            Unit.Add("DocNo", oUnit.DocNo);
            Unit.Add("DocDate", oUnit.DocDate);
            Unit.Add("DocType", oUnit.DocType);
            Unit.Add("SourceCode", oUnit.SourceCode);
            Unit.Add("RefName", oUnit.RefName);
            Unit.Add("RefNo", oUnit.RefNo);
            Unit.Add("RefDate", oUnit.RefDate);
            Unit.Add("SmanCode", oUnit.SmanCode);
            Unit.Add("ApprovedBy", oUnit.ApprovedBy);
            Unit.Add("DeliverdBy", oUnit.DeliverdBy);
            Unit.Add("CheckBy", oUnit.CheckBy);
            Unit.Add("GrossAmt", oUnit.GrossAmt);
            Unit.Add("DiscAmt", oUnit.DiscAmt);
            Unit.Add("VatAmt", oUnit.VatAmt);
            Unit.Add("NetAmt", oUnit.NetAmt);
            Unit.Add("MonthCycle", oUnit.MonthCycle);
            Unit.Add("YearCycle", oUnit.YearCycle);
            Unit.Add("Terms", oUnit.Terms);
            Unit.Add("Zone", oUnit.Zone);
            Unit.Add("RetCode", oUnit.RetCode);
            Unit.Add("RetRemarks", oUnit.RetRemarks);
            Unit.Add("RetStat", oUnit.RetStat);
            Unit.Add("Discnt01", oUnit.Discnt01);
            Unit.Add("Discnt02", oUnit.Discnt02);
            Unit.Add("Discnt03", oUnit.Discnt03);
            Unit.Add("Discnt04", oUnit.Discnt04);
            Unit.Add("Discnt05", oUnit.Discnt05);
            Unit.Add("Remarks", oUnit.Remarks);
            Unit.Add("RefName1", oUnit.RefName1);
            Unit.Add("RefName2", oUnit.RefName2);
            Unit.Add("RefName3", oUnit.RefName3);
            Unit.Add("RefNo1", oUnit.RefNo1);
            Unit.Add("RefNo2", oUnit.RefNo2);
            Unit.Add("RefNo3", oUnit.RefNo3);
            Unit.Add("Totalpc", oUnit.Totalpc);
            Unit.Add("UserN", oUnit.UserN);
            Unit.Add("DateStamp", oUnit.DateStamp);
            Unit.Add("Status", oUnit.Status);
            Unit.Add("DelDate", oUnit.DelDate);
            Unit.Add("DelType", oUnit.DelType);
            Unit.Add("DelRemarks", oUnit.DelRemarks);
            Unit.Add("isCovered", oUnit.isCovered);
            Unit.Add("isChargable", oUnit.isChargable);
            Unit.Add("PriceType", oUnit.PriceType);

            oUnit.SQL = GetInsert(oUnit.TABLENAME, Unit);
            //RunNonQuery(SQL);
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace CoreFramework.Transaction
{
    public class ReturnMasterUnit
    {
        public String RetNo { get; set; }
        public String RetDate { get; set; }
        public String TypeOfRet { get; set; }
        public String RetType { get; set; }
        public String DocSource { get; set; }
        public String RefName { get; set; }
        public String RefNo { get; set; }
        public String RefDate { get; set; }
        public String Remarks { get; set; }
        public String DelBy { get; set; }
        public String AppBy { get; set; }
        public String CheckBy { get; set; }
        public String GrossAmt { get; set; }
        public String DiscAmt { get; set; }
        public String VatAmt { get; set; }
        public String NetAmt { get; set; }
        public String TotQtyRet { get; set; }
        public String MonthCycle { get; set; }
        public String YearCycle { get; set; }
        public String Status { get; set; }
        public String IsTrade { get; set; }
        public String Discnt01 { get; set; }
        public String Discnt02 { get; set; }
        public String Discnt03 { get; set; }
        public String Discnt04 { get; set; }
        public String Discnt05 { get; set; }
        public String RefName1 { get; set; }
        public String RefName2 { get; set; }
        public String RefName3 { get; set; }
        public String RefNo1 { get; set; }
        public String RefNo2 { get; set; }
        public String RefNo3 { get; set; }
        public String DateStamp { get; set; }
        public String UserN { get; set; }
    }
    public class ReturnDetailsUnit
    {
      public String RetNo { get; set; }
      public String ItemIndex { get; set; }
      public String RootIndex { get; set; }
      public String Qty { get; set; }
      public String TotalConv { get; set; }
      public String amount { get; set; }
      public String UPrice { get; set; }
      public String discount { get; set; }
      public String UOM { get; set; }
      public String Reason { get; set; }
      public String Status { get; set; }
    }
//    public class ReturnManager : DataSupport
//    {
//        public void RetMastUpsert(ReturnMasterUnit oUnit)
//        {
//            Dictionary<String, Object> Unit = new Dictionary<String, Object>();
//            List<String> primary = new List<String>();
//            String SQL;

//            primary.Add("[RetNo]");
//            primary.Add("[MonthCycle]");
//            primary.Add("[YearCycle]");

//            Unit.Add ("[RetNo]", oUnit.RetNo);
//            Unit.Add ("[RetDate]", oUnit.RetDate);
//            Unit.Add ("[TypeOfRet]", oUnit.TypeOfRet);
////            Unit.Add ("[RetType]", oUnit.RetType);
//            Unit.Add("[DocSource]", oUnit.DocSource);
//            Unit.Add("[RefName]", oUnit.RefName);
//            Unit.Add("[RefNo]", oUnit.RefNo);
//            Unit.Add ("[RefDate]", oUnit.RefDate);
//            Unit.Add ("[Remarks]", oUnit.Remarks);
//            //Unit.Add ("[DelBy]", oUnit.DelBy);
//            //Unit.Add ("[AppBy]", oUnit.AppBy);
//            //Unit.Add ("[CheckBy]", oUnit.CheckBy);
//            Unit.Add ("[TotQtyRet]", oUnit.TotQtyRet);
//            Unit.Add ("[MonthCycle]", oUnit.MonthCycle);
//            Unit.Add ("[YearCycle]", oUnit.YearCycle);
//            Unit.Add ("[Status]", oUnit.Status);
//            Unit.Add ("[IsTrade]", oUnit.IsTrade);
//            Unit.Add ("[Discnt01]", oUnit.Discnt01);
//            Unit.Add ("[Discnt02]", oUnit.Discnt02);
//            Unit.Add ("[Discnt03]", oUnit.Discnt03);
//            Unit.Add ("[Discnt04]", oUnit.Discnt04);
//            Unit.Add ("[Discnt05]", oUnit.Discnt05);
//            //Unit.Add ("[RefName1]", oUnit.RefName1);
//            //Unit.Add ("[RefName2]", oUnit.RefName2);
//            //Unit.Add ("[RefName3]", oUnit.RefName3);
//            //Unit.Add ("[RefNo1]", oUnit.RefNo1);
//            //Unit.Add ("[RefNo2]", oUnit.RefNo2);
//            //Unit.Add ("[RefNo3]", oUnit.RefNo3);
//            Unit.Add ("[DateStamp]", oUnit.DateStamp);
//            Unit.Add ("[UserN]", oUnit.UserN);

//            SQL = GetUpsert("RET_Return", Unit, primary);
//            RunNonQuery(SQL);
//        }
//        public void RetTransUpsert(ReturnDetailsUnit oUnit)
//        {
//            Dictionary<String, Object> Unit = new Dictionary<String, Object>();
//            List<String> primary = new List<String>();
//            String SQL;

//            primary.Add("[RetNo]");
//            primary.Add("[ItemIndex]");

//            Unit.Add ("[RetNo]", oUnit.RetNo);
//            Unit.Add ("[ItemIndex]", oUnit.ItemIndex);
//            Unit.Add ("[RootIndex]", oUnit.RootIndex);
//            Unit.Add ("[Qty]", oUnit.Qty);
//            Unit.Add ("[TotalConv]", oUnit.TotalConv);
//            Unit.Add ("[UPrice]", oUnit.UPrice);
//            Unit.Add ("[discount]", oUnit.discount);
//            Unit.Add ("[UOM]", oUnit.UOM);
//            Unit.Add ("[Reason]", oUnit.Reason);
//            Unit.Add ("[Status]", oUnit.Status);

//            SQL = GetUpsert("RET_Return_Line", Unit, primary);
//            RunNonQuery(SQL);
//        }
//    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace CoreFramework.Transaction
{
    public class IncMastUnit
    {
        public string IncNo { get; set; }
        public string RefName { get; set; }
        public string RefNo { get; set; }
        public string DocSource { get; set; }
        public string Shipper { get; set; }
        public string ArriveDate { get; set; }
        public string RecievedDate { get; set; }
        public string Remarks { get; set; }
        public string TransType { get; set; }
        public string Cycle { get; set; }
        public string Year { get; set; }
        public string CheckBy { get; set; }
        public string PrepBy { get; set; }
        public string ReleasedBy { get; set; }
        public string ReceivedBy { get; set; }
        public DateTime DateStamp { get; set; }
        public string RefName1 { get; set; }
        public string RefName2 { get; set; }
        public string RefName3 { get; set; }
        public string RefNo1 { get; set; }
        public string RefNo2 { get; set; }
        public string RefNo3 { get; set; }
        public string UserN { get; set; }
    }
    public class IncDetailsUnit
    {
        public string IncNo { get; set; }
        public string ItemIndex { get; set; }
        public string ItemCode { get; set; }
        public string RootIndex { get; set; }
        public string Qty { get; set; }
        public string TotalConv { get; set; }
        public string Category { get; set; }
        public string Status { get; set; }
        public string UOM { get; set; }
        public string Descp { get; set; }
        public string BarCode { get; set; }
        public decimal Amount { get; set; }
        public decimal Uprice { get; set; }
    }
    //public class IncManager:DataSupport 
    //{
    //    public void IncMastUpsert(IncMastUnit oUnit)
    //    {
    //        Dictionary<String, Object> Unit = new Dictionary<String, Object>();
    //        List<String> primary = new List<String>();
    //        String SQL;

    //        primary.Add("IncNo");
    //        primary.Add("MonthCycle");
    //        primary.Add("YearCycle");

    //        Unit.Add ("IncNo", oUnit.IncNo);
    //        Unit.Add ("RefName",oUnit.RefName);
    //        Unit.Add ("RefName1",oUnit.RefName1);
    //        Unit.Add ("RefName2", oUnit.RefName2);
    //        Unit.Add ("RefName3", oUnit.RefName3);
    //        Unit.Add ("RefNo",oUnit.RefNo);
    //        Unit.Add ("RefNo1", oUnit.RefNo1);
    //        Unit.Add ("RefNo2", oUnit.RefNo2);
    //        Unit.Add ("RefNo3", oUnit.RefNo3);
    //        Unit.Add ("DocSource",oUnit.DocSource);
    //        Unit.Add ("Shipper",oUnit.Shipper);
    //        Unit.Add ("ArriveDate",oUnit.ArriveDate);
    //        Unit.Add ("RecievedDate",oUnit.RecievedDate);
    //        Unit.Add ("Remarks",oUnit.Remarks);
    //        Unit.Add ("TransType",oUnit.TransType);
    //        Unit.Add ("MonthCycle",oUnit.Cycle);
    //        Unit.Add ("YearCycle",oUnit.Year);
    //        Unit.Add ("CheckBy",oUnit.CheckBy);
    //        Unit.Add ("PrepBy",oUnit.PrepBy);
    //        Unit.Add ("ReleasedBy",oUnit.ReleasedBy);
    //        Unit.Add ("ReceivedBy",oUnit.ReceivedBy);
    //        Unit.Add ("DateStamp",oUnit.DateStamp);
    //        Unit.Add ("UserN",oUnit.UserN);
    //        Unit.Add("Status", true);
    //        SQL = GetUpsert("INC_Incoming", Unit, primary);
    //        RunNonQuery(SQL);
    //    }
    //    public void IncTransUpsert(IncDetailsUnit oUnit)
    //    {
    //        Dictionary<String, Object> Unit = new Dictionary<String, Object>();
    //        List<String> primary = new List<String>();
    //        String SQL;

    //        primary.Add("IncNo");
    //        primary.Add("ItemIndex");

    //        Unit.Add ("IncNo",oUnit.IncNo);
    //        Unit.Add ("ItemIndex",oUnit.ItemIndex);
    //        Unit.Add ("RootIndex",oUnit.RootIndex);
    //        Unit.Add ("Qty",oUnit.Qty);
    //        Unit.Add ("Uprice", oUnit.Uprice);
    //        Unit.Add ("TotalConv",oUnit.TotalConv);
    //        Unit.Add ("Status",oUnit.Status);
    //        Unit.Add("UOM", oUnit.UOM);

    //        SQL = GetUpsert("INC_Incoming_Line",Unit,primary);
    //        RunNonQuery(SQL);
    //    }
    //}
}

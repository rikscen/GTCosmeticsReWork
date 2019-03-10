using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CoreFramework.Transaction
{
    public class DRMastUnit
    {
          public String DRNo { get; set; }
          public String DRDate { get; set; }
          public String DocType { get; set; }
          public String SourceCode { get; set; }
          public String RefName { get; set; }
          public String RefNo { get; set; }
          public String RefDate { get; set; }
          public String SmanCode { get; set; }
          public String PriceType { get; set; }
          public String ApprovedBy { get; set; }
          public String DeliverdBy { get; set; }
          public String CheckBy { get; set; }
          public String GrossAmt { get; set; }
          public String DiscAmt { get; set; }
          public String VatAmt { get; set; }
          public String NetAmt { get; set; }
          public String MonthCycle { get; set; }
          public String YearCycle { get; set; }
          public String IsGoodStock { get; set; }
          public String IsFree { get; set; }
          public String Terms { get; set; }
          public String Zone { get; set; }
          public String DRDelCode { get; set; }
          public String DRDelStat { get; set; }
          public String DRRetStat { get; set; }
          public String Discnt01 { get; set; }
          public String Discnt02 { get; set; }
          public String Discnt03 { get; set; }
          public String Discnt04 { get; set; }
          public String Discnt05 { get; set; }
          public String POno { get; set; }
          public String Remarks { get; set; }
          public String RefName1 { get; set; }
          public String RefName2 { get; set; }
          public String RefName3 { get; set; }
          public String RefNo1 { get; set; }
          public String RefNo2 { get; set; }
          public String RefNo3 { get; set; }
          public String UserN { get; set; }
          public String DateStamp { get; set; }
          public String Status { get; set; }
    }
    public class DRDetailsUnit
    {
          public String DRNo { get; set; }
          public String ItemIndex { get; set; }
          public String RootIndex { get; set; }
          public String Qty { get; set; }
          public String Conversion { get; set; }
          public String UPrice { get; set; }
          public String amount { get; set; }
          public String discount { get; set; }
          public String UOM { get; set; }
          public String Status { get; set; }
          public String RetQty { get; set; }
          public String DocType { get; set; }
    }
    //public class DRManager : DataSupport
    //{
    //    public void DRMastUpsert(DRMastUnit oUnit)
    //    {
    //        Dictionary<String, Object> Unit = new Dictionary<String, Object>();
    //        List<String> primary = new List<String>();
    //        String SQL;

    //        primary.Add("DRNo");
    //        primary.Add("MonthCycle");
    //        primary.Add("YearCycle");
    //        primary.Add("DocType");

    //        Unit.Add("DRNo", oUnit.DRNo);
    //        Unit.Add("DRDate", oUnit.DRDate);
    //        Unit.Add("DocType", oUnit.DocType);
    //        Unit.Add("SourceCode", oUnit.SourceCode);
    //        Unit.Add("RefName", oUnit.RefName);
    //        Unit.Add("RefNo", oUnit.RefNo);
    //        Unit.Add("RefDate", oUnit.RefDate);
    //        //Unit.Add("SmanCode", oUnit.SmanCode);
    //        //Unit.Add("PriceType", oUnit.PriceType);
    //        //Unit.Add("ApprovedBy", oUnit.ApprovedBy);
    //        //Unit.Add("DeliverdBy", oUnit.DeliverdBy);
    //        //Unit.Add("CheckBy", oUnit.CheckBy);
    //        Unit.Add("GrossAmt", oUnit.GrossAmt);
    //        Unit.Add("DiscAmt", oUnit.DiscAmt);
    //        Unit.Add("VatAmt", oUnit.VatAmt);
    //        Unit.Add("NetAmt", oUnit.NetAmt);
    //        Unit.Add("MonthCycle", oUnit.MonthCycle);
    //        Unit.Add("YearCycle", oUnit.YearCycle);
    //        Unit.Add("IsGoodStock", oUnit.IsGoodStock);
    //        Unit.Add("IsFree", oUnit.IsFree);
    //        Unit.Add("Terms", oUnit.Terms);
    //        Unit.Add("Zone", oUnit.Zone);
    //        //Unit.Add("DRDelCode", oUnit.DRDelCode);
    //        //Unit.Add("DRDelStat", oUnit.DRDelStat);
    //        Unit.Add("DRRetStat", oUnit.DRRetStat);
    //        Unit.Add("Discnt01", oUnit.Discnt01);
    //        Unit.Add("Discnt02", oUnit.Discnt02);
    //        Unit.Add("Discnt03", oUnit.Discnt03);
    //        Unit.Add("Discnt04", oUnit.Discnt04);
    //        Unit.Add("Discnt05", oUnit.Discnt05);
    //        //Unit.Add("POno", oUnit.POno);
    //        Unit.Add("Remarks", oUnit.Remarks);
    //        //Unit.Add("RefName1", oUnit.RefName1);
    //        //Unit.Add("RefName2", oUnit.RefName2);
    //        //Unit.Add("RefName3", oUnit.RefName3);
    //        //Unit.Add("RefNo1", oUnit.RefNo1);
    //        //Unit.Add("RefNo2", oUnit.RefNo2);
    //        //Unit.Add("RefNo3", oUnit.RefNo3);
    //        Unit.Add("UserN", oUnit.UserN);
    //        Unit.Add("DateStamp", oUnit.DateStamp);
    //        Unit.Add("Status", oUnit.Status);

    //        SQL = GetUpsert("OUT_Outgoing", Unit, primary);
    //        RunNonQuery(SQL);
    //    }
    //    public void DRTransUpsert(DRDetailsUnit oUnit)
    //    {
    //        Dictionary<String, Object> Unit = new Dictionary<String, Object>();
    //        List<String> primary = new List<String>();
    //        String SQL;

    //        primary.Add("DRNo");
    //        primary.Add("ItemIndex");
    //        primary.Add("DocType");

    //        Unit.Add("DRNo", oUnit.DRNo);
    //        Unit.Add("ItemIndex", oUnit.ItemIndex);
    //        Unit.Add("DocType", oUnit.DocType);

    //        Unit.Add("RootIndex", oUnit.RootIndex);
    //        Unit.Add("Qty", oUnit.Qty);
    //        Unit.Add("Conversion", oUnit.Conversion);
    //        Unit.Add("UPrice", oUnit.UPrice);
    //        Unit.Add("discount", oUnit.discount);
    //        Unit.Add("UOM", oUnit.UOM);
    //        Unit.Add("Status", oUnit.Status);
    //        Unit.Add("RetQty", oUnit.RetQty);

    //        SQL = GetUpsert("[OUT_Outgoing_Line]", Unit, primary);
    //        RunNonQuery(SQL);
    //    }   
    //}
}

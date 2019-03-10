using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace CoreFramework.Transaction
{
    public class InvoiceMasterUnit
    {
      public string InvNo { get; set; }
      public string CustNo { get; set; }
      public string InvDate { get; set; }
      public string SOno { get; set; }
      public string SODate { get; set; }
      public string SODateRec { get; set; }
      public string PONo { get; set; }
      public string PODate { get; set; }
      public string PODateRec { get; set; }
      public string POIssued { get; set; }
      public string DRno { get; set; }
      public string DRDate { get; set; }
      public string PriceType { get; set; }
      public string SmanCode { get; set; }
      public string ApprovedBy { get; set; }
      public string DeliverdBy { get; set; }
      public string CheckBy { get; set; }
      public string GrossAmt { get; set; }
      public string DiscAmt { get; set; }
      public string VatAmt { get; set; }
      public string NetAmt { get; set; }
      public string InvDelCode { get; set; }
      public string InvDelStat { get; set; }
      public string MonthCycle { get; set; }
      public string YearCycle { get; set; }
      public string IsFree { get; set; }
      public string Status { get; set; }
      public string Terms { get; set; }
      public string Zone { get; set; }
      public string InvRetStat { get; set; }
      public string DateStamp { get; set; }
      public string Discnt01 { get; set; }
      public string Discnt02 { get; set; }
      public string Discnt03 { get; set; }
      public string Discnt04 { get; set; }
      public string Discnt05 { get; set; }
      public string SalesName { get; set; }
      public string UserN { get; set; }
      public string RefDoc3 { get; set; }
      public string RefNo3 { get; set; }
    }
    public class InvoiceDetailsUnit
    {
      public string  InvNo { get; set; }
      public string ItemIndex { get; set; }
      public string RootIndex { get; set; }
      public string Qty { get; set; }
      public string Conversion { get; set; }
      public string UPrice { get; set; }
      public string Discount { get; set; }
      public string UOM { get; set; }
      public string Status { get; set; }
      public string RetQty { get; set; }
      public string Amount { get; set; }
    }
    //public class InvoiceManager : DataSupport
    //{
    //    public void InvMastUpsert(InvoiceMasterUnit oUnit)
    //    {
    //        Dictionary<String, Object> Unit = new Dictionary<String, Object>();
    //        List<String> primary = new List<String>();
    //        String SQL;

    //        primary.Add("[InvNo]");
    //        primary.Add("[MonthCycle]");
    //        primary.Add("[YearCycle]");
            
    //        Unit.Add ("[InvNo]", oUnit.InvNo);
    //        Unit.Add ("[CustNo]", oUnit.CustNo);
    //        Unit.Add ("[InvDate]", oUnit.InvDate);
    //        //Unit.Add ("[SOno]", oUnit.SOno);
    //        //Unit.Add ("[SODate]", oUnit.SODate);
    //        //Unit.Add ("[SODateRec]", oUnit.SODateRec);
    //        //Unit.Add ("[PONo]", oUnit.PONo);
    //        //Unit.Add ("[PODate]", oUnit.PODate);
    //        //Unit.Add ("[PODateRec]", oUnit.PODateRec);
    //        //Unit.Add ("[POIssued]", oUnit.POIssued);
    //        //Unit.Add ("[DRno]", oUnit.DRno);
    //        //Unit.Add ("[DRDate]", oUnit.DRDate);
    //        //Unit.Add ("[PriceType]", oUnit.PriceType);
    //        //Unit.Add ("[SmanCode]", oUnit.SmanCode);
    //        //Unit.Add ("[ApprovedBy]", oUnit.ApprovedBy);
    //        //Unit.Add ("[DeliverdBy]", oUnit.DeliverdBy);
    //        //Unit.Add ("[CheckBy]", oUnit.CheckBy);
    //        Unit.Add ("[GrossAmt]", oUnit.GrossAmt);
    //        Unit.Add ("[DiscAmt]", oUnit.DiscAmt);
    //        Unit.Add ("[VatAmt]", oUnit.VatAmt);
    //        Unit.Add ("[NetAmt]", oUnit.NetAmt);
    //        //Unit.Add ("[InvDelCode]", oUnit.InvDelCode);
    //        //Unit.Add ("[InvDelStat]", oUnit.InvDelStat);
    //        Unit.Add ("[MonthCycle]", oUnit.MonthCycle);
    //        Unit.Add ("[YearCycle]", oUnit.YearCycle);
    //        Unit.Add ("[IsFree]", oUnit.IsFree);
    //        Unit.Add ("[Status]", oUnit.Status);
    //        Unit.Add ("[Terms]", oUnit.Terms);
    //        Unit.Add ("[Zone]", oUnit.Zone);
    //        Unit.Add ("[InvRetStat]", oUnit.InvRetStat);
    //        Unit.Add ("[DateStamp]", oUnit.DateStamp);
    //        Unit.Add ("[Discnt01]", oUnit.Discnt01);
    //        Unit.Add ("[Discnt02]", oUnit.Discnt02);
    //        Unit.Add ("[Discnt03]", oUnit.Discnt03);
    //        Unit.Add ("[Discnt04]", oUnit.Discnt04);
    //        Unit.Add ("[Discnt05]", oUnit.Discnt05);
    //        //Unit.Add ("[SalesName]", oUnit.SalesName);
    //        Unit.Add ("[UserN]", oUnit.UserN);
    //        Unit.Add ("[RefDoc3]", oUnit.RefDoc3);
    //        Unit.Add ("[RefNo3]", oUnit.RefNo3);

    //        SQL = GetUpsert("INV_Invoice", Unit, primary);
    //        RunNonQuery(SQL);
    //    }
    //    public void InvTransUpsert(InvoiceDetailsUnit oUnit)
    //    {
    //        Dictionary<String, Object> Unit = new Dictionary<String, Object>();
    //        List<String> primary = new List<String>();
    //        String SQL;

    //        primary.Add("InvNo");
    //        primary.Add("ItemIndex");

    //        Unit.Add("InvNo", oUnit.InvNo);
    //        Unit.Add("ItemIndex", oUnit.ItemIndex);
    //        Unit.Add("RootIndex", oUnit.RootIndex);
    //        Unit.Add("Qty", oUnit.Qty);
    //        Unit.Add("Uprice", oUnit.UPrice);
    //        Unit.Add("Conversion", oUnit.Conversion);
    //        Unit.Add("Discount", oUnit.Discount);
    //        Unit.Add("UOM", oUnit.UOM);
    //        Unit.Add("Status", oUnit.Status);
    //        Unit.Add("RetQty", oUnit.RetQty);

    //        SQL = GetUpsert("INV_Invoice_Line", Unit, primary);
    //        RunNonQuery(SQL);
    //    }
    //}
}

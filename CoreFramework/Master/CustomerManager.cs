using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace CoreFramework.Master
{
    public class CustomerVariable
    {
        public static readonly IList<String> CustomerType = new List<String> { 
         "CONCESSION ACCOUNT",
         "SECOND ACCOUNT" };
        public static readonly IList<String> DocumentUse = new List<String> { 
         "SALES INVOICE",
         "DELIVERY RECEIPT" };
        public static readonly IList<String> Terms = new List<String> { 
         "30 Days","60 Days","COD" };
        public static readonly IList<String> Zone = new List<String> { 
         "0","1","2","3","4","5","6","7","8","9" };
    }
    public class RouteUnit
    { 
    	public int routeindex { get; set; }
	    public string routename { get; set; }
	    public DateTime datestamp { get; set; }
	    public bool status { get; set; }
        public string SQL { get; set; }
    }
    public class CustomerDelivery
    {
        public int counter { get; set; }
        public int DelAdressIndex { get; set; }
        public int CustomerIndex { get; set;}
        public int Routeindex { get; set; }
	    public string Address { get; set;}
	    public int Zone { get; set;}
	    public DateTime Datestamp { get; set;}
        public string Status { get; set; }
        public string CustomerCode { get; set; }
        public string RouteName { get; set; }
        public string Remarks { get; set; }
        public string SQL { get; set; }
}
    public class CustomerManager :DataSupport
    {   public int CustomerIndex { get; set; }
        public string priceindex { get; set; }
        public string smanindex { get; set; }
        public string CustomerCode { get; set; }
        public string ClientCode { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string PostalCode { get; set; }
        public string ContactNo { get; set; }
        public string TinNo { get; set; }
        public string Zone { get; set; }
        public string Terms { get; set; }
        public string DocType { get; set; }
        public string TransType { get; set; }
        public string Discnt01 { get; set; }
        public string Discnt02 { get; set; }
        public string Discnt03 { get; set; }
        public string Discnt04 { get; set; }
        public string Discnt05 { get; set; }
        public string Status { get; set; }
        public string CustomerType { get; set; }
        public DateTime DateStamp { get; set; }
        public string SmanName { get; set; }
        public string PriceType { get; set; }
        public StringBuilder SQL;
        
        public void AddCustomer(CustomerManager oUnit)
        {
            SQL = new StringBuilder();
            Dictionary<String, Object> unit = new Dictionary<String, Object>();
            if (oUnit.priceindex == "-1" || oUnit.priceindex == "0" || oUnit.priceindex == null)
            {   AddPriceType(oUnit.PriceType);
                unit.Add("priceindex", DataSupport.RunDataSet("SELECT _priceindex FROM BASE_PriceType WHERE pricetype = '" + oUnit.PriceType + "'").Tables[0].Rows[0].ItemArray[0].ToString());
            }else { unit.Add("priceindex", oUnit.priceindex); }
            if (oUnit.smanindex == "-1" || oUnit.smanindex == "0" || oUnit.smanindex == null)
            {   AddSalesMan(oUnit.SmanName);
                unit.Add("smanindex", DataSupport.RunDataSet("SELECT _smanindex FROM BASE_SalesMan WHERE [name] = '" + oUnit.SmanName + "'").Tables[0].Rows[0].ItemArray[0].ToString());
            }
            else { unit.Add("smanindex", oUnit.smanindex); }

            unit.Add("CustomerCode",oUnit.CustomerCode);
            unit.Add("ClientCode", oUnit.ClientCode);
            unit.Add("[Name]",oUnit.Name);
            unit.Add("Address",oUnit.Address);
            unit.Add("PostalCode", oUnit.PostalCode );
            unit.Add("Contactno",oUnit.ContactNo);
            unit.Add("TinNo",oUnit.TinNo);
            unit.Add("Terms",oUnit.Terms);
            unit.Add("DocType",oUnit.DocType);
            unit.Add("TransType",oUnit.TransType);
            unit.Add("CustType", oUnit.CustomerType);
            unit.Add("Discnt1",oUnit.Discnt01);
            unit.Add("Discnt2",oUnit.Discnt02);
            unit.Add("Discnt3",oUnit.Discnt03);
            unit.Add("Discnt4",oUnit.Discnt04);
            unit.Add("Discnt5", oUnit.Discnt05);
            unit.Add("Zone", oUnit.Zone);
            unit.Add("datestamp", oUnit.DateStamp);
            unit.Add("Status", oUnit.Status);
            
            oUnit.SQL.Append(GetInsert("BASE_Customer", unit));
            //RunNonQuery(SQL);

        }
        public void UpdateCustomer(CustomerManager oUnit)
        {
            SQL = new StringBuilder();
            Dictionary<String, Object> Unit = new Dictionary<String, Object>();
            List<String> primary = new List<string>();
            if (oUnit.priceindex == "-1" || oUnit.priceindex == "0" || oUnit.priceindex == null)
            {
                AddPriceType(oUnit.PriceType);
                Unit.Add("priceindex", DataSupport.RunDataSet("SELECT _priceindex FROM BASE_PriceType WHERE pricetype = '" + oUnit.PriceType + "'").Tables[0].Rows[0].ItemArray[0].ToString());
            }
            else { Unit.Add("priceindex", oUnit.priceindex); }
            if (oUnit.smanindex == "-1" || oUnit.smanindex == "0" || oUnit.smanindex == null)
            {
                AddSalesMan(oUnit.SmanName);
                Unit.Add("smanindex", DataSupport.RunDataSet("SELECT _smanindex FROM BASE_SalesMan WHERE [name] = '" + oUnit.SmanName + "'").Tables[0].Rows[0].ItemArray[0].ToString());
            }
            else { Unit.Add("smanindex", oUnit.smanindex); }

            Unit.Add("_CustIndex", oUnit.CustomerIndex);
            Unit.Add("CustomerCode", oUnit.CustomerCode);
            Unit.Add("ClientCode", oUnit.ClientCode);
            Unit.Add("[Name]", oUnit.Name);
            Unit.Add("Address", oUnit.Address);
            Unit.Add("PostalCode", oUnit.PostalCode);
            Unit.Add("Contactno", oUnit.ContactNo);
            Unit.Add("TinNo", oUnit.TinNo);
            Unit.Add("Terms", oUnit.Terms);
            Unit.Add("DocType", oUnit.DocType);
            Unit.Add("TransType", oUnit.TransType);
            Unit.Add("CustType", oUnit.CustomerType);
            Unit.Add("Discnt1", oUnit.Discnt01);
            Unit.Add("Discnt2", oUnit.Discnt02);
            Unit.Add("Discnt3", oUnit.Discnt03);
            Unit.Add("Discnt4", oUnit.Discnt04);
            Unit.Add("Discnt5", oUnit.Discnt05);
            Unit.Add("Zone", oUnit.Zone);
            Unit.Add("datestamp", oUnit.DateStamp);
            Unit.Add("Status", oUnit.Status);

            primary.Add("_CustIndex");
            
            oUnit.SQL.Append (GetUpdate("BASE_Customer", Unit,primary));
            //RunNonQuery(SQL);

        }
        public String AddPriceType(String _Name)
        {
            Dictionary<String, Object> PriceType = new Dictionary<String, Object>();
            PriceType.Add("pricetype", _Name);
            PriceType.Add("status", 1);
            PriceType.Add("datestamp", DateTime.Now);
            return GetInsert("BASE_PriceType", PriceType);

            //RunNonQuery(SQL);
        }
        public string AddSalesMan(String _Name)
        {
            Dictionary<String, Object> SalesMan = new Dictionary<String, Object>();
            SalesMan.Add("[name]", _Name);
            SalesMan.Add("status", 1);
            SalesMan.Add("datestamp", DateTime.Now);
            return GetInsert("BASE_SalesMan", SalesMan);
            //RunNonQuery(SQL);
        }
        public string AddRoute(String _Name)
        {
            Dictionary<String, Object> Route = new Dictionary<String, Object>();
            Route.Add("[name]", _Name);
            Route.Add("status", 1);
            Route.Add("datestamp", DateTime.Now);
            return GetInsert("BASE_Route", Route);
            //RunNonQuery(SQL);
        }
        
        public String AddCustomerDelAddress(List<CustomerDelivery> oUnit)
        {
            StringBuilder delSQL = new StringBuilder();

            foreach (CustomerDelivery DelAdd in oUnit)
            {
                Dictionary<String, Object> DelAddress = new Dictionary<String, Object>();
                if (DelAdd.Routeindex == 0) { AddRoute(DelAdd.RouteName); }

                if (DelAdd.Remarks == "ADD")
                {
                    string custindex = DataSupport.RunDataSet("SELECT _custindex FROM BASE_Customer WHERE customercode = '" + DelAdd.CustomerCode + "'").Tables[0].Rows[0].ItemArray[0].ToString();                    
                    if (DelAdd .CustomerIndex == 0) { DelAddress.Add("custindex", custindex); } else { DelAddress.Add("custindex", DelAdd.CustomerIndex); }
                    DelAddress.Add("routeindex", DataSupport.RunDataSet("SELECT _routeindex FROM BASE_Route WHERE [Name] = '" + DelAdd.RouteName + "'").Tables[0].Rows[0].ItemArray[0].ToString());
                    DelAddress.Add("address", DelAdd.Address);
                    DelAddress.Add("zone", DelAdd.Zone); 
                    DelAddress.Add("status", DelAdd.Status);
                    DelAddress.Add("datestamp", DelAdd.Datestamp);

                    delSQL.Append(GetInsert("BASE_DeliveryAddress", DelAddress));
                    //RunNonQuery(SQL);
                }
                else
                {
                    List<String> primary = new List<string>();
                    DelAddress.Add("_DelAddressIndex", DelAdd.DelAdressIndex);
                    DelAddress.Add("custindex", DelAdd.CustomerIndex);
                    DelAddress.Add("routeindex", DelAdd .Routeindex);
                    DelAddress.Add("address", DelAdd.Address);
                    DelAddress.Add("zone", DelAdd.Zone);
                    DelAddress.Add("status", DelAdd.Status);
                    DelAddress.Add("datestamp", DelAdd.Datestamp);

                    primary.Add("_DelAddressIndex");

                    delSQL.Append(GetUpdate("BASE_DeliveryAddress", DelAddress, primary));
                    //RunNonQuery(SQL);
                }
            }
            return delSQL.ToString();
        }
        public CustomerManager GetCustInfo(string SQLCommand)
        {
            CustomerManager oUnit = new CustomerManager();
            DataTable DtaTable = new DataTable();

            DtaTable = RunDataSet(SQLCommand).Tables[0];
            foreach (DataRow Drow in DtaTable.Rows)
            {
                oUnit.CustomerIndex = Convert.ToInt32 (Drow["_custindex"].ToString());
                oUnit.priceindex = Drow["priceindex"].ToString();
                oUnit.smanindex = Drow["smanindex"].ToString();
                oUnit.CustomerCode = Drow["CustomerCode"].ToString();
                oUnit.ClientCode = Drow["ClientCode"].ToString();
                oUnit.Name = Drow["name"].ToString();
                oUnit.Address = Drow["address"].ToString();
                oUnit.PostalCode = Drow["postalcode"].ToString();
                oUnit.ContactNo = Drow["contactno"].ToString();
                oUnit.TinNo = Drow["tinno"].ToString();
                oUnit.Zone = Drow["zone"].ToString();
                oUnit.Terms = Drow["terms"].ToString();
                oUnit.DocType = Drow["doctype"].ToString();
                oUnit.TransType = Drow["transtype"].ToString();
                oUnit.Discnt01 = Drow["discnt1"].ToString();
                oUnit.Discnt02 = Drow["discnt2"].ToString();
                oUnit.Discnt03 = Drow["discnt3"].ToString();
                oUnit.Discnt04 = Drow["discnt4"].ToString();
                oUnit.Discnt05 = Drow["discnt5"].ToString();
                oUnit.Status = Drow["status"].ToString();
                oUnit.CustomerType = Drow["custtype"].ToString();
                oUnit.DateStamp = Convert.ToDateTime(Drow["DateStamp"].ToString());
                oUnit.SmanName = Drow["SmanName"].ToString();
                oUnit.PriceType = Drow["PriceType"].ToString();
            }

            return oUnit;
        }
        public List<CustomerDelivery> GetCustDelAddress(string SQLCommand)
        {
            List<CustomerDelivery> oUnit = new List<CustomerDelivery>();
            DataTable DtaTable = new DataTable();

            DtaTable = RunDataSet(SQLCommand).Tables[0];
            int counter = 1;
            foreach (DataRow Drow in DtaTable.Rows)
            {   CustomerDelivery Unit = new CustomerDelivery();
                Unit.DelAdressIndex = Convert.ToInt32(Drow["_DelAddressIndex"].ToString());
                Unit.CustomerIndex = Convert.ToInt32(Drow["CustIndex"].ToString());
                Unit.Routeindex = Convert.ToInt32(Drow["RouteIndex"].ToString());
                Unit.Address = Drow["Address"].ToString();
                Unit.Zone = Convert.ToInt32(Drow["Zone"].ToString());
                Unit.Datestamp = Convert.ToDateTime(Drow["DateStamp"].ToString());
                Unit.Status = Drow["Status"].ToString();
                Unit.CustomerCode = Drow["CustomerCode"].ToString();
                Unit.RouteName = Drow["RouteName"].ToString();
                Unit.Remarks = "UPDATE";
                Unit.counter = counter;
                counter += 1;
                oUnit.Add(Unit);
            }

            return oUnit;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace CoreFramework.Master
{
    public class ItemPriceUnit
    {
        public string ItemPIndex { get; set; }
        public string ProdIndex { get; set; }
        public string PriceType { get; set; }
        public string PriceIndex { get; set; }
        public string UOMIndex { get; set; }
        public string UOM { get; set; }
        public decimal UnitPrice { get; set; }
        public bool Status { get; set; }
        public DateTime  DateStamp { get; set; }
        public string Remarks { get; set; }
        public string SQL { get; set; }
    }
    public class ProductUOMUnit
    {
        public string UOMIndex { get; set; }
        public string ProdIndex { get; set; }
        public string Qty { get; set; }
        public string UOM { get; set; }
        public string BarCode { get; set; }
        public bool Status { get; set; }
        public DateTime DateStamp { get; set; }
        public string SQL { get; set; }
    }
    public class ProductManager:DataSupport
    {
        public int ProductIndex { get; set; }
        public string ProductCode { get; set; }
        public string SCode { get; set; }
        public string CCode { get; set; }
        public string Description { get; set; }
        public string Category { get; set; }
        public string Capacity { get; set; }
        public string UOMSSU { get; set; }
        public bool Status { get; set; }
        public DateTime DateStamp { get; set; }
        public string SQL { get; set; }

        public void AddProductUOM(ProductUOMUnit oUnit)
        {
            Dictionary<String, Object> Unit = new Dictionary<String, Object>();
            Unit.Add("_UOMIndex", oUnit.UOMIndex);
            Unit.Add("prodindex", oUnit.ProdIndex);
            Unit.Add("uom", oUnit.UOM);
            Unit.Add("qty", oUnit.Qty);
            Unit.Add("barcode", oUnit.BarCode);
            Unit.Add("datestamp", oUnit.DateStamp);
            Unit.Add("status", oUnit.Status);

            StringBuilder SQL = new StringBuilder();
            if (Utils.GetDataset(String.Format("SELECT * FROM BASE_UOM WHERE _UOMIndex = '{0}'", oUnit.UOMIndex)).Tables[0].Rows.Count == 0)
            {

                Unit.Remove("_UOMIndex");
                if (Utils.GetDataset(String.Format("SELECT * FROM BASE_PRODUCT WHERE _PRODINDEX = '{0}'", oUnit.ProdIndex)).Tables[0].Rows.Count == 0)
                {
                    var converted_list = DataSupport.ConvertToStringValues(Unit);
                    #region cleaning dictionary
                    List<String> for_delete = new List<String>();
                    foreach (String key in converted_list.Keys)
                    {
                        String value = converted_list[key];
                        if (value.Trim() == "")
                            for_delete.Add(key);
                    }
                    foreach (String key in for_delete)
                    {
                        converted_list.Remove(key);
                    }
                    #endregion

                    List<String> insertColumns = converted_list.Keys.ToList();

                    SQL.Append("INSERT INTO BASE_UOM (");
                    for (int i = 0; i < insertColumns.Count; i++)
                    {
                        char[] delims = { '.' };
                        String cleaned = (insertColumns[i].Contains('.') ? (insertColumns[i].Split(delims))[1] : insertColumns[i]);
                        SQL.Append((i == insertColumns.Count - 1) ? cleaned + ")" : cleaned + ",");
                    }
                    SQL.Append(" SELECT MAX(_prodindex),");
                    for (int i = 0; i < insertColumns.Count; i++)
                    {
                        if (insertColumns[i] != "prodindex")
                            SQL.Append((i == insertColumns.Count - 1) ? "'" + converted_list[insertColumns[i]].Replace("'", "''") + "' FROM base_product;" : "'" + converted_list[insertColumns[i]].Replace("'", "''") + "',");
                    }
                }
                else
                {
                    SQL.Append(GetInsert("BASE_UOM", Unit));
                }
                oUnit.SQL = SQL.ToString();
            }
            else
            {
                List<String> primary = new List<string>();
                primary.Add("_UOMIndex");
                oUnit.SQL = GetUpdate("BASE_UOM", Unit, primary) + ";";
            }
        }
        public void AddProduct(ProductManager oUnit)
        {
                Dictionary<String,Object> Unit = new Dictionary<String,Object>();
                Unit.Add("productcode", oUnit.ProductCode);
                Unit.Add("scode", oUnit.SCode);
                Unit.Add("ccode", oUnit.CCode);
                Unit.Add("description", oUnit.Description);
                Unit.Add("Category", oUnit.Category);
                Unit.Add("capacity", oUnit.Capacity);
                Unit.Add("uomssu", oUnit.UOMSSU);
                Unit.Add("datestamp", oUnit.DateStamp);
                Unit.Add("status", oUnit.Status);

                oUnit.SQL = GetInsert("BASE_Product", Unit) + ";";
                //RunNonQuery(oUnit.SQL);
        }
        public void UpdateProduct(ProductManager oUnit)
        {
            Dictionary<String, Object> Unit = new Dictionary<String, Object>();
            List<String> primary = new List<string>();
            Unit.Add("_ProdIndex",oUnit.ProductIndex );
            Unit.Add("productcode", oUnit.ProductCode);
            Unit.Add("scode", oUnit.SCode);
            Unit.Add("ccode", oUnit.CCode);
            Unit.Add("description", oUnit.Description);
            Unit.Add("Category", oUnit.Category);
            Unit.Add("capacity", oUnit.Capacity);
            Unit.Add("uomssu", oUnit.UOMSSU);
            Unit.Add("datestamp", oUnit.DateStamp);
            Unit.Add("status", oUnit.Status);

            primary.Add("_ProdIndex");

            oUnit.SQL = GetUpdate("BASE_Product", Unit, primary) + ";";
            //RunNonQuery(oUnit.SQL);
        }
        public String AddPriceType(String _Name)
        {
            Dictionary<String, Object> PriceType = new Dictionary<String, Object>();
            PriceType.Add("pricetype", _Name);
            PriceType.Add("status", 1);
            PriceType.Add("datestamp", DateTime.Now);
            return GetInsert("BASE_PriceType", PriceType) + ";";
            //RunNonQuery(SQL);
        }
        public String AddProductPriceUpdate(List<ItemPriceUnit> oUnit)
        {
            StringBuilder SQL = new StringBuilder();
            foreach (ItemPriceUnit price in oUnit)
            {
                Dictionary<String, Object> ItemPrice = new Dictionary<String, Object>();
                
                List<String> primary = new List<string>();
                primary.Add("_ItemPIndex");

                ItemPrice.Add("_ItemPIndex", price.ItemPIndex);
                ItemPrice.Add("prodindex", price.ProdIndex);
                ItemPrice.Add("priceindex", price.PriceIndex);
                ItemPrice.Add("uomindex", price.UOMIndex);
                ItemPrice.Add("unitprice", price.UnitPrice);
                ItemPrice.Add("status", price.Status);
                ItemPrice.Add("datestamp", price.DateStamp);

                SQL.Append(GetUpsert("BASE_ItemPrice", ItemPrice, primary) + ";");
                //RunNonQuery(SQL);                
            }
            return SQL.ToString();
        }
        public ProductManager GetProdInfo(string SQLCommand)
        {
            ProductManager oUnit = new ProductManager();
            DataTable DtaTable = new DataTable();

            DtaTable = RunDataSet(SQLCommand).Tables[0];
            foreach (DataRow  Drow in DtaTable.Rows)
            {
                oUnit.ProductIndex = Convert.ToInt32(Drow["_ProdIndex"]);
                oUnit.ProductCode  = Drow["ProductCode"].ToString();
                oUnit.Description = Drow["Description"].ToString();
                oUnit.Category = Drow["Category"].ToString();
                oUnit.Capacity = Drow["Capacity"].ToString();
                oUnit.DateStamp = Convert.ToDateTime(Drow["datestamp"]);
                oUnit.Status = Convert.ToBoolean(Drow["status"]);
            }

            return oUnit;
        }
        public List<ItemPriceUnit> GetProductPriceUpdate(string SQLCommand)
        {
            List<ItemPriceUnit> oUnit = new List<ItemPriceUnit>();
            DataTable DtaTable = new DataTable();

            DtaTable = RunDataSet(SQLCommand).Tables[0];
            foreach (DataRow Drow in DtaTable.Rows)
            {
                ItemPriceUnit Unit = new ItemPriceUnit();
                Unit.ItemPIndex = Drow["_ItemPIndex"].ToString();
                Unit.ProdIndex = Drow["ProdIndex"].ToString();
                Unit.PriceIndex = Drow["Priceindex"].ToString();
                Unit.UOMIndex  = Drow["UOMindex"].ToString();
                Unit.UnitPrice = Convert.ToDecimal ( Drow["unitprice"]);
                Unit.DateStamp = Convert.ToDateTime(Drow["datestamp"]);
                Unit.Status = Convert.ToBoolean(Drow["status"]);
                oUnit.Add(Unit);
            }
            return oUnit;
        }
    }
}

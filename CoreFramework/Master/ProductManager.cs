using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using CoreFramework;

namespace CoreFramework.Master
{
    //public interface IProduct
    //{
    //    //string Id { get; set; }
    //    //string ProductCode { get; set; }
    //    //string Description { get; set; }
    //    //string CategoryId { get; set; }
    //    //List<ProductUOM> UOMs { get; set; }
    //    //string DateCreated { get; set; }
    //    //string LastUpdated { get; set; }
    //    //string Status { get; set; }
    //    StringBuilder SqlScript { get; }

    //    void Insert(ProductModel p);

    //    void Update(ProductModel p);

    //    int GetInsertedId(string sql);

    //    int RunSqlScript();
    //}

    public class Product//: IProduct
    {
        public string Id { get; set; }
        public string ProductCode { get; set; }
        public string Description { get; set; }
        public string CategoryId { get; set; }
        public List<ProductUOM> UOMs { get; set; }
        public string DateCreated { get; set; }
        public string LastUpdated { get; set; }
        public string Status { get; set; }

        public Product()
        {
            UOMs = new List<ProductUOM>();
        }
    }

    public class ProductUOM
    {
        public string Id { get; set; }
        public string ProductId { get; set; }
        public string UomId { get; set; }
        public string Description { get; set; }
        public string Barcode { get; set; }
        public string Quantity { get; set; }
        public string UnitPrice { get; set; }
        public string DateCreated { get; set; }
        public string LastUpdated { get; set; }
        public string Status { get; set; }
    }

    public class ProductManager : IManager
    {
        public StringBuilder SqlScript { get; set; }
        private Product _product { get; set; }

        public ProductManager(Product unit)
        {
            SqlScript = new StringBuilder();
            _product = unit;
        }

        public ProductManager()
        {
            SqlScript = new StringBuilder();
            //_product.UOMs = new List<ProductUOM>();
        }

        public void Insert()
        {
            var param = new Dictionary<string, object>
            {
                { "ProductCode", _product.ProductCode },
                { "Description", _product.Description },
                { "CategoryId", _product.CategoryId },
                { "DateCreated", _product.DateCreated },
                { "LastUpdated", _product.LastUpdated },
                { "Status", _product.Status }
            };
            SqlScript.AppendLine(DataSupport.GetInsert("BASE_Products", param));
            param.Clear();

            var productId = GetInsertId();
            foreach (var uom in _product.UOMs)
            {
                param.Add("ProductId", productId);
                param.Add("UomId", uom.UomId);
                param.Add("Description", uom.Description);
                param.Add("Barcode", uom.Barcode);
                param.Add("Qty", uom.Quantity);
                param.Add("UnitPrice", uom.UnitPrice);
                param.Add("DateCreated", uom.DateCreated);
                param.Add("LastUpdated", uom.LastUpdated);
                param.Add("Status", uom.Status);
                SqlScript.AppendLine(DataSupport.GetInsert("BASE_ProductUoms", param));
                param.Clear();
            }
        }

        public void Update()
        {
            var param = new Dictionary<string, object>
            {
                { "Id", _product.Id },
                { "ProductCode", _product.ProductCode },
                { "Description", _product.Description },
                { "CategoryId", _product.CategoryId },
                { "DateCreated", _product.DateCreated },
                { "LastUpdated", _product.LastUpdated },
                { "Status", _product.Status }
            };
            SqlScript.AppendLine(DataSupport.GetUpdate("BASE_Products", param, "Id"));
            param.Clear();

            foreach (var uom in _product.UOMs)
            {
                if ((bool)DataSupport.ExecuteScalar("sp_checkproductuomexist", new Dictionary<string, object> { { "@id", uom.Id } }))
                {
                    param.Add("Id", uom.Id);
                    param.Add("ProductId", _product.Id);
                    param.Add("UomId", uom.UomId);
                    param.Add("Description", uom.Description);
                    param.Add("Barcode", uom.Barcode);
                    param.Add("Qty", uom.Quantity);
                    param.Add("UnitPrice", uom.UnitPrice);
                    param.Add("LastUpdated", uom.LastUpdated);
                    param.Add("Status", _product.Status);
                    SqlScript.AppendLine(DataSupport.GetUpdate("BASE_ProductUoms", param, "Id"));
                    param.Clear();
                }
                else
                {
                    param.Add("ProductId", _product.Id);
                    param.Add("UomId", uom.UomId);
                    param.Add("Description", uom.Description);
                    param.Add("Barcode", uom.Barcode);
                    param.Add("Qty", uom.Quantity);
                    param.Add("UnitPrice", uom.UnitPrice);
                    param.Add("DateCreated", uom.DateCreated);
                    param.Add("LastUpdated", uom.LastUpdated);
                    param.Add("Status", uom.Status);
                    SqlScript.AppendLine(DataSupport.GetInsert("BASE_ProductUoms", param));
                    param.Clear();
                }
            }
        }

        public DataSet LoadData(Dictionary<string, object> param)
        {
            return DataSupport.ExecuteStoredProcedureDataSet("sp_getproductbyid", param);
            //_product = new Product();
            //foreach (DataRow row in ds.Tables[0].Rows)
            //{
            //    _product.Id = row["Id"].ToString();
            //    _product.ProductCode = row["ProductCode"].ToString();
            //    _product.Description = row["Description"].ToString();
            //    _product.CategoryId = row["CategoryId"].ToString();
            //}

            //foreach (DataRow row in ds.Tables[1].Rows)
            //{
            //    var uom = new ProductUOM();
            //    uom.Id = row["Id"].ToString();
            //    uom.ProductId = row["ProductId"].ToString();
            //    uom.UomId = row["UomId"].ToString();
            //    uom.Description = row["Description"].ToString();
            //    uom.Barcode = row["Barcode"].ToString();
            //    uom.Quantity = row["Qty"].ToString();
            //    uom.UnitPrice = row["UnitPrice"].ToString();

            //    _product.UOMs.Add(uom);
            //}

            //return _product;
        }

        public void Delete()
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get Id before insert
        /// </summary>
        public int GetInsertId()
        {
            return (int)DataSupport.ExecuteScalar("sp_getinsertedid", null);
        }

        /// <summary>
        /// Run the sql script to save and commit to the database
        /// </summary>
        /// <returns></returns>
        public int RunSqlScript()
        {
            return DataSupport.ExecuteNonQuery(SqlScript.ToString());
        }
    }
}
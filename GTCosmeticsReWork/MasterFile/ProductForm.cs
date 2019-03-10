using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using CoreFramework;
using VGLHelper;

namespace GTCosmeticsReWork.MasterFile
{
    public partial class ProductForm : Form
    {
        private BindingSource source = new BindingSource();

        public ProductForm()
        {
            InitializeComponent();
            lblTitle.SetLabelTitle();
            //tc.DrawMode = TabDrawMode.OwnerDrawFixed;
            ExtensionMethods.SetButtonAppearance(btnAdd);
            ExtensionMethods.SetGridAppearance(grd);
            btnClose.SetButtonAppearanceAsClose();
            //lblTitle.MouseMove += ExtensionMethods.Title_MouseMove;
            grd.RowPostPaint += ExtensionMethods.AddDatagridViewRowHeaderNumber;
            grd.CellPainting += EventHandlers.Grid_CellPainting;
            //tc.DrawItem += EventHandlers.TabControl_DrawItem;
            InitializeDataGrid();
            Font = ExtensionMethods.CENTURY_GOTHIC_12;
            txtSearch.TextChanged += TxtSearch_TextChanged;
        }

        private void TxtSearch_TextChanged(object sender, EventArgs e)
        {
            source.Filter = $"ProductCode LIKE '%{ txtSearch.Text }%' OR Description LIKE '%{ txtSearch.Text }%'";
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void InitializeDataGrid()
        {
            var colProductId = new DataGridViewTextBoxColumn();
            colProductId.Name = "ProductId";
            colProductId.HeaderText = "Product Id";
            colProductId.DataPropertyName = "Id";
            colProductId.Visible = false;
            grd.Columns.Add(colProductId);

            var colProductCode = new DataGridViewTextBoxColumn();
            colProductCode.Name = "ProductCode";
            colProductCode.HeaderText = "Product Code";
            colProductCode.DataPropertyName = "ProductCode";
            colProductCode.FillWeight = 100;
            colProductCode.ReadOnly = true;
            grd.Columns.Add(colProductCode);

            var colDescription = new DataGridViewTextBoxColumn();
            colDescription.Name = "Description";
            colDescription.HeaderText = "Description";
            colDescription.DataPropertyName = "Description";
            colDescription.FillWeight = 400;
            colDescription.ReadOnly = true;
            grd.Columns.Add(colDescription);

            var colCategoryId = new DataGridViewTextBoxColumn();
            colCategoryId.Name = "CategoryId";
            colCategoryId.HeaderText = "Category Id";
            colCategoryId.DataPropertyName = "CategoryId";
            colCategoryId.Visible = false;
            grd.Columns.Add(colCategoryId);

            var colCategory = new DataGridViewTextBoxColumn();
            colCategory.Name = "Category";
            colCategory.HeaderText = "Category";
            colCategory.DataPropertyName = "Category";
            colCategory.FillWeight = 150;
            colCategory.ReadOnly = true;
            grd.Columns.Add(colCategory);

            grd.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
        }

        private void ProductForm_Load(object sender, EventArgs e)
        {
            //LoadData();
        }

        private void LoadData()
        {
            source.DataSource = DataSupport.ExecuteStoredProcedure("sp_getproducts", null);
            grd.DataSource = source;
            source.Sort = "Description";
        }

        //private void vglDataGridView1_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        //{
        //    if (vglDataGridView1.CurrentCell.Value.ToString() == "raffy")
        //    {
        //        if (e.ColumnIndex < vglDataGridView1.Columns.Count - 1)
        //        {
        //            vglDataGridView1.CurrentCell = vglDataGridView1[e.ColumnIndex + 1, e.RowIndex];
        //        }
        //        else
        //        {
        //            vglDataGridView1.Rows.Add();
        //            vglDataGridView1.CurrentCell = vglDataGridView1[0, e.RowIndex + 1];
        //        }
        //    }
        //}

        //protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
        //{
        //    if (keyData == Keys.Enter)
        //    {
        //        int icolumn = vglDataGridView1.CurrentCell.ColumnIndex;
        //        int irow = vglDataGridView1.CurrentCell.RowIndex;
        //        if (icolumn == vglDataGridView1.Columns.Count - 1)
        //        {
        //            vglDataGridView1.Rows.Add();
        //            vglDataGridView1.CurrentCell = vglDataGridView1[0, irow + 1];
        //        }
        //        else
        //        {
        //            if (vglDataGridView1.CurrentCell.Value.ToString() == "raffy")
        //            {
        //                MessageBox.Show("Test");
        //            }
        //            else
        //                vglDataGridView1.CurrentCell = vglDataGridView1[icolumn + 1, irow];
        //        }
        //        return true;
        //    }
        //    else
        //        return base.ProcessCmdKey(ref msg, keyData);
        //}
    }
}
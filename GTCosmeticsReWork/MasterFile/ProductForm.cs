using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using CoreFramework;
using CoreFramework.Master;
using VGLHelper;

namespace GTCosmeticsReWork.MasterFile
{
    public partial class ProductForm : Form
    {
        private BindingSource source = new BindingSource();
        private bool _isEditMode = false;
        private string _productId;

        public ProductForm()
        {
            InitializeComponent();
            lblTitle.SetLabelTitle();
            //tc.DrawMode = TabDrawMode.OwnerDrawFixed;
            ExtensionMethods.SetButtonAppearance(btnAdd, btnSave);
            ExtensionMethods.SetGridAppearance(grdProduct, grdUom);
            btnClose.SetButtonAppearanceAsClose();
            //lblTitle.MouseMove += ExtensionMethods.Title_MouseMove;
            grdProduct.RowPostPaint += ExtensionMethods.AddDatagridViewRowHeaderNumber;
            grdProduct.CellPainting += EventHandlers.Grid_CellPainting;
            grdProduct.MouseDoubleClick += GrdProduct_MouseDoubleClick;

            grdUom.CellPainting += EventHandlers.Grid_CellPainting;
            grdUom.EditingControlShowing += GrdUom_EditingControlShowing;
            grdUom.DataError += GrdUom_DataError;
            grdUom.CellEndEdit += grdUom_CellEndEdit;
            grdUom.MouseClick += GrdUom_MouseClick;

            //tc.DrawItem += EventHandlers.TabControl_DrawItem;
            InitializeDataGrid();
            Font = ExtensionMethods.CENTURY_GOTHIC_12;
            txtSearch.TextChanged += TxtSearch_TextChanged;
            grdUom.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCells;
            //grdUom.RowTemplate.Height = 30;
            grdProduct.CellContentClick += GrdProduct_CellContentClick;

            tc.Controls.Remove(tpAdd);
        }

        private void GrdProduct_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            if (grdProduct.HitTest(e.X, e.Y).Type == DataGridViewHitTestType.Cell)
            {
                _productId = grdProduct.CurrentRow.Cells["ProductId"].Value.ToString();
                LoadSKU(_productId.ToInteger());

                if (!tc.TabPages.Contains(tpAdd))
                    tc.TabPages.Add(tpAdd);

                tpAdd.Text = "Edit SKU";
                tc.SelectedTab = tpAdd;
                grdUom.ClearSelection();

                if (!_isEditMode)
                    _isEditMode = true;
            }
        }

        private void GrdUom_MouseClick(object sender, MouseEventArgs e)
        {
            var hit = grdUom.HitTest(e.X, e.Y);
            if (hit.Type == DataGridViewHitTestType.Cell)
            {
                grdUom.BeginEdit(true);
            }
            else if (hit.Type == DataGridViewHitTestType.RowHeader)
            {
                grdUom.EndEdit();
            }
        }

        private void GrdProduct_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            //MessageBox.Show("Test");
            //customComboBox1.DroppedDown = true;
        }

        private void GrdUom_DataError(object sender, DataGridViewDataErrorEventArgs e)
        {
        }

        private void GrdUom_EditingControlShowing(object sender, DataGridViewEditingControlShowingEventArgs e)
        {
            if (e.Control is DataGridViewComboBoxEditingControl)
            {
                var cb = e.Control as ComboBox;

                if (grdUom.CurrentRow.IsNewRow)
                    cb.SelectedIndex = -1;

                //cb.AutoCompleteMode = AutoCompleteMode.SuggestAppend;
                //cb.AutoCompleteSource = AutoCompleteSource.ListItems;
                //cb.DropDownStyle = ComboBoxStyle.DropDown;
            }
            else if (e.Control is DataGridViewTextBoxEditingControl && (grdUom.CurrentCell.OwningColumn == grdUom.Columns["UomQty"] ||
                                                                        grdUom.CurrentCell.OwningColumn == grdUom.Columns["UomPrice"] ||
                                                                        grdUom.CurrentCell.OwningColumn == grdUom.Columns["UomBarcode"]))
            {
                var txtBox = e.Control as TextBox;
                txtBox.KeyPress -= TxtBoxDecimalOnly_KeyPress;
                txtBox.KeyPress += TxtBoxDecimalOnly_KeyPress;
            }
            else if (e.Control is DataGridViewTextBoxEditingControl && grdUom.CurrentCell.OwningColumn == grdUom.Columns["UomDescr"])
            {
                var txtBox = e.Control as TextBox;
                txtBox.KeyPress -= TxtBoxDecimalOnly_KeyPress;
                //txtBox.KeyPress += TxtBoxDecimalOnly_KeyPress;
            }
        }

        private void TxtBoxDecimalOnly_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
            }

            // only allow one decimal point
            if ((e.KeyChar == '.') && ((sender as TextBox).Text.IndexOf('.') > -1))
            {
                e.Handled = true;
            }
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
            #region Product Grid

            var colProductId = new DataGridViewTextBoxColumn();
            colProductId.Name = "ProductId";
            colProductId.HeaderText = "Product Id";
            colProductId.DataPropertyName = "Id";
            colProductId.Visible = false;
            grdProduct.Columns.Add(colProductId);

            var colProductCode = new DataGridViewTextBoxColumn();
            colProductCode.Name = "ProductCode";
            colProductCode.HeaderText = "Product Code";
            colProductCode.DataPropertyName = "ProductCode";
            colProductCode.FillWeight = 100;
            colProductCode.ReadOnly = true;
            grdProduct.Columns.Add(colProductCode);

            var colDescription = new DataGridViewTextBoxColumn();
            colDescription.Name = "Description";
            colDescription.HeaderText = "Description";
            colDescription.DataPropertyName = "Description";
            colDescription.FillWeight = 400;
            colDescription.ReadOnly = true;
            grdProduct.Columns.Add(colDescription);

            var colCategoryId = new DataGridViewTextBoxColumn();
            colCategoryId.Name = "CategoryId";
            colCategoryId.HeaderText = "Category Id";
            colCategoryId.DataPropertyName = "CategoryId";
            colCategoryId.Visible = false;
            grdProduct.Columns.Add(colCategoryId);

            var colCategory = new DataGridViewTextBoxColumn();
            colCategory.Name = "Category";
            colCategory.HeaderText = "Category";
            colCategory.DataPropertyName = "Category";
            colCategory.FillWeight = 150;
            colCategory.ReadOnly = true;
            grdProduct.Columns.Add(colCategory);

            grdProduct.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;

            #endregion Product Grid

            #region UOM Grid

            var colId = new DataGridViewTextBoxColumn();
            colId.Name = "Id";
            colId.HeaderText = "Id";
            colId.DataPropertyName = "Id";
            colId.Visible = false;
            colId.DisplayIndex = 0;
            grdUom.Columns.Add(colId);

            var colUom = new DataGridViewComboBoxColumn();
            colUom.Name = "Uom";
            colUom.HeaderText = "Unit Of Measure";
            colUom.DataPropertyName = "Uom";
            colUom.FlatStyle = FlatStyle.Flat;
            colUom.DisplayStyle = DataGridViewComboBoxDisplayStyle.DropDownButton;
            var dt = DataSupport.ExecuteStoredProcedure("sp_getuoms", null);
            colUom.SetDataGridViewComboBox(dt, "Uom", "Id");
            colUom.Width = 150;
            grdUom.Columns.Add(colUom);

            var colUomQty = new DataGridViewTextBoxColumn();
            colUomQty.Name = "UomQty";
            colUomQty.HeaderText = "Qty";
            colUomQty.DataPropertyName = "Qty";
            colUomQty.Width = 100;
            colUomQty.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            grdUom.Columns.Add(colUomQty);

            var colUomDesc = new DataGridViewTextBoxColumn();
            colUomDesc.Name = "UomDescr";
            colUomDesc.HeaderText = "Description";
            colUomDesc.DataPropertyName = "Description";
            colUomDesc.Width = 400;
            grdUom.Columns.Add(colUomDesc);

            var colUomBarcode = new DataGridViewTextBoxColumn();
            colUomBarcode.Name = "UomBarcode";
            colUomBarcode.HeaderText = "Barcode";
            colUomBarcode.DataPropertyName = "Barcode";
            colUomBarcode.Width = 200;
            grdUom.Columns.Add(colUomBarcode);

            var colUomPrice = new DataGridViewTextBoxColumn();
            colUomPrice.Name = "UomPrice";
            colUomPrice.HeaderText = "Unit Price";
            colUomPrice.DataPropertyName = "Price";
            colUomPrice.Width = 100;
            colUomPrice.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            colUomPrice.DefaultCellStyle.Format = "N2";
            grdUom.Columns.Add(colUomPrice);

            //grdUom.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells;

            #endregion UOM Grid
        }

        private void ProductForm_Load(object sender, EventArgs e)
        {
            LoadData();
            var dt = DataSupport.ExecuteStoredProcedure("sp_getproductcategories", null);
            cbCategory.SetComboBox(dt, "Category", "Id");
        }

        private void LoadData()
        {
            source.DataSource = DataSupport.ExecuteStoredProcedure("sp_getproducts", null);
            grdProduct.DataSource = source;
            source.Sort = "Description";
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            Clear();
            tpAdd.Text = "Add SKU";

            if (!tc.TabPages.Contains(tpAdd))
                tc.TabPages.Add(tpAdd);

            tc.SelectedTab = tpAdd;
            grdUom.ClearSelection();

            if (_isEditMode)
                _isEditMode = false;
        }

        private void grdUom_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            //if (!grdUom.CurrentCell.Displayed)
            //    return;
            //if (e.ColumnIndex < grdUom.ColumnCount - 1)
            //{
            //    grdUom.CurrentCell = grdUom[e.ColumnIndex + 1, e.RowIndex];
            //}
            //else
            //{
            //    grdUom.Rows.Add();
            //    grdUom.CurrentCell = grdUom[grdUom.FirstDisplayedCell.ColumnIndex, e.RowIndex + 1];
            //}

            //if (CheckDuplicateUom(grdUom.CurrentCell.Value))
            //    MessageBox.Show("Test");
        }

        private bool CheckDuplicateUom(object value)
        {
            int count = 0;
            if (value == null)
                return false;
            if (grdUom.CurrentCell.ColumnIndex != 1)
                return false;
            for (int i = 0; i < grdUom.Rows.Count - 1; i++)
            {
                if (int.Parse(grdUom.Rows[i].Cells["Uom"].Value.ToString()) == int.Parse(value.ToString()))
                {
                    count++;
                }
            }

            if (count > 1)
                return true;
            return false;
        }

        //protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
        //{
        //    if (keyData == Keys.Enter)
        //    {
        //        grdUom.EndEdit();
        //        int icolumn = grdUom.CurrentCell.ColumnIndex;
        //        int irow = grdUom.CurrentCell.RowIndex;
        //        int columnCount = grdUom.DisplayedColumnCount(true);

        //        if (icolumn == columnCount)
        //        {
        //            //grdUom.Rows.Add();
        //            try
        //            {
        //                grdUom.CurrentCell = grdUom[grdUom.FirstDisplayedCell.ColumnIndex, irow + 1];
        //                grdUom.BeginEdit(true);
        //            }
        //            catch (ArgumentOutOfRangeException)
        //            {
        //            }
        //        }
        //        else
        //        {
        //            grdUom.CurrentCell = grdUom[icolumn + 1, irow];
        //            grdUom.BeginEdit(true);
        //        }
        //        return true;
        //    }
        //    else
        //        return base.ProcessCmdKey(ref msg, keyData);
        //}

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (!_isEditMode)
            {
                Save();
            }
            else
            {
                UpdateProduct();
            }
        }

        private void Save()
        {
            var unit = new Product
            {
                ProductCode = txtProductCode.Text,
                Description = txtDescription.Text,
                CategoryId = cbCategory.SelectedValue.ToString(),
                DateCreated = DateTime.Now.ToShortDateString(),
                LastUpdated = DateTime.Now.ToShortDateString(),
                Status = "1"
            };

            foreach (DataGridViewRow row in grdUom.Rows)
            {
                if (row.IsNewRow)
                    continue;
                var uom = new ProductUOM
                {
                    UomId = row.Cells["Uom"].Value.ToString(),
                    Description = row.Cells["UomDescr"].Value.ToString(),
                    Barcode = row.Cells["UomBarcode"].Value.ToString(),
                    Quantity = row.Cells["UomQty"].Value.ToString(),
                    UnitPrice = row.Cells["UomPrice"].Value.ToString(),
                    DateCreated = DateTime.Now.ToShortDateString(),
                    LastUpdated = DateTime.Now.ToShortDateString(),
                    Status = "1"
                };
                unit.UOMs.Add(uom);
            }

            var manager = new TransactionManager(new ProductManager(unit));
            manager.Insert();
            manager.RunSqlScript();
            MessageBox.Show("Save!");
        }

        private void UpdateProduct()
        {
            var unit = new Product
            {
                Id = _productId,
                ProductCode = txtProductCode.Text,
                Description = txtDescription.Text,
                CategoryId = cbCategory.SelectedValue.ToString(),
                LastUpdated = DateTime.Now.ToShortDateString(),
                Status = "1"
            };

            foreach (DataGridViewRow row in grdUom.Rows)
            {
                if (row.IsNewRow)
                    continue;
                var uom = new ProductUOM
                {
                    Id = row.Cells["Id"].Value.ToString(),
                    ProductId = _productId,
                    UomId = row.Cells["Uom"].Value.ToString(),
                    Description = row.Cells["UomDescr"].Value.ToString(),
                    Barcode = row.Cells["UomBarcode"].Value.ToString(),
                    Quantity = row.Cells["UomQty"].Value.ToString(),
                    UnitPrice = row.Cells["UomPrice"].Value.ToString(),
                    DateCreated = DateTime.Now.ToShortDateString(),
                    LastUpdated = DateTime.Now.ToShortDateString(),
                    Status = "1"
                };
                unit.UOMs.Add(uom);
            }

            var manager = new TransactionManager(new ProductManager(unit));
            manager.Update();
            manager.RunSqlScript();
            MessageBox.Show("Update!");
        }

        private void txtProductCode_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13)
            {
                txtDescription.Select();
            }
        }

        private void txtDescription_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13)
            {
                cbCategory.Select();
            }
        }

        private void LoadSKU(int id)
        {
            Clear();
            var manager = new ProductManager();
            var ds = manager.LoadData(new Dictionary<string, object> { { "@id", id } });

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                txtProductCode.Text = row["ProductCode"].ToString();
                txtDescription.Text = row["Description"].ToString();
                cbCategory.SelectedValue = row["CategoryId"];
                grdUom.DataSource = ds.Tables[1];
            }
        }

        private void Clear()
        {
            txtProductCode.Clear();
            txtDescription.Clear();
            cbCategory.SelectedIndex = -1;

            foreach (DataGridViewRow row in grdUom.Rows)
            {
                if (row.IsNewRow)
                    continue;
                grdUom.Rows.Remove(row);
            }
        }
    }
}
namespace GTCosmeticsReWork.MasterFile
{
    partial class ProductForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnClose = new System.Windows.Forms.Button();
            this.lblTitle = new System.Windows.Forms.Label();
            this.tc = new VGLHelper.CustomControls.vglTabControl();
            this.tpProduct = new System.Windows.Forms.TabPage();
            this.grdProduct = new System.Windows.Forms.DataGridView();
            this.panel2 = new System.Windows.Forms.Panel();
            this.btnAdd = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.txtSearch = new System.Windows.Forms.TextBox();
            this.tpAdd = new System.Windows.Forms.TabPage();
            this.grdUom = new VGLHelper.CustomControls.vglDataGridView();
            this.panel3 = new System.Windows.Forms.Panel();
            this.cbCategory = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.panel1.SuspendLayout();
            this.tc.SuspendLayout();
            this.tpProduct.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.grdProduct)).BeginInit();
            this.panel2.SuspendLayout();
            this.tpAdd.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.grdUom)).BeginInit();
            this.panel3.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnClose);
            this.panel1.Controls.Add(this.lblTitle);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1022, 39);
            this.panel1.TabIndex = 0;
            // 
            // btnClose
            // 
            this.btnClose.Dock = System.Windows.Forms.DockStyle.Right;
            this.btnClose.Location = new System.Drawing.Point(983, 0);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(39, 39);
            this.btnClose.TabIndex = 5;
            this.btnClose.UseVisualStyleBackColor = true;
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // lblTitle
            // 
            this.lblTitle.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblTitle.Location = new System.Drawing.Point(0, 0);
            this.lblTitle.Name = "lblTitle";
            this.lblTitle.Size = new System.Drawing.Size(1022, 39);
            this.lblTitle.TabIndex = 0;
            this.lblTitle.Text = "Products";
            // 
            // tc
            // 
            this.tc.AllowDrop = true;
            this.tc.BorderColor = System.Drawing.Color.Empty;
            this.tc.Controls.Add(this.tpProduct);
            this.tc.Controls.Add(this.tpAdd);
            this.tc.Controls.Add(this.tabPage1);
            this.tc.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tc.InactiveTabColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(75)))), ((int)(((byte)(160)))));
            this.tc.ItemSize = new System.Drawing.Size(150, 50);
            this.tc.Location = new System.Drawing.Point(0, 39);
            this.tc.Name = "tc";
            this.tc.SelectedIndex = 0;
            this.tc.SelectedTabColor = System.Drawing.Color.FromArgb(((int)(((byte)(25)))), ((int)(((byte)(118)))), ((int)(((byte)(210)))));
            this.tc.Size = new System.Drawing.Size(1022, 559);
            this.tc.SizeMode = System.Windows.Forms.TabSizeMode.Fixed;
            this.tc.TabBackColor = System.Drawing.Color.White;
            this.tc.TabIndex = 2;
            // 
            // tpProduct
            // 
            this.tpProduct.Controls.Add(this.grdProduct);
            this.tpProduct.Controls.Add(this.panel2);
            this.tpProduct.Location = new System.Drawing.Point(4, 54);
            this.tpProduct.Name = "tpProduct";
            this.tpProduct.Padding = new System.Windows.Forms.Padding(3);
            this.tpProduct.Size = new System.Drawing.Size(1014, 501);
            this.tpProduct.TabIndex = 0;
            this.tpProduct.Text = "Product List";
            this.tpProduct.UseVisualStyleBackColor = true;
            // 
            // grdProduct
            // 
            this.grdProduct.AllowUserToAddRows = false;
            this.grdProduct.Dock = System.Windows.Forms.DockStyle.Fill;
            this.grdProduct.Location = new System.Drawing.Point(3, 65);
            this.grdProduct.Name = "grdProduct";
            this.grdProduct.Size = new System.Drawing.Size(1008, 433);
            this.grdProduct.TabIndex = 1;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.btnAdd);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Controls.Add(this.txtSearch);
            this.panel2.Cursor = System.Windows.Forms.Cursors.Default;
            this.panel2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel2.Location = new System.Drawing.Point(3, 3);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1008, 62);
            this.panel2.TabIndex = 0;
            // 
            // btnAdd
            // 
            this.btnAdd.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnAdd.Location = new System.Drawing.Point(866, 7);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(142, 52);
            this.btnAdd.TabIndex = 4;
            this.btnAdd.Text = "Add Product";
            this.btnAdd.UseVisualStyleBackColor = true;
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(3, 33);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(64, 21);
            this.label1.TabIndex = 2;
            this.label1.Text = "Search";
            // 
            // txtSearch
            // 
            this.txtSearch.Location = new System.Drawing.Point(73, 30);
            this.txtSearch.Name = "txtSearch";
            this.txtSearch.Size = new System.Drawing.Size(238, 27);
            this.txtSearch.TabIndex = 0;
            // 
            // tpAdd
            // 
            this.tpAdd.Controls.Add(this.grdUom);
            this.tpAdd.Controls.Add(this.panel3);
            this.tpAdd.Location = new System.Drawing.Point(4, 54);
            this.tpAdd.Name = "tpAdd";
            this.tpAdd.Padding = new System.Windows.Forms.Padding(3);
            this.tpAdd.Size = new System.Drawing.Size(1014, 501);
            this.tpAdd.TabIndex = 1;
            this.tpAdd.Text = "Add SKU";
            this.tpAdd.UseVisualStyleBackColor = true;
            // 
            // grdUom
            // 
            this.grdUom.Dock = System.Windows.Forms.DockStyle.Top;
            this.grdUom.Location = new System.Drawing.Point(3, 108);
            this.grdUom.Name = "grdUom";
            this.grdUom.Size = new System.Drawing.Size(1008, 327);
            this.grdUom.TabIndex = 3;
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.cbCategory);
            this.panel3.Controls.Add(this.label4);
            this.panel3.Controls.Add(this.label3);
            this.panel3.Controls.Add(this.textBox2);
            this.panel3.Controls.Add(this.label2);
            this.panel3.Controls.Add(this.textBox1);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel3.Location = new System.Drawing.Point(3, 3);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(1008, 105);
            this.panel3.TabIndex = 2;
            // 
            // cbCategory
            // 
            this.cbCategory.FormattingEnabled = true;
            this.cbCategory.Location = new System.Drawing.Point(131, 70);
            this.cbCategory.Name = "cbCategory";
            this.cbCategory.Size = new System.Drawing.Size(204, 29);
            this.cbCategory.TabIndex = 2;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(5, 73);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(85, 21);
            this.label4.TabIndex = 1;
            this.label4.Text = "Category";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(5, 39);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(97, 21);
            this.label3.TabIndex = 1;
            this.label3.Text = "Description";
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(131, 36);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(360, 27);
            this.textBox2.TabIndex = 0;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(5, 6);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(120, 21);
            this.label2.TabIndex = 1;
            this.label2.Text = "Product Code";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(131, 3);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(360, 27);
            this.textBox1.TabIndex = 0;
            // 
            // tabPage1
            // 
            this.tabPage1.Location = new System.Drawing.Point(4, 54);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(1014, 501);
            this.tabPage1.TabIndex = 2;
            this.tabPage1.Text = "tabPage1";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // ProductForm
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Inherit;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1022, 598);
            this.ControlBox = false;
            this.Controls.Add(this.tc);
            this.Controls.Add(this.panel1);
            this.DoubleBuffered = true;
            this.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Margin = new System.Windows.Forms.Padding(5);
            this.Name = "ProductForm";
            this.Load += new System.EventHandler(this.ProductForm_Load);
            this.panel1.ResumeLayout(false);
            this.tc.ResumeLayout(false);
            this.tpProduct.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.grdProduct)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.tpAdd.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.grdUom)).EndInit();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label lblTitle;
        private System.Windows.Forms.DataGridView grdProduct;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtSearch;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.Button btnClose;
        private VGLHelper.CustomControls.vglTabControl tc;
        private System.Windows.Forms.TabPage tpProduct;
        private System.Windows.Forms.TabPage tpAdd;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.ComboBox cbCategory;
        private System.Windows.Forms.Label label4;
        private VGLHelper.CustomControls.vglDataGridView grdUom;
        private System.Windows.Forms.TabPage tabPage1;
    }
}
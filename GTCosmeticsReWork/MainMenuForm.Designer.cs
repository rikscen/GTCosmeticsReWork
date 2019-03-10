namespace GTCosmeticsReWork
{
    partial class MainMenuForm
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
            this.menuStrip = new System.Windows.Forms.MenuStrip();
            this.masToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.productsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.customersToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.transactionsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.incomingStockToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.salesOrderToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.picklistToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.outgoingToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.deliveryReceiptSALESToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.deliveryReceiptINTERWAREHOUSEToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.deliveryReceiptStockTransferToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.deliveryUpdateToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.returnsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.reportsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.settingsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.helpToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip
            // 
            this.menuStrip.BackColor = System.Drawing.SystemColors.Control;
            this.menuStrip.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.masToolStripMenuItem,
            this.transactionsToolStripMenuItem,
            this.reportsToolStripMenuItem,
            this.settingsToolStripMenuItem,
            this.helpToolStripMenuItem});
            this.menuStrip.Location = new System.Drawing.Point(0, 0);
            this.menuStrip.Name = "menuStrip";
            this.menuStrip.Padding = new System.Windows.Forms.Padding(0);
            this.menuStrip.Size = new System.Drawing.Size(1350, 35);
            this.menuStrip.TabIndex = 0;
            this.menuStrip.Text = "menuStrip1";
            // 
            // masToolStripMenuItem
            // 
            this.masToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.productsToolStripMenuItem,
            this.customersToolStripMenuItem});
            this.masToolStripMenuItem.Name = "masToolStripMenuItem";
            this.masToolStripMenuItem.Padding = new System.Windows.Forms.Padding(5);
            this.masToolStripMenuItem.Size = new System.Drawing.Size(107, 35);
            this.masToolStripMenuItem.Text = "Master Files";
            // 
            // productsToolStripMenuItem
            // 
            this.productsToolStripMenuItem.Name = "productsToolStripMenuItem";
            this.productsToolStripMenuItem.Size = new System.Drawing.Size(155, 26);
            this.productsToolStripMenuItem.Text = "Products";
            this.productsToolStripMenuItem.Click += new System.EventHandler(this.productsToolStripMenuItem_Click);
            // 
            // customersToolStripMenuItem
            // 
            this.customersToolStripMenuItem.Name = "customersToolStripMenuItem";
            this.customersToolStripMenuItem.Size = new System.Drawing.Size(155, 26);
            this.customersToolStripMenuItem.Text = "Customers";
            // 
            // transactionsToolStripMenuItem
            // 
            this.transactionsToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.incomingStockToolStripMenuItem,
            this.salesOrderToolStripMenuItem,
            this.picklistToolStripMenuItem,
            this.outgoingToolStripMenuItem,
            this.deliveryUpdateToolStripMenuItem,
            this.returnsToolStripMenuItem});
            this.transactionsToolStripMenuItem.Name = "transactionsToolStripMenuItem";
            this.transactionsToolStripMenuItem.Size = new System.Drawing.Size(108, 35);
            this.transactionsToolStripMenuItem.Text = "Transactions";
            // 
            // incomingStockToolStripMenuItem
            // 
            this.incomingStockToolStripMenuItem.Name = "incomingStockToolStripMenuItem";
            this.incomingStockToolStripMenuItem.Size = new System.Drawing.Size(191, 26);
            this.incomingStockToolStripMenuItem.Text = "Incoming";
            // 
            // salesOrderToolStripMenuItem
            // 
            this.salesOrderToolStripMenuItem.Name = "salesOrderToolStripMenuItem";
            this.salesOrderToolStripMenuItem.Size = new System.Drawing.Size(191, 26);
            this.salesOrderToolStripMenuItem.Text = "Sales Order";
            // 
            // picklistToolStripMenuItem
            // 
            this.picklistToolStripMenuItem.Name = "picklistToolStripMenuItem";
            this.picklistToolStripMenuItem.Size = new System.Drawing.Size(191, 26);
            this.picklistToolStripMenuItem.Text = "Picklist";
            // 
            // outgoingToolStripMenuItem
            // 
            this.outgoingToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.deliveryReceiptSALESToolStripMenuItem,
            this.deliveryReceiptINTERWAREHOUSEToolStripMenuItem,
            this.deliveryReceiptStockTransferToolStripMenuItem});
            this.outgoingToolStripMenuItem.Name = "outgoingToolStripMenuItem";
            this.outgoingToolStripMenuItem.Size = new System.Drawing.Size(191, 26);
            this.outgoingToolStripMenuItem.Text = "Outgoing";
            // 
            // deliveryReceiptSALESToolStripMenuItem
            // 
            this.deliveryReceiptSALESToolStripMenuItem.Name = "deliveryReceiptSALESToolStripMenuItem";
            this.deliveryReceiptSALESToolStripMenuItem.Size = new System.Drawing.Size(347, 26);
            this.deliveryReceiptSALESToolStripMenuItem.Text = "Delivery Receipt - SALES";
            // 
            // deliveryReceiptINTERWAREHOUSEToolStripMenuItem
            // 
            this.deliveryReceiptINTERWAREHOUSEToolStripMenuItem.Name = "deliveryReceiptINTERWAREHOUSEToolStripMenuItem";
            this.deliveryReceiptINTERWAREHOUSEToolStripMenuItem.Size = new System.Drawing.Size(347, 26);
            this.deliveryReceiptINTERWAREHOUSEToolStripMenuItem.Text = "Delivery Receipt - INTER-WAREHOUSE";
            // 
            // deliveryReceiptStockTransferToolStripMenuItem
            // 
            this.deliveryReceiptStockTransferToolStripMenuItem.Name = "deliveryReceiptStockTransferToolStripMenuItem";
            this.deliveryReceiptStockTransferToolStripMenuItem.Size = new System.Drawing.Size(347, 26);
            this.deliveryReceiptStockTransferToolStripMenuItem.Text = "Delivery Receipt - STOCK TRANSFER";
            // 
            // deliveryUpdateToolStripMenuItem
            // 
            this.deliveryUpdateToolStripMenuItem.Name = "deliveryUpdateToolStripMenuItem";
            this.deliveryUpdateToolStripMenuItem.Size = new System.Drawing.Size(191, 26);
            this.deliveryUpdateToolStripMenuItem.Text = "Delivery Update";
            // 
            // returnsToolStripMenuItem
            // 
            this.returnsToolStripMenuItem.Name = "returnsToolStripMenuItem";
            this.returnsToolStripMenuItem.Size = new System.Drawing.Size(191, 26);
            this.returnsToolStripMenuItem.Text = "Returns";
            // 
            // reportsToolStripMenuItem
            // 
            this.reportsToolStripMenuItem.Name = "reportsToolStripMenuItem";
            this.reportsToolStripMenuItem.Size = new System.Drawing.Size(76, 35);
            this.reportsToolStripMenuItem.Text = "Reports";
            // 
            // settingsToolStripMenuItem
            // 
            this.settingsToolStripMenuItem.Name = "settingsToolStripMenuItem";
            this.settingsToolStripMenuItem.Size = new System.Drawing.Size(78, 35);
            this.settingsToolStripMenuItem.Text = "Settings";
            // 
            // helpToolStripMenuItem
            // 
            this.helpToolStripMenuItem.Name = "helpToolStripMenuItem";
            this.helpToolStripMenuItem.Size = new System.Drawing.Size(54, 35);
            this.helpToolStripMenuItem.Text = "Help";
            // 
            // MainMenuForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 21F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1350, 729);
            this.Controls.Add(this.menuStrip);
            this.DoubleBuffered = true;
            this.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip;
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "MainMenuForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "MainMenuForm";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.menuStrip.ResumeLayout(false);
            this.menuStrip.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip;
        private System.Windows.Forms.ToolStripMenuItem masToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem productsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem customersToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem transactionsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem incomingStockToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem salesOrderToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem picklistToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem outgoingToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem deliveryReceiptSALESToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem deliveryReceiptINTERWAREHOUSEToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem deliveryReceiptStockTransferToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem deliveryUpdateToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem returnsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem reportsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem settingsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem helpToolStripMenuItem;
    }
}
using GTCosmeticsReWork.MasterFile;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using CoreFramework;

namespace GTCosmeticsReWork
{
    public partial class MainMenuForm : Form
    {
        public static List<TabPage> tabPages;

        public MainMenuForm()
        {
            InitializeComponent();
            ExtensionMethods.SetMenuStripAppearance(menuStrip);
            DataSupport.SetDBConnection(@"Initial Catalog=GTCosmetics;Data Source=.\SQLEXPRESS; User Id = vgl_data; Password = tqbfjotld;");
        }

        private void OpenChildForm(Form form)
        {
            form.MdiParent = this;

            if (Application.OpenForms[form.Name] == null)
            {
                form.StartPosition = FormStartPosition.CenterScreen;
                form.Show();
            }
            else
            {
                Application.OpenForms[form.Name].Activate();
            }
        }

        private void productsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenChildForm(new ProductForm());
        }


    }
}
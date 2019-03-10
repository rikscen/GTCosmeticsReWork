using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace GTCosmeticsReWork
{
    public partial class LoginForm : Form
    {
        public LoginForm()
        {
            InitializeComponent();
            Font = ExtensionMethods.SEGOE_UI_REGULAR_12;
            ExtensionMethods.SetButtonAppearance(btnExit, btnLogin);
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
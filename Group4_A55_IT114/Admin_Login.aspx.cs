using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Group4_A55_IT114
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        // Button for Admin Login
        protected void Adm_Login_Click(object sender, EventArgs e)
        {
            // id number of admin = admin and password of admin = admin123
            if (Adm_ID_TB1.Text == "admin" && Adm_PW_TB2.Text == "admin123")
                Response.Redirect("AdminPage.aspx");
            else 
            {
                MessageBox.Show("Incorrect ID or Password.", "Try Again", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }       

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group4_A55_IT114
{
    public partial class DoctorAdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btn_Doctor_Click(object sender, EventArgs e)
        {
            Response.Redirect("Doctor_Login.aspx");
        }

        protected void btn_Admin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Login.aspx");
        }
    }
}
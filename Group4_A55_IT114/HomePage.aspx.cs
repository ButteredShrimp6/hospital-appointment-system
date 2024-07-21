using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group4_A55_IT114
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnFindDoctor_Click(object sender, EventArgs e)
        {
            Response.Redirect("FindDoctorPage.aspx");
        }

        protected void btnAbout_Click(object sender, EventArgs e)
        {
            Response.Redirect("About_Us.aspx");
        }

        protected void btn_Appointment_Click(object sender, EventArgs e)
        {
            Response.Redirect("AppointmentPage.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group4_A55_IT114
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        /*Button that redirects to About Page*/
        protected void About_Click(object sender, EventArgs e)
        {
            Response.Redirect("About_Us.aspx");
        }

        /*Button that redirects to DoctorAdminSelect*/
        protected void Log_In_Click(object sender, EventArgs e)
        {
            Response.Redirect("DoctorAdminSelect.aspx");
        }

        protected void btnHomeHeader_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void btnHomeFooter_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void Appointment_Click(object sender, EventArgs e)
        {
            Response.Redirect("AppointmentPage.aspx");
        }
    }
}
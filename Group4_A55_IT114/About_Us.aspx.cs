using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group4_A55_IT114
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDev_Click(object sender, EventArgs e)
        {
            Response.Redirect("Developers.aspx");
        }
    }
}
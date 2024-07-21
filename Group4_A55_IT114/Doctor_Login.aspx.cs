using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Group4_A55_IT114
{

    public partial class Doctor_Login : System.Web.UI.Page
    {
        string connstr = @"Server=.;Initial Catalog=MMC; Integrated Security=True;";
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }


        // Button for Doctor Login
        protected void Doc_Login_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(connstr);

            string doc_logincmd = $"select doctorName from DoctorTBL " +
                $"where doctorID ='{Doc_ID_TB1.Text}' and password = '{Doc_PW_TB2.Text}';";
            
            cmd = new SqlCommand(doc_logincmd, conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            conn.Open();
            cmd.ExecuteNonQuery();
            

            if (dt.Rows.Count == 1)
            {
                using (reader = cmd.ExecuteReader())
                {
                    reader.Read();
                    string url = $"DoctorPage.aspx?doctorName={reader["doctorName"]}&doctorID={Doc_ID_TB1.Text}";
                    Response.Redirect(url);
                }

            }
            else
            {
                MessageBox.Show("Incorrect ID or Password.", "Try Again", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            conn.Close();
        }
    }
}
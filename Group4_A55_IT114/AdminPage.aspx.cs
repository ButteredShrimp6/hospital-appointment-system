using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Group4_A55_IT114
{
    public partial class AdminPageaspx : System.Web.UI.Page
    {
        protected string admin_Name;
        protected string admin_ID;

        string connstr = @"Server=.;Initial Catalog=MMC; Integrated Security=True;";
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            admin_Name = Request.QueryString["doctorName"];
            admin_ID = Request.QueryString["doctorID"];
            lblAdmin.Text = $"Good day, Admin";
        }

        // Search button 
        protected void Search_Doc_Click(object sender, EventArgs e)
        {

            // search records
            conn = new SqlConnection(connstr);
            conn.Open();

            string searchcmd = "select * from DoctorTBL where doctorID ='" + TextBox11.Text.ToString() + "';";

            cmd = new SqlCommand(searchcmd, conn);

            try
            {

                using (reader = cmd.ExecuteReader())
                {
                    reader.Read();
                    // display doctor id
                    TextBox12.Text = reader["doctorID"].ToString();
                    // display doctor name
                    TextBox13.Text = reader["doctorName"].ToString();
                    // display specialization
                    TextBox14.Text = reader["specialization"].ToString();
                    // display schedule
                    TextBox17.Text = reader["roomScheduleDay"].ToString();
                    TextBox15.Text = reader["roomScheduleTime"].ToString();
                    // display room number
                    TextBox16.Text = reader["roomNumber"].ToString();
                }
            }
            catch (Exception)
            {
                MessageBox.Show("No Doctor ID found.", "Try Again", MessageBoxButtons.OK,
                MessageBoxIcon.Information);

            }
            conn.Close();
        }

        // Random ID button
        protected void Random_ID_Click(object sender, EventArgs e)
        {
            const int MaxLength = 5;
            var unique = Guid.NewGuid();
            string uniqueid = unique.ToString();

            if (uniqueid.Length > MaxLength)
                uniqueid = uniqueid.Substring(0, MaxLength);
            string docID = "DOC" + uniqueid;
            ID_TB1.Text = docID.ToString();
        }

        // Random PW button
        protected void Random_PW_Click(object sender, EventArgs e)
        {
            const int MaxLength = 5;
            var unique = Guid.NewGuid();
            string uniquepass = unique.ToString();

            if (uniquepass.Length > MaxLength)
                uniquepass = uniquepass.Substring(0, MaxLength);
            string password = "PASS" + uniquepass;
            PW_TB2.Text = password.ToString();
        }

        // Create New Doctor info
        protected void Create_Doc_Info_Click(object sender, EventArgs e)
        {
            try
            {
                // insert records
                conn = new SqlConnection(connstr);
                conn.Open();
                string insertcmd = $"insert into DoctorTBL values('{ID_TB1.Text}','{PW_TB2.Text}'," +
                    $"'{NOD_TB3.Text}','{S_TB4.Text}','{A_TB5.Text}'" +
                    $",{(CN_TB6.Text)},'{RN_TB7.Text}','{RSD_TB8.Text}','{RST_TB9.Text}');";
                // (doctorID, password, doctorName, specialization, affiliation, contactNumber, roomNumber, roomScheduleDay, roomScheduleTime)
                cmd = new SqlCommand(insertcmd, conn);
                cmd.ExecuteNonQuery();
                DialogResult information = MessageBox.Show("Doctor Information Added.", "Added", MessageBoxButtons.OK,
                MessageBoxIcon.Information);
                if (information == DialogResult.OK)
                {
                    ID_TB1.Text = "";
                    PW_TB2.Text = "";
                    NOD_TB3.Text = "";
                    S_TB4.Text = "";
                    A_TB5.Text = "";
                    CN_TB6.Text = "";
                    RN_TB7.Text = "";
                    RSD_TB8.Text = "";
                    RST_TB9.Text = "";
                }
                conn.Close();
            }
            catch (SqlException ex)
            {
                // if doctorID already exist
                if (ex.Number == 2627)
                {
                    MessageBox.Show("Doctor ID already Exist.", "Try Again", MessageBoxButtons.OK,
                    MessageBoxIcon.Information);
                }
            }
            catch(Exception x)
            {
                MessageBox.Show(x.Message, "Error", MessageBoxButtons.OK,
                    MessageBoxIcon.Warning);
            }
        }

        /* For lock in on searching ng doctor tas mag aautomatic lagay ng name, specialization
           at affilication kaya naka read only yung tatlong text box from name to aff        
         */
        protected void Select_Btn_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(connstr);
            conn.Open();

            string searchcmd = "select * from DoctorTBL where doctorID ='" + TextBox1.Text.ToString() + "';";

            cmd = new SqlCommand(searchcmd, conn);

            try
            {
                using (reader = cmd.ExecuteReader())
                {
                    reader.Read();

                    // display doctor name
                    TextBox2.Text = reader["doctorName"].ToString();
                    // display specialization
                    TextBox3.Text = reader["specialization"].ToString();
                    // display affiliation
                    TextBox4.Text = reader["affiliation"].ToString();
                    //display doctorID
                    TextBox5.Text = reader["doctorID"].ToString();
                    // display password
                    TextBox6.Text = reader["password"].ToString();
                    // diplay contact number
                    TextBox7.Text = reader["contactNumber"].ToString();
                    // display room number
                    TextBox8.Text = reader["roomNumber"].ToString();
                    // display room schedule
                    TextBox18.Text = reader["roomScheduleDay"].ToString();
                    TextBox9.Text = reader["roomScheduleTime"].ToString();
                }
            }
            catch (Exception)
            {
                MessageBox.Show("No Doctor ID found.", "Try Again", MessageBoxButtons.OK,
                MessageBoxIcon.Information);
            }

            conn.Close();
        }

        // Update Doctor Record
        protected void Update_Rec_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text == "")
            {
                MessageBox.Show("No Doctor ID found.", "Try Again", MessageBoxButtons.OK,
                   MessageBoxIcon.Information);
            }
            else
            {
                try
                {
                    // update records
                    conn = new SqlConnection(connstr);
                    conn.Open();
                    string updatecmd = "update DoctorTBL set doctorID = '";

                    string[] arr = {"',password = '", "',doctorName = '", "',specialization = '", "',affiliation = '",
                "',contactNumber = '", "',roomNumber = '", "',roomScheduleDay = '", "',roomScheduleTime = '"};

                    updatecmd += TextBox5.Text + arr[0] + TextBox6.Text + arr[1] + TextBox2.Text +
                        arr[2] + TextBox3.Text + arr[3] + TextBox4.Text + arr[4] + TextBox7.Text + arr[5] + 
                        TextBox8.Text + arr[6] + TextBox18.Text + arr[7] + TextBox9.Text + "' where doctorID = '" 
                        + TextBox1.Text.ToString() + "';";

                    SqlCommand cmd = new SqlCommand(updatecmd, conn);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    DialogResult information = MessageBox.Show("Doctor Information Updated.", 
                        "Updated", MessageBoxButtons.OK,
                    MessageBoxIcon.Information);
                    if (information == DialogResult.OK)
                    {
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                        TextBox4.Text = "";
                        TextBox5.Text = "";
                        TextBox6.Text = "";
                        TextBox7.Text = "";
                        TextBox8.Text = "";
                        TextBox18.Text = "";
                        TextBox9.Text = "";
                    }
                }
                catch (SqlException a)
                {
                    MessageBox.Show(a.Message, "Try Again", MessageBoxButtons.OK,
                    MessageBoxIcon.Information);
                }
            }
            

        }

        // Select Doctor once search then delete it using the button below.
        protected void Select_Doc_Delete_Click(object sender, EventArgs e)
        {

            conn = new SqlConnection(connstr);
            conn.Open();
            if (TextBox10.Text == "")
            {
                MessageBox.Show("No Doctor ID found.", "Try Again", MessageBoxButtons.OK,
                MessageBoxIcon.Information);
            }
            try
            {
                string searchcmd = "select doctorID from DoctorTBL where doctorID ='" + TextBox10.Text.ToString() + "';";
            }
            catch (Exception)
            {
                MessageBox.Show("No Doctor ID found.", "Try Again", MessageBoxButtons.OK,
                MessageBoxIcon.Information);
            }
        }

        protected void Del_Record_Click(object sender, EventArgs e)
        {
            // Delete records
            conn = new SqlConnection(connstr);
            conn.Open();
            try
            {
                string deletecmd = "delete from DoctorTBL where doctorID ='" + TextBox10.Text.ToString() + "';";
                cmd = new SqlCommand(deletecmd, conn);
                cmd.ExecuteNonQuery();
                DialogResult information = MessageBox.Show("Doctor Information Deleted.", "Deleted", MessageBoxButtons.OK,
                MessageBoxIcon.Information);
                if (information == DialogResult.OK)
                {
                    TextBox10.Text = "";
                }
            }
            catch (Exception)
            {
                MessageBox.Show("No Doctor ID found.", "Try Again", MessageBoxButtons.OK,
                MessageBoxIcon.Information);
            }

            conn.Close();
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            ID_TB1.Text = "";
            PW_TB2.Text = "";
            NOD_TB3.Text = "";
            S_TB4.Text = "";
            A_TB5.Text = "";
            CN_TB6.Text = "";
            RN_TB7.Text = "";
            RST_TB9.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";
            TextBox16.Text = "";
        }
    }
}
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
    public partial class DoctorPage : System.Web.UI.Page
    {
        protected string doct_Name;
        protected string doct_ID;
        string connstr = @"Server=.;Initial Catalog=MMC;Integrated Security = True;";
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader reader;
        string cmdString;

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            doct_Name = Request.QueryString["doctorName"];
            doct_ID = Request.QueryString["doctorID"];
            lblDoctor.Text = $"Good day, Dr. {doct_Name}";

            conn = new SqlConnection(connstr);
            cmdString = $"select roomScheduleTime from DoctorTBL where doctorName = '{doct_Name}';";
            cmd = new SqlCommand(cmdString, conn);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt1 = new DataTable();
            da.Fill(dt1);
            DropDownList1.DataTextField = "roomScheduleTime";
            DropDownList1.DataValueField = "roomScheduleTime";
            DropDownList1.DataSource = dt1;
            DropDownList1.DataBind();

        }

        
        //Command Method View Appointment section
        protected void ViewAppointment_Button(object sender, CommandEventArgs e)
        {
            try
            {
                conn = new SqlConnection(connstr);
                conn.Open();

                switch (e.CommandName)
                {
                    //Approve Button
                    case "Approve":
                        string searchID_cmd = $"update AppointmentTBL set Status = 'Approved' " +
                            $"where appointmentID ='{TextBox2.Text}' and patientName ='{TextBox3.Text}';";

                        cmd = new SqlCommand(searchID_cmd, conn);
                        cmd.ExecuteNonQuery();

                        MessageBox.Show("Appointment Approved", "Appointment Status Change",
                            MessageBoxButtons.OK, MessageBoxIcon.Information);

                        conn.Close();
                        break;

                    //Cancel Button
                    case "Cancel":
                        searchID_cmd = $"update AppointmentTBL set Status = 'Canceled' " +
                            $"where appointmentID ='{TextBox2.Text}' and patientName ='{TextBox3.Text}';";

                        cmd = new SqlCommand(searchID_cmd, conn);
                        cmd.ExecuteNonQuery();

                        MessageBox.Show("Appointment Canceled", "Appointment Status Change",
                            MessageBoxButtons.OK, MessageBoxIcon.Information);
                        conn.Close();

                        break;

                    //Clear Button
                    case "Clear":
                        searchID_cmd = $"update AppointmentTBL set Status = 'Cleared' " +
                            $"where appointmentID ='{TextBox2.Text}' and patientName ='{TextBox3.Text}';";

                        cmd = new SqlCommand(searchID_cmd, conn);
                        cmd.ExecuteNonQuery();

                        MessageBox.Show("Appointment Cleared", "Appointment Status Change",
                            MessageBoxButtons.OK, MessageBoxIcon.Information);
                        conn.Close();
                        break;

                    case "Select":
                        searchID_cmd = $"select patientName, schedule, date, " +
                            $"reason from AppointmentTBL " +
                            $"where appointmentID = '{TextBox1.Text}';";

                        conn = new SqlConnection(connstr);
                        cmd = new SqlCommand(searchID_cmd, conn);
                        conn.Open();

                        try
                        {
                            using (reader = cmd.ExecuteReader())
                            {

                                reader.Read();
                                // display Appointment id
                                TextBox2.Text = TextBox1.Text;
                                // display Patient name
                                TextBox3.Text = reader["patientName"].ToString();
                                //display Appointment schedule
                                TextBox24.Text = reader["schedule"].ToString();
                                //display Appointment Date
                                TextBox25.Text = reader["date"].ToString();
                                //display Reason
                                TextBox28.Text = reader["reason"].ToString();

                            }
                        }
                        catch
                        {
                            MessageBox.Show("No Appointment ID found.", "Try Again", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        conn.Close();
                        break;
                }
            }
            catch(SqlException)
            {
                MessageBox.Show("No Appointment ID found.", "Try Again", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception b)
            {
                MessageBox.Show(b.Message, "Try Again", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //Command method for Appointment History Search or Clear
        protected void AppointmentHistory_buttons(object sender, CommandEventArgs e)
        {
            try
            {                
                conn = new SqlConnection(connstr);
                conn.Open();

                switch (e.CommandName)
                {
                    //Search Button
                    case "Search":
                        string searchAppointmentID_cmd = $"select patientName, Status from AppointmentTBL " +
                                        $"where doctorName = '{doct_Name}' and " +
                                        $"date = '{TextBox4.Text}' and Status = 'Cleared' or Status = 'Canceled';";
                        cmd = new SqlCommand(searchAppointmentID_cmd, conn);
                        
                        using (reader = cmd.ExecuteReader())
                        {

                            if (reader.HasRows)
                            {

                                List<string> patientNames = new List<string>();
                                List<string> patientStatus = new List<string>();

                                while (reader.Read())
                                {
                                    patientNames.Add(reader[0].ToString());
                                    patientStatus.Add(reader[1].ToString());
                                }

                                for (int i = 0; i < patientNames.Count; i++)
                                {
                                    if (i == 0)
                                    {
                                        TextBox5.Text = TextBox4.Text;
                                        TextBox10.Text = patientNames.ElementAt(i);
                                        TextBox15.Text = patientStatus.ElementAt(i);
                                    }
                                    else if (i == 1)
                                    {
                                        TextBox6.Text = TextBox4.Text;
                                        TextBox11.Text = patientNames.ElementAt(i);
                                        TextBox16.Text = patientStatus.ElementAt(i);
                                    }
                                    else if (i == 2)
                                    {
                                        TextBox7.Text = TextBox4.Text;
                                        TextBox12.Text = patientNames.ElementAt(i);
                                        TextBox17.Text = patientStatus.ElementAt(i);
                                    }
                                    else if (i == 3)
                                    {
                                        TextBox8.Text = TextBox4.Text;
                                        TextBox13.Text = patientNames.ElementAt(i);
                                        TextBox18.Text = patientStatus.ElementAt(i);
                                    }
                                    else if (i == 4)
                                    {
                                        TextBox9.Text = TextBox4.Text;
                                        TextBox14.Text = patientNames.ElementAt(i);
                                        TextBox19.Text = patientStatus.ElementAt(i);
                                    }
                                }
                            }
                            else
                            {
                                MessageBox.Show("No records found", "Notice",
                            MessageBoxButtons.OK, MessageBoxIcon.Information);
                            }

                        }
                        
                        break;

                    //Clear Button
                    case "Clear":
                        string deleteHistoryID_cmd = $"delete from AppointmentTBL where " +
                            $"date = '{TextBox4.Text}' and Status = 'Cleared';";
                        
                        cmd = new SqlCommand(deleteHistoryID_cmd, conn);
                        
                        DialogResult answer = MessageBox.Show("Clear History?", "Clearing Records", 
                            MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                        
                        if (answer.Equals(DialogResult.Yes))
                        {

                            TextBox5.Text = "";
                            TextBox10.Text = "";
                            TextBox15.Text = "";
                            TextBox6.Text = "";
                            TextBox11.Text = "";
                            TextBox16.Text = "";
                            TextBox7.Text = "";
                            TextBox12.Text = "";
                            TextBox17.Text = "";
                            TextBox8.Text = "";
                            TextBox13.Text = "";
                            TextBox18.Text = "";
                            TextBox9.Text = "";
                            TextBox14.Text = "";
                            TextBox19.Text = "";
                            cmd.ExecuteNonQuery();

                        }        
                        
                        break;
                }

                conn.Close();
            }

            catch(SqlException c)
            {
                MessageBox.Show(c.Message, "Information", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            catch (Exception c)
            {
                MessageBox.Show(c.Message, "Information", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        protected void genID_Btn0_Click(object sender, EventArgs e)
        {
            const int MaxLength = 5;
            var unique = Guid.NewGuid();
            string uniqueid = unique.ToString();

            if (uniqueid.Length > MaxLength)
                uniqueid = uniqueid.Substring(0, MaxLength);
            string appointmentID = "APP" + uniqueid;
            TextBox26.Text = appointmentID;
        }

        //Set new appointment through Call
        protected void Button5_Command(object sender, CommandEventArgs e)
        {
            try
            {
                conn = new SqlConnection(connstr);
                conn.Open();

                switch (e.CommandName)
                {
                    case "Set":

                        string newPatient_cmd = $"insert into AppointmentTBL values ('{TextBox26.Text}'," +
                                $"'{TextBox21.Text}','{TextBox27.Text}', {Int64.Parse(TextBox20.Text)},'N/A','N/A'," +
                                $"'N/A','{doct_ID}','{doct_Name}','{DropDownList1.SelectedItem}','{TextBox22.Text}', " +
                                $"'{TextBox23.Text}','Pending');";

                        cmd = new SqlCommand(newPatient_cmd, conn);
                        cmd.ExecuteNonQuery();

                        DialogResult information = MessageBox.Show("New Appointment Added Successfully.", "" +
                            "Added", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        if (information == DialogResult.OK)
                        {

                            //Return to empty fields
                            TextBox20.Text = "";
                            TextBox21.Text = "";
                            TextBox22.Text = "";
                            TextBox23.Text = "";
                            TextBox26.Text = "";
                            TextBox27.Text = "";
                            DropDownList1.SelectedIndex = -1;
                            
                        }
                        break;

                    case "Clear":
                        break;
                }
            }
            catch (SqlException a)
            {
                MessageBox.Show(a.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }      
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

namespace Group4_A55_IT114
{
    public partial class AppointmentPage : System.Web.UI.Page
    {

        string connstr = @"Server=.;Initial Catalog=MMC; Integrated Security=True;";
        SqlConnection conn;
        SqlCommand cmd;
        string cmdString;
        SqlDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;  
        }

        //Search Doctors using affiliations
        protected void Button1_Click(object sender, EventArgs e)
        {
            string specialization = DropDownList3.SelectedValue;
            conn = new SqlConnection(connstr);

            cmdString = $"select doctorName as Name, specialization as Specialization, " +
                $"affiliation as Affiliation, roomNumber as Room, roomScheduleDay as Days," +
                $" roomScheduleTime as Time from DoctorTBL where specialization = '{specialization}';";

            cmd = new SqlCommand(cmdString, conn);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt1 = new DataTable();
            da.Fill(dt1);

            GridView1.DataSource = dt1;
            GridView1.DataBind();

            cmdString = $"select * from DoctorTBL where specialization = '{specialization}'";
            cmd = new SqlCommand(cmdString, conn);

            SqlDataAdapter db = new SqlDataAdapter(cmd);
            DataTable dt2 = new DataTable();
            db.Fill(dt2);

            DropDownList1.DataTextField = "doctorName";
            DropDownList1.DataValueField = "doctorID";
            DropDownList1.DataSource = dt2;
            DropDownList1.DataBind();
        }

        //Data Binding into DropDownList2
        protected void Button13_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(connstr);
            cmdString = $"select roomScheduleTime, roomNumber from DoctorTBL where doctorID = '{DropDownList1.SelectedValue}';";
            cmd = new SqlCommand(cmdString, conn);
            conn.Open();
            using (reader = cmd.ExecuteReader())
            {
                reader.Read();
                string str = reader["roomScheduleTime"].ToString();
                string roomNum = reader["roomNumber"].ToString();
                string[] arr = str.Split(',');
                DropDownList2.DataSource = arr;
                DropDownList2.DataBind();
            }
            conn.Close();
        }

        //Generate Appointment ID
        protected void Button5_Click(object sender, EventArgs e)
        {
            const int MaxLength = 5;
            var unique = Guid.NewGuid();
            string uniqueid = unique.ToString();

            if (uniqueid.Length > MaxLength)
                uniqueid = uniqueid.Substring(0, MaxLength);
            string appointmentID = "APP" + uniqueid;
            TextBox12.Text = appointmentID;
        }

        //Create New Appointment
        protected void CreateNewAppointment(object sender, CommandEventArgs e)
        {
            string fullName = $"{TextBox4.Text}, {TextBox5.Text} {TextBox6.Text}";
            conn = new SqlConnection(connstr);
            

            switch (e.CommandName)
            {
                case "Submit":

                    try
                    {
                        conn.Open();
                        string roomNumber_cmd = $"select roomNumber from DoctorTBL where doctorName = '{DropDownList1.SelectedItem}';";
                        SqlCommand cmd2 = new SqlCommand(roomNumber_cmd, conn);
                        reader = cmd2.ExecuteReader();
                        reader.Read();
                        string roomNumber = reader["roomNumber"].ToString();
                        conn.Close();
                        conn.Open();
                        string newPatient_cmd = $"insert into AppointmentTBL values ('{TextBox12.Text}'," +
                       $"'{fullName}','{TextBox7.Text}', {Int64.Parse(TextBox8.Text)},'{TextBox9.Text}','{TextBox10.Text}'," +
                       $"'{TextBox11.Text}','{DropDownList1.SelectedValue}','{DropDownList1.SelectedItem}','{DropDownList2.SelectedItem}'," +
                       $"'{Calendar1.SelectedDate.ToShortDateString()}', " +
                       $"'{roomNumber}','Pending');";
                        cmd = new SqlCommand(newPatient_cmd, conn);
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        DialogResult information = MessageBox.Show("New Appointment Added Successfully.", "Added", MessageBoxButtons.OK,
                        MessageBoxIcon.Information);
                        if (information == DialogResult.OK)
                        {

                            //Return to empty fields
                            TextBox4.Text = "";
                            TextBox5.Text = "";
                            TextBox6.Text = "";
                            TextBox7.Text = "";
                            TextBox8.Text = "";
                            TextBox9.Text = "";
                            TextBox10.Text = "";
                            TextBox11.Text = "";
                            TextBox12.Text = "";
                            DropDownList1.SelectedIndex = -1;
                            DropDownList2.SelectedIndex = -1;

                        }
                    }
                    catch (SqlException a)
                    {
                        MessageBox.Show(a.Message, "Error", MessageBoxButtons.OK,
                        MessageBoxIcon.Warning);
                    }

                    catch (Exception b)
                    {
                        MessageBox.Show(b.Message, "Error", MessageBoxButtons.OK,
                        MessageBoxIcon.Warning);
                    }

                    break;

                case "Clear":

                    //Clear fields
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                    TextBox10.Text = "";
                    TextBox11.Text = "";
                    TextBox12.Text = "";
                    DropDownList1.SelectedIndex = -1;
                    DropDownList2.SelectedIndex = -1;
                    break;
            }

            

        }

        //Command method View Appointment thru Appointment ID
        protected void ViewAppointment_buttons(object sender, CommandEventArgs e)
        {
            conn = new SqlConnection(connstr);

            switch (e.CommandName)
            {
                //Search Button for View Appointment
                case "Search":

                    string viewAppointment_cmd = $"select patientName, schedule, date, doctorName," +
                        $"roomNumber, Status from AppointmentTBL " +
                        $"where appointmentID = '{TextBox22.Text}';";

                    cmd = new SqlCommand(viewAppointment_cmd, conn);
                    conn.Open();

                    try
                    {
                        using (reader = cmd.ExecuteReader())
                        {

                            reader.Read();
                            //display AppointmentID
                            TextBox23.Text = TextBox22.Text;
                            //display Patient Name
                            TextBox24.Text = reader["patientName"].ToString();
                            //display date of appointment
                            TextBox25.Text = reader["date"].ToString();
                            //display Appointment Status
                            TextBox26.Text = reader["Status"].ToString();
                            //Additional Fields for more details
                            //display appointment Schedule
                            TextBox27.Text = reader["schedule"].ToString();
                            //display doctor Name
                            TextBox28.Text = reader["doctorName"].ToString();
                            //display room number for Appointment
                            TextBox29.Text = reader["roomNumber"].ToString();

                        }
                    }

                    catch (SqlException)
                    {
                        MessageBox.Show("Invalid Appointment ID", "Error", MessageBoxButtons.OK,
                MessageBoxIcon.Warning);
                    }

                    catch (Exception b)
                    {
                        MessageBox.Show(b.Message, "Error", MessageBoxButtons.OK,
                                        MessageBoxIcon.Warning);
                    }
                    break;

                //Clear TextBoxes for View Appointment
                case "Clear":

                    TextBox22.Text = "";
                    TextBox23.Text = "";
                    TextBox24.Text = "";
                    TextBox25.Text = "";
                    TextBox26.Text = "";
                    //Additional Fields for more details
                    TextBox27.Text = "";
                    TextBox28.Text = "";
                    TextBox29.Text = "";

                    break;

                //Cancel Appointment for View Appointment
                case "Cancel":
                    if (TextBox22.Text == "")
                    {
                        MessageBox.Show("No Appointment ID entered",
                            "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else
                    {
                        string cancelAppointment_cmd = $"delete from AppointmentTBL " +
                        $"where appointmenID = '{TextBox23.Text}' " +
                        $"and patientName = '{TextBox24.Text}';";

                        cmd = new SqlCommand(cancelAppointment_cmd, conn);
                        conn.Open();
                        DialogResult answer = MessageBox.Show("Are you sure you are cancelling your Appointment?",
                            "Cancel Appointment", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);

                        if (answer.Equals(DialogResult.Yes))
                        {
                            cmd.ExecuteNonQuery();
                            TextBox22.Text = "";
                            TextBox23.Text = "";
                            TextBox24.Text = "";
                            TextBox25.Text = "";
                            TextBox26.Text = "";
                            //Additional Fields for more details
                            TextBox27.Text = "";
                            TextBox28.Text = "";
                            TextBox29.Text = "";

                        }
                    }
                    break;
            }
            conn.Close();
        }

    }
}
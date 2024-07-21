<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AppointmentPage.aspx.cs" Inherits="Group4_A55_IT114.AppointmentPage" Theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style26 {
            width: 100%;
            height: 351px;
        }
        .auto-style63 {
            width: 100%;
        }
        .auto-style66 {
            width: 270px;
        }
        .auto-style67 {
            width: 270px;
            height: 73px;
        }
        .auto-style68 {
            height: 73px;
        }
        .auto-style85 {
            text-align: center;
            height: 73px;
            width: 150px;
        }
        .auto-style87 {
            width: 270px;
            color: #144878;
        }
        .auto-style89 {
            width: 258px;
            text-align: left;
            height: 73px;
        }
        .auto-style90 {
            width: 258px;
        }
        .auto-style92 {
            width: 816px;
        }
        .auto-style93 {
            width: 150px;
        }
        .auto-style94 {
            width: 270px;
            height: 73px;
            text-align: left;
        }
        .auto-style96 {
            width: 307px;
            height: 73px;
        }
        .auto-style100 {
            width: 331px;
        }
        .auto-style116 {
        color: white;
        text-align: left;
    }
        .auto-style117 {
            width: 307px;
            height: 95px;
        }
        .auto-style118 {
            height: 95px;
        }
        .auto-style119 {
            text-align: center;
        }
        .auto-style120 {
            width: 307px;
        }
        </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>  
    <div class="appointmentimage">
        <table class="auto-style26" align="center">
             <tr>
                 <td>
                     <h1 class="auto-style116">APPOINTMENT REQUEST</h1>
                     <p class="auto-style116">Requesting and viewing appointments made easy with Malayan Medical Center.</p>
                 </td>
             </tr>
         </table>
    </div>
    <!--Create New Patient Appointment-->
    <div class ="border_appointment">
        <h1 class="border_header">Create New Appointment</h1>
        <div>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <table class="auto-style63">
                <tr>
                    <td class="auto-style96">
                        <asp:Label ID="Label9" runat="server" Text="Last Name : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="val2" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style68" colspan="4">
                        <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" Height="25px" Width="280px" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style120">
                        <asp:Label ID="Label10" runat="server" Text="First Name : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="#CC0000" EnableClientScript="False" ValidationGroup="val2"></asp:RequiredFieldValidator>
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox5" runat="server" BorderStyle="Solid" Height="30px" Width="280px" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style120">
                        <asp:Label ID="Label11" runat="server" Text="Midde Name : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox6" runat="server" BorderStyle="Solid" Height="30px" Width="280px" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style120">
                        <asp:Label ID="Label12" runat="server" Text="Age : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="#CC0000" EnableClientScript="False" ValidationGroup="val2"></asp:RequiredFieldValidator>
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox7" runat="server" BorderStyle="Solid" Height="30px" Width="100px" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style117">
                        <asp:Label ID="Label13" runat="server" Text="Contact Number : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="#CC0000" EnableClientScript="False" ValidationGroup="val2"></asp:RequiredFieldValidator>
                    </td>
                    <td colspan="4" class="auto-style118">
                        <asp:TextBox ID="TextBox8" runat="server" BorderStyle="Solid" Height="30px" Width="280px" MaxLength="13" CssClass="textbox" TextMode="Phone"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox8" ErrorMessage="Invalid Contact Number" ForeColor="Red" ValidationExpression="((^(\+)(\d){12}$)|(^\d{11}$))" ValidationGroup="val2"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style120">
                        <asp:Label ID="Label14" runat="server" Text="Address : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="#CC0000" EnableClientScript="False" ValidationGroup="val2"></asp:RequiredFieldValidator>
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox9" runat="server" BorderStyle="Solid" Height="150px" MaxLength="100" TextMode="MultiLine" Width="400px" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style120">
                        <asp:Label ID="Label15" runat="server" Text="Email (optional) : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox10" runat="server" BorderStyle="Solid" Height="30px" Width="280px" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style120">
                        <asp:Label ID="Label16" runat="server" Text="Reason for visit/appointment : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox11" ErrorMessage="*" ForeColor="#CC0000" EnableClientScript="False" ValidationGroup="val2"></asp:RequiredFieldValidator>
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox11" runat="server" BorderStyle="Solid" Height="180px" MaxLength="1000" TextMode="MultiLine" Width="400px" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                        <tr>
                            <td class="auto-style120">
                                <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="#144878" Text="Specialization : "></asp:Label>
                            </td>
                            <td colspan="3">
                                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                                    <asp:ListItem Selected="True">Select here</asp:ListItem>
                                    <asp:ListItem>Dermatology</asp:ListItem>
                                    <asp:ListItem>Internal Medicine</asp:ListItem>
                                    <asp:ListItem>Opthalmology</asp:ListItem>
                                    <asp:ListItem>Pediatrics</asp:ListItem>
                                    <asp:ListItem>Psychiatry</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:Button ID="Button1" runat="server" BorderStyle="Solid" CausesValidation="False" Height="36px" OnClick="Button1_Click" Text="Search" Width="164px" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" Width="912px">
                                </asp:GridView>
                            </td>
                        </tr>
                <tr>
                    <td class="auto-style120">
                        <asp:Label ID="Label17" runat="server" Text="Choose Doctor : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="300px"  DataTextField="doctorName" DataValueField="doctorName" CssClass="textbox" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                    <td colspan="2">
                        <asp:Button ID="Button13" runat="server" BorderStyle="Solid" CausesValidation="False" Height="36px" Text="Select" Width="164px" OnClick="Button13_Click" />
                    </td>
                </tr>
                        <tr>
                            <td class="auto-style120">
                                <asp:Label ID="Label40" runat="server" Font-Bold="True" ForeColor="#144878" Text="Date: "></asp:Label>
                            </td>
                            <td colspan="4">
                                <asp:Calendar runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="16px" Width="130px" ID="Calendar1" PrevMonthText="" ShowNextPrevMonth="False">
                                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                    <WeekendDayStyle BackColor="#CCCCFF" />
                                </asp:Calendar>
                            </td>
                        </tr>
                <tr>
                    <td class="auto-style120">
                        <asp:Label ID="Label18" runat="server" Text="Select Time Slot : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                    </td>
                    <td colspan="4">
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="300px" CssClass="textbox" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style120">
                        <asp:Label ID="Label19" runat="server" Text="Generate Appointment ID : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox12" ErrorMessage="*" ForeColor="#CC0000" EnableClientScript="False" ValidationGroup="val2"></asp:RequiredFieldValidator>
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox12" runat="server" BorderStyle="Solid" Height="30px" Width="250px" ReadOnly="True" CssClass="textbox"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button5" runat="server" BorderStyle="None" CausesValidation="False" CssClass="buttonzoom" OnClick="Button5_Click" Text="Generate Appointment ID" ValidationGroup="val2" Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style119" colspan="2">
                        <asp:Button ID="Button4" runat="server" BorderStyle="None" CommandName="Submit" CssClass="buttonzoom" OnCommand="CreateNewAppointment" Text="Set Appointment" ValidationGroup="val2" Width="200px" />
                    </td>
                    <td class="auto-style119" colspan="3">
                        <asp:Button ID="Button3" runat="server" BorderStyle="None" CausesValidation="False" CommandName="Clear" CssClass="buttonzoom" OnCommand="CreateNewAppointment" Text="Clear" Width="150px" />
                    </td>
                </tr>
            </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>

    </div>

    <!--Viewing of Appointment Approval on Appointments-->
    <div class ="border_appointment">
        <h1 class="border_header">View Appointment Approval</h1>
        <div>
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                      <table class="auto-style92" align="center">
                <tr>
                    <td class="auto-style67">
                        <asp:Label ID="Label30" runat="server" Text="Search Appointment ID : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox22" ErrorMessage="*" ForeColor="#CC0000" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style89">
                        <asp:TextBox ID="TextBox22" runat="server" BorderStyle="Solid" Height="30px" Width="250px" CssClass="textbox"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button9" runat="server" BorderStyle="None" CommandName="Search" CssClass="buttonzoom" OnCommand="ViewAppointment_buttons" Text="Search" Width="150px" />
                    </td>
                </tr>
                          <tr>
                              <td class="auto-style94">
                                  <asp:Label ID="Label31" runat="server" Font-Bold="True" ForeColor="#144878" Text="Appointment ID : "></asp:Label>
                              </td>
                              <td class="auto-style89">
                                  <asp:TextBox ID="TextBox23" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" ReadOnly="True" Width="250px"></asp:TextBox>
                              </td>
                              <td class="auto-style85">
                                  &nbsp;</td>
                          </tr>
                <tr>
                    <td class="auto-style66">
                        <asp:Label ID="Label33" runat="server" Font-Bold="True" ForeColor="#144878" Text="Patient Name : "></asp:Label>
                    </td>
                    <td class="auto-style90">
                        <asp:TextBox ID="TextBox24" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" ReadOnly="True" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style93">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style66">
                        <asp:Label ID="Label32" runat="server" Font-Bold="True" ForeColor="#144878" Text="Date of appointment : "></asp:Label>
                    </td>
                    <td class="auto-style90">
                        <asp:TextBox ID="TextBox25" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" ReadOnly="True" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style93">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style66">
                        <asp:Label ID="Label35" runat="server" Font-Bold="True" ForeColor="#144878" Text="Time of Appointment:"></asp:Label>
                    </td>
                    <td class="auto-style90">
                        <asp:TextBox ID="TextBox27" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" ReadOnly="True" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style93">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style66">
                        <asp:Label ID="Label36" runat="server" Font-Bold="True" ForeColor="#144878" Text="Doctor:"></asp:Label>
                    </td>
                    <td class="auto-style90">
                        <asp:TextBox ID="TextBox28" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" ReadOnly="True" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style93">&nbsp;</td>
                </tr>
                          <tr>
                              <td class="auto-style66">
                                  <asp:Label ID="Label37" runat="server" Font-Bold="True" ForeColor="#144878" Text="Room No:"></asp:Label>
                              </td>
                              <td class="auto-style90">
                                  <asp:TextBox ID="TextBox29" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" ReadOnly="True" Width="250px"></asp:TextBox>
                              </td>
                              <td class="auto-style93">&nbsp;</td>
                          </tr>
                          <tr>
                              <td class="auto-style87">
                                  <asp:Label ID="Label34" runat="server" Font-Bold="True" ForeColor="#144878" Text="Status : "></asp:Label>
                              </td>
                              <td class="auto-style90">
                                  <asp:TextBox ID="TextBox26" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" ReadOnly="True" Width="250px"></asp:TextBox>
                              </td>
                              <td class="auto-style93">&nbsp;</td>
                          </tr>
                          <tr>
                              <td class="auto-style66">
                                  &nbsp;</td>
                              <td class="auto-style90">
                                  <asp:Button ID="Button11" runat="server" BorderStyle="None" CommandName="Cancel" CssClass="buttonzoom" OnCommand="ViewAppointment_buttons" Text="Cancel Appointment" Width="368px" />
                              </td>
                              <td class="auto-style93">
                                  <asp:Button ID="Button12" runat="server" BorderStyle="None" CommandName="Clear" CssClass="buttonzoom" OnCommand="ViewAppointment_buttons" Text="Clear" Width="150px"/>
                              </td>
                          </tr>
            </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

</asp:Content>

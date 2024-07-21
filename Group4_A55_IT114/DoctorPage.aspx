<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorAdminMaster.Master" AutoEventWireup="true" CodeBehind="DoctorPage.aspx.cs" Inherits="Group4_A55_IT114.DoctorPage" Theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style40 {
            text-align: center;
        }
        .auto-style41 {
            width: 75%;
        }
        .auto-style44 {
            text-align: left;
            width: 12%;
            height: 88px;
        }
        .auto-style46 {
            height: 88px;
            text-align: center;
        }
        .auto-style51 {
            text-align: center;
            width: 314px;
        }
        .auto-style52 {
            text-align: center;
            width: 314px;
            height: 65px;
        }
        .auto-style53 {
            text-align: center;
            width: 258px;
            height: 65px;
        }
        .auto-style54 {
            text-align: center;
            height: 65px;
            width: 158px;
        }
        .auto-style57 {
            width: 294px;
            text-align: center;
        }
        .auto-style58 {
            text-align: center;
            height: 68px;
        }
        .newStyle1 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            text-indent: 2cm;
            text-align: left;
            display: block;
            font-size: large;
            color: #144878;
        }
        .auto-style115 {
            height: 190px;
            width: 1057px;
        }
        .auto-style116 {
            width: 294px;
        }
        .auto-style118 {
            width: 730px;
        }
        .auto-style119 {
            width: 350px;
        }
        .auto-style123 {
            text-align: center;
            width: 258px;
        }
        .auto-style126 {
            width: 841px;
        }
        .auto-style127 {
            text-align: center;
            width: 158px;
        }
        .auto-style132 {
            height: 88px;
            text-align: center;
            width: 150px;
        }
        .auto-style134 {
            height: 88px;
            text-align: center;
            width: 21%;
        }
        .auto-style138 {
            height: 88px;
            text-align: center;
            width: 12%;
        }
        .auto-style144 {
            height: 88px;
            text-align: center;
            width: 1%;
        }
        .auto-style145 {
            text-align: center;
            width: 1%;
        }
        .auto-style146 {
            text-align: left;
            width: 12%;
        }
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>
    <div class="imagepage">
        <table>
             <tr>
                 <td class="auto-style115">
                         <asp:Label ID="lblDoctor" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" ForeColor="#144878"></asp:Label>
                 </td>
             </tr>
         </table>
    </div>
   <!--View Appointment-->
   <div class ="border_page">
       <h1 class="border_header">View Appointment </h1>
       <div>    
           <asp:UpdatePanel ID="UpdatePanel1" runat="server">
               <ContentTemplate>
                   <table class="auto-style41">
                       <tr>
                           <td class="auto-style44">
                               <asp:Label ID="Label6" runat="server" Text="Search Appointment ID:  " Font-Bold="True" ForeColor="#144878"></asp:Label>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="searchPatient" EnableClientScript="False">*</asp:RequiredFieldValidator>
                           </td>
                           <td class="auto-style144">
                               <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Height="30px" Width="250px" CssClass="textbox"></asp:TextBox>
                           </td>
                           <td class="auto-style46" colspan="2">
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style138">
                               <asp:Button ID="VA_Clear_Btn" runat="server" BorderStyle="None" CommandName="Clear" CssClass="buttonzoom" OnCommand="ViewAppointment_Button" Text="Clear" Width="150px" />
                           </td>
                           <td class="auto-style144">
                               <asp:Button ID="Button2" runat="server" BorderStyle="None" CommandName="Approve" CssClass="buttonzoom" OnCommand="ViewAppointment_Button" Text="Approve" Width="150px" />
                           </td>
                           <td class="auto-style134">
                               <asp:Button ID="SelectPatient_Button" runat="server" BorderStyle="None" CssClass="buttonzoom" OnCommand = "ViewAppointment_Button" CommandName="Select" Text="Select" Width="150px" />
                           </td>
                           <td class="auto-style132">
                               <asp:Button ID="Button3" runat="server" BorderStyle="None" CommandName="Cancel" CssClass="buttonzoom" OnCommand="ViewAppointment_Button" Text="Cancel" Width="150px" />
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style146" rowspan="2">
                               <asp:Label ID="Label7" runat="server" Text="Appointment ID: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                           </td>
                           <td class="auto-style145" rowspan="2">
                               <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Height="30px" Width="250px" ReadOnly="True"></asp:TextBox>
                           </td>
                           <td class="auto-style40" colspan="2">
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style58" colspan="2">
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style146">
                               <asp:Label ID="Label8" runat="server" Text="Patient Name: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                           </td>
                           <td class="auto-style145">
                               <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Height="30px" Width="250px" ReadOnly="True"></asp:TextBox>
                           </td>
                           <td class="auto-style40" colspan="2">
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style146">
                               <asp:Label ID="Label26" runat="server" Font-Bold="True" ForeColor="#144878" Text="Reason for Appointment: "></asp:Label>
                           </td>
                           <td class="text1" colspan="3">
                               <asp:TextBox ID="TextBox28" runat="server" BorderStyle="Solid" Height="296px" MaxLength="200" ReadOnly="True" TextMode="MultiLine" Width="250px" CssClass="textbox"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style146" rowspan="2">
                               <asp:Label ID="Label17" runat="server" Text="Time of Schedule: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                           </td>
                           <td class="auto-style145" rowspan="2">
                               <asp:TextBox ID="TextBox24" runat="server" BorderStyle="Solid" Height="30px" ReadOnly="True" Width="250px"></asp:TextBox>
                           </td>
                           <td class="auto-style40" colspan="2">&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style40" colspan="2">&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style146">
                               <asp:Label ID="Label18" runat="server" Text="Date: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                           </td>
                           <td class="auto-style145">
                               <asp:TextBox ID="TextBox25" runat="server" BorderStyle="Solid" Height="30px" ReadOnly="True" Width="250px"></asp:TextBox>
                           </td>
                           <td class="auto-style40" colspan="2">&nbsp;</td>
                       </tr>
                   </table>
               </ContentTemplate>
           </asp:UpdatePanel>
       </div>
   </div>


    <!--Appointment History-->
   <div class ="border_page">
       <h1 class ="border_header"> Appointment History </h1>
       <div>          
           <asp:UpdatePanel ID="UpdatePanel2" runat="server">
               <ContentTemplate>
                   <table class="auto-style126" align="center">
               <tr>
                   <td class="auto-style51">
                       <asp:Label ID="Label9" runat="server" Text="Search by Date: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                       <asp:Label ID="Label24" runat="server" Font-Italic="True" ForeColor="#144878" Text="(e.g. May/25/2022) "></asp:Label>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="#CC0000" ControlToValidate="TextBox4" EnableClientScript="False"></asp:RequiredFieldValidator>
                   </td>
                   <td class="auto-style123">
                       <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" Width="200px" CssClass="textbox" Height="30px"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style51">
                       <asp:Button ID="AH_Clear_Btn" runat="server" BorderStyle="None" CommandName="Clear" CssClass="buttonzoom" OnCommand="AppointmentHistory_buttons" Text="Clear" Width="150px" />
                   </td>
                   <td class="auto-style123">
                       <asp:Button ID="AH_Seach_Btn0" runat="server" BorderStyle="None" CommandName="Search" CssClass="buttonzoom" OnCommand="AppointmentHistory_buttons" Text="Search" Width="150px" />
                   </td>
                   <td class="auto-style127">
                       &nbsp;</td>
               </tr>
                       <tr>
                           <td class="auto-style51">
                               <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="#144878" Text="Date"></asp:Label>
                           </td>
                           <td class="auto-style123">
                               <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="#144878" Text="Patient Name"></asp:Label>
                           </td>
                           <td class="auto-style127">
                               <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="#144878" Text="Status"></asp:Label>
                           </td>
                       </tr>
               <tr>
                   <td class="auto-style51">
                       <asp:TextBox ID="TextBox5" runat="server" BorderStyle="Solid" Height="30px" Width="200px" CssClass="textbox"></asp:TextBox>
                   </td>
                   <td class="auto-style123">
                       <asp:TextBox ID="TextBox10" runat="server" BorderStyle="Solid" Height="30px" Width="250px" CssClass="textbox"></asp:TextBox>
                   </td>
                   <td class="auto-style127">
                       <asp:TextBox ID="TextBox15" runat="server" BorderStyle="Solid" Height="30px" Width="150px" CssClass="textbox"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style52">
                       <asp:TextBox ID="TextBox6" runat="server" BorderStyle="Solid" Height="25px" Width="200px" CssClass="textbox"></asp:TextBox>
                   </td>
                   <td class="auto-style53">
                       <asp:TextBox ID="TextBox11" runat="server" BorderStyle="Solid" Height="30px" Width="250px" CssClass="textbox"></asp:TextBox>
                   </td>
                   <td class="auto-style54">
                       <asp:TextBox ID="TextBox16" runat="server" BorderStyle="Solid" Height="30px" Width="150px" CssClass="textbox"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style51">
                       <asp:TextBox ID="TextBox7" runat="server" BorderStyle="Solid" Height="30px" Width="200px" CssClass="textbox"></asp:TextBox>
                   </td>
                   <td class="auto-style123">
                       <asp:TextBox ID="TextBox12" runat="server" BorderStyle="Solid" Height="30px" Width="250px" CssClass="textbox"></asp:TextBox>
                   </td>
                   <td class="auto-style127">
                       <asp:TextBox ID="TextBox17" runat="server" BorderStyle="Solid" Height="30px" Width="150px" CssClass="textbox"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style51">
                       <asp:TextBox ID="TextBox8" runat="server" BorderStyle="Solid" Height="30px" Width="200px" CssClass="textbox"></asp:TextBox>
                   </td>
                   <td class="auto-style123">
                       <asp:TextBox ID="TextBox13" runat="server" BorderStyle="Solid" Height="30px" Width="250px" CssClass="textbox"></asp:TextBox>
                   </td>
                   <td class="auto-style127">
                       <asp:TextBox ID="TextBox18" runat="server" BorderStyle="Solid" Height="30px" Width="150px" CssClass="textbox"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style51">
                       <asp:TextBox ID="TextBox9" runat="server" BorderStyle="Solid" Height="30px" Width="200px" CssClass="textbox"></asp:TextBox>
                   </td>
                   <td class="auto-style123">
                       <asp:TextBox ID="TextBox14" runat="server" BorderStyle="Solid" Height="30px" Width="250px" CssClass="textbox"></asp:TextBox>
                   </td>
                   <td class="auto-style127">
                       <asp:TextBox ID="TextBox19" runat="server" BorderStyle="Solid" Height="30px" Width="150px" CssClass="textbox"></asp:TextBox>
                   </td>
               </tr>
               </table>
               </ContentTemplate>
           </asp:UpdatePanel>
       </div>
   </div>


    <!--Create New Appointment via Telephone-->
   <div class ="border_page">
       <h1 class ="border_header">Appointment via Telephone (Secretary)</h1>
       <div>
           <asp:UpdatePanel ID="UpdatePanel3" runat="server">
               <ContentTemplate>
                   <table class="auto-style118" align="center">
               <tr>
                   <td class="auto-style116">
                       <asp:Label ID="Label20" runat="server" Text="Appointment ID: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox26" ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="teleApp" EnableClientScript="False"></asp:RequiredFieldValidator>
                   </td>
                   <td class="auto-style119">
                       <asp:TextBox ID="TextBox26" runat="server" BorderStyle="Solid" Height="30px" Width="250px" CssClass="textbox"></asp:TextBox>
                   </td>
               </tr>
                       <tr>
                           <td class="auto-style116">&nbsp;</td>
                           <td class="auto-style119">
                               <asp:Button ID="genID_Btn0" runat="server" BorderStyle="None" CssClass="buttonzoom" OnClick="genID_Btn0_Click" Text="Generate Random Appointment ID" Width="350px" />
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style116">
                               <asp:Label ID="Label13" runat="server" Text="Contact Number: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox20" ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="teleApp"></asp:RequiredFieldValidator>
                           </td>
                           <td>
                               <asp:TextBox ID="TextBox20" runat="server" BorderStyle="Solid" Height="30px" Width="250px" CssClass="textbox"></asp:TextBox>
                           </td>
                       </tr>
               <tr>
                   <td class="auto-style116">
                       <asp:Label ID="Label14" runat="server" Text="Patient Name: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox21" ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="teleApp"></asp:RequiredFieldValidator>
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox21" runat="server" BorderStyle="Solid" Height="30px" Width="250px"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style116">
                       <asp:Label ID="Label23" runat="server" Text="Patient Age: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox27" ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="teleApp"></asp:RequiredFieldValidator>
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox27" runat="server" BorderStyle="Solid" Height="30px" Width="250px"></asp:TextBox>
                   </td>
               </tr>
                       <tr>
                           <td class="auto-style116">
                               <asp:Label ID="Label21" runat="server" Text="Set Schedule Time: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                           </td>
                           <td>
                               <asp:DropDownList ID="DropDownList1" runat="server" Width="300px" CssClass="textbox" Height="30px">
                               </asp:DropDownList>
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style116">
                               <asp:Label ID="Label22" runat="server" Text="Set Date: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                               <asp:Label ID="Label25" runat="server" Font-Bold="False" Font-Italic="True" ForeColor="#144878" Text="(e.g. June/3/2022) "></asp:Label>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox22" ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="teleApp"></asp:RequiredFieldValidator>
                           </td>
                           <td>
                               <asp:TextBox ID="TextBox22" runat="server" BorderStyle="Solid" Height="30px" Width="250px" CssClass="textbox"></asp:TextBox>
                           </td>
                       </tr>
               <tr>
                   <td class="auto-style116">
                       <asp:Label ID="Label16" runat="server" Text="Room Number: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox23" ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="teleApp"></asp:RequiredFieldValidator>
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox23" runat="server" BorderStyle="Solid" Height="30px" Width="250px" CssClass="textbox"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style57">
                       <asp:Button ID="AVT_Clear_btn" runat="server" BorderStyle="None" Text="Clear" Width="130px" OnCommand="Button5_Command" CommandName="Clear" CssClass="buttonzoom" />
                   </td>
                   <td>
                       <asp:Button ID="Button5" runat="server" BorderStyle="None" CssClass="buttonzoom" Text="Set appointment" Width="200px" OnCommand="Button5_Command" CommandName="Set" ValidationGroup="teleApp" />
                   </td>
               </tr>
           </table>
               </ContentTemplate>
           </asp:UpdatePanel>
       </div>
   </div>



</asp:Content>

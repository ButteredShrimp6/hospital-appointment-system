<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorAdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Group4_A55_IT114.AdminPageaspx" Theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style43 {
            height: 65px;
            width: 216px;
            text-align: left;
        }
        .auto-style49 {
            width: 209px;
            height: 65px;
        }
        .auto-style56 {
            width: 209px;
            text-align: center;
        }
        .auto-style60 {
            width: 216px;
            text-align: center;
        }
        .auto-style62 {
            width: 200px;
            height: 73px;
        }
        .auto-style63 {
            text-align: center;
            width: 258px;
            height: 73px;
        }
        .auto-style64 {
            width: 200px;
            height: 65px;
        }
        .auto-style65 {
            text-align: center;
            width: 258px;
            height: 65px;
        }
        .newStyle1 {
            text-indent: 2cm;
            display: inline-block;
        }
        .auto-style66 {
            width: 340px;
            height: 73px;
        }
        .auto-style68 {
            width: 340px;
        }
        .auto-style73 {
            text-align: center;
            width: 258px;
        }
        .auto-style76 {
            text-align: center;
            width: 258px;
            height: 76px;
        }
        .auto-style78 {
            text-align: center;
            width: 258px;
            height: 92px;
        }
        .auto-style90 {
            width: 216px;
            text-align: left;
        }
        .auto-style93 {
            width: 217px;
        }
        .auto-style97 {
            transition-duration: 0.4s;
            border-radius: 12px;
            width: 200px;
            height: 50px;
            cursor: pointer;
            margin-bottom: 0px;
        }
        .auto-style98 {
            width: 217px;
            height: 78px;
        }
        .auto-style99 {
            text-align: center;
            width: 258px;
            height: 78px;
        }
        .auto-style101 {
            font-family: Arial;
            height: auto;
            width: 561px;
            border-style: none;
            border-radius: 20px;
            margin: 30px auto;
        }
        .auto-style104 {
            font-family: Arial;
            height: auto;
            width: 560px;
            border-style: none;
            border-radius: 20px;
            margin: 30px auto;
        }
        .auto-style108 {
            font-family: Arial;
            height: auto;
            width: 684px;
            border-style: none;
            border-radius: 20px;
            margin: 30px auto;
        }
        .auto-style115 {
            height: 190px;
            width: 1057px;
        }
        .auto-style116 {
            width: 544px;
        }
        .auto-style117 {
            text-align: center;
            width: 200px;
        }
        .auto-style118 {
            width: 200px;
        }
        .auto-style119 {
            width: 209px;
            height: 73px;
            text-align: center;
        }
        .auto-style120 {
            width: 340px;
            height: 78px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="imagepage">
        <table>
             <tr>
                 <td class="auto-style115">
                         <asp:Label ID="lblAdmin" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" ForeColor="#144878"></asp:Label>
                 </td>
             </tr>
         </table>
    </div>
     <!--Search-->
    <div class="border_page">
        <h1 class="border_header"> Search Doctor Information </h1>
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    
            <table class="auto-style116" align="center">
            <tr>
                <td class="auto-style118">
                        <asp:Label ID="Label25" runat="server" Text="Input Doctor ID: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TextBox11" ErrorMessage="*" ForeColor="Red" ValidationGroup="searchDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style76">
                        <asp:TextBox ID="TextBox11" runat="server" BorderStyle="Solid" Height="30px" Width="250px" MaxLength="10" CssClass="textbox" ></asp:TextBox>
                    </td>
                </tr>
            <tr>
                <td class="auto-style117">&nbsp;</td>
                    <td class="auto-style78">
                        <asp:Button ID="Search_Doc" runat="server" BorderStyle="None" CssClass="buttonzoom" OnClick="Search_Doc_Click" Text="Search" ValidationGroup="searchDoctor" Width="200px" />
                    </td>
                </tr>
            <tr>
                    <td class="auto-style62">
                        <asp:Label ID="Label26" runat="server" Text="Doctor's ID: " Font-Bold="True" Font-Italic="False" ForeColor="#144878"></asp:Label>
                    </td>
                    <td class="auto-style63">
                        <asp:TextBox ID="TextBox12" runat="server" BorderStyle="Solid" Height="30px" Width="250px" Enabled="False" CssClass="textbox" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
            <tr>
                    <td class="auto-style64">
                        <asp:Label ID="Label27" runat="server" Text="Doctor's Name: " ForeColor="#144878" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style65">
                        <asp:TextBox ID="TextBox13" runat="server" BorderStyle="Solid" Height="30px" Width="250px" Enabled="False" CssClass="textbox" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
            <tr>
                    <td class="auto-style118">
                        <asp:Label ID="Label28" runat="server" Text="Specialization: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                    </td>
                    <td class="auto-style73">
                        <asp:TextBox ID="TextBox14" runat="server" BorderStyle="Solid" Height="30px" Width="250px" Enabled="False" CssClass="textbox" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
            <tr>
                    <td class="auto-style118">
                        <asp:Label ID="Label31" runat="server" Text="Schedule Day: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                    </td>
                    <td class="auto-style73">
                        <asp:TextBox ID="TextBox17" runat="server" BorderStyle="Solid" Height="30px" Width="250px" Enabled="False" CssClass="textbox" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
            <tr>
                    <td class="auto-style118">
                        <asp:Label ID="Label29" runat="server" Text="Schedule Time: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                    </td>
                    <td class="auto-style73">
                        <asp:TextBox ID="TextBox15" runat="server" BorderStyle="Solid" Height="30px" Width="250px" Enabled="False" CssClass="textbox" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
            <tr>
                    <td class="auto-style118">
                        <asp:Label ID="Label30" runat="server" Text="Room Number: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                    </td>
                    <td class="auto-style73">
                        <asp:TextBox ID="TextBox16" runat="server" BorderStyle="Solid" Height="30px" Width="250px" Enabled="False" CssClass="textbox" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style118">&nbsp;</td>
                    <td class="auto-style73">
                        <asp:Button ID="Button3" runat="server" BorderStyle="None" CssClass="buttonzoom" OnClick="Button3_Click" Text="Clear" Width="200px" />
                    </td>
                </tr>
        </table>

                </ContentTemplate>
            </asp:UpdatePanel>
        </div>

        

    </div>

      <!--Update-->
    <div class="border_page">
        <h1 class="border_header"> Update Doctor Records </h1>
        <div>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    
            <table class="auto-style108">
                <tr>
                    <td class="auto-style66">
                        <asp:Label ID="Label23" runat="server" Text="Input Doctor ID: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" ValidationGroup="updatesearchDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style63">
                        <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Height="30px" Width="250px" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style119">&nbsp;</td>
                    <td class="auto-style63">
                        <asp:Button ID="Select_Btn0" runat="server" BorderStyle="None" CssClass="buttonzoom" OnClick="Select_Btn_Click" Text="Select" ValidationGroup="updatesearchDoctor" Width="150px" Height="50px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style68">
                        <asp:Label ID="Label15" runat="server" Text="Name: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" ValidationGroup="updateDoctor" EnableClientScript="False" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style73">
                        <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Height="30px" Width="250px" MaxLength="50" CssClass="textbox" CausesValidation="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style120">
                        <asp:Label ID="Label16" runat="server" Text="Specialization: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red" ValidationGroup="updateDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style99">
                        <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Height="30px" Width="250px" MaxLength="20" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style49">
                        <asp:Label ID="Label17" runat="server" Text="Affiliation:  " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red" ValidationGroup="updateDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style65">
                        <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" Height="30px" Width="250px" MaxLength="20" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style68">
                        <asp:Label ID="Label18" runat="server" Text="ID Number: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red" ValidationGroup="updateDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style73">
                        <asp:TextBox ID="TextBox5" runat="server" BorderStyle="Solid" Height="30px" Width="250px" MaxLength="10" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style68">
                        <asp:Label ID="Label19" runat="server" Text="Password: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red" ValidationGroup="updateDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style73">
                        <asp:TextBox ID="TextBox6" runat="server" BorderStyle="Solid" Height="30px" Width="250px" Rows="20" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style66">
                        <asp:Label ID="Label20" runat="server" Text="Contact Number: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red" ValidationGroup="updateDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style63">
                        <asp:TextBox ID="TextBox7" runat="server" BorderStyle="Solid" Height="30px" Width="250px" CssClass="textbox" MaxLength="13"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox7" ErrorMessage="Invalid Contact Number" ForeColor="Red" ValidationExpression="((^(\+)(\d){12}$)|(^\d{11}$))" ValidationGroup="updateDoctor"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style68">
                        <asp:Label ID="Label21" runat="server" Text="Room Number: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red" ValidationGroup="updateDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style73">
                        <asp:TextBox ID="TextBox8" runat="server" BorderStyle="Solid" Height="30px" Width="250px" MaxLength="10" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style66">
                        <asp:Label ID="Label34" runat="server" Text="Schedule Day: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBox18" ErrorMessage="*" ForeColor="Red" ValidationGroup="updateDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style63">
                        <asp:TextBox ID="TextBox18" runat="server" BorderStyle="Solid" Height="30px" Width="250px" MaxLength="25" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style66">
                        <asp:Label ID="Label22" runat="server" Text="Schedule Time: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Red" ValidationGroup="updateDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style63">
                        <asp:TextBox ID="TextBox9" runat="server" BorderStyle="Solid" Height="30px" Width="250px" MaxLength="25" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style56">
                        <asp:Button ID="Button5" runat="server" BorderStyle="None" CssClass="buttonzoom" OnClick="Button1_Click" Text="Clear" Width="150px" />
                    </td>
                    <td class="auto-style63">
                        <asp:Button ID="Update_Rec" runat="server" BorderStyle="None" OnClick="Update_Rec_Click" Text="Update Record" Width="150px" ValidationGroup="updateDoctor" CssClass="buttonzoom" ValidateRequestMode="Enabled" />
                    </td>
                </tr>
            </table>
                </ContentTemplate>
            </asp:UpdatePanel>

        </div>
    </div>

    <!--Add-->
    <div class="border_page">
        <h1 class="border_header"> Create new Doctor Record </h1>
        <div>
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                     <table class="auto-style104">
                <tr>
                    <td class="auto-style43" rowspan="2">
                        <asp:Label ID="Label6" runat="server" Text="ID Number: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ID_TB1" ErrorMessage="*" ForeColor="Red" ValidationGroup="createDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style65">
                        <asp:TextBox ID="ID_TB1" runat="server" BorderStyle="Solid" Height="25px" Width="250px" MaxLength="10" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style65">
                        <asp:Button ID="Random_ID" runat="server" BorderStyle="None" OnClick="Random_ID_Click" Text="Generate Random ID" Width="200px" ValidationGroup="generateID" CssClass="buttonzoom" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style90" rowspan="2">
                        <asp:Label ID="Label13" runat="server" Text="Password: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PW_TB2" ErrorMessage="*" ForeColor="Red" ValidationGroup="createDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style73">
                        <asp:TextBox ID="PW_TB2" runat="server" BorderStyle="Solid" Height="25px" Width="250px" MaxLength="20" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style73">
                        <asp:Button ID="Random_PW" runat="server" BorderStyle="None" OnClick="Random_PW_Click" Text="Generate Random PW" Width="250px" ValidationGroup="generatePW" CssClass="buttonzoom" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style90">
                        <asp:Label ID="Label7" runat="server" Text="Name of Doctor:  " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="NOD_TB3" ErrorMessage="*" ForeColor="Red" ValidationGroup="createDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style73">
                        <asp:TextBox ID="NOD_TB3" runat="server" BorderStyle="Solid" Height="25px" Width="250px" MaxLength="50" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style90">
                        <asp:Label ID="Label8" runat="server" Text="Specialization: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="S_TB4" ErrorMessage="*" ForeColor="Red" ValidationGroup="createDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style73">
                        <asp:TextBox ID="S_TB4" runat="server" BorderStyle="Solid" Height="25px" Width="250px" MaxLength="20" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style90">
                        <asp:Label ID="Label14" runat="server" Text="Affiliation: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="A_TB5" ErrorMessage="*" ForeColor="Red" ValidationGroup="createDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style73">
                        <asp:TextBox ID="A_TB5" runat="server" BorderStyle="Solid" Height="25px" Width="250px" MaxLength="20" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style90">
                        <asp:Label ID="Label9" runat="server" Text="Contact Number:  " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="#990000" ControlToValidate="CN_TB6" ValidationGroup="createDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style73">
                        <asp:TextBox ID="CN_TB6" runat="server" BorderStyle="Solid" Height="25px" MaxLength="13" Width="250px" CssClass="textbox"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="CN_TB6" ErrorMessage="Invalid Contact Number" ForeColor="Red" ValidationExpression="((^(\+)(\d){12}$)|(^\d{11}$))" ValidationGroup="createDoctor" EnableClientScript="False"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style90">
                        <asp:Label ID="Label10" runat="server" Text="Room Number: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="RN_TB7" ErrorMessage="*" ForeColor="Red" ValidationGroup="createDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style73">
                        <asp:TextBox ID="RN_TB7" runat="server" BorderStyle="Solid" Height="25px" Width="250px" MaxLength="10" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style90" rowspan="2">
                        <asp:Label ID="Label32" runat="server" Text="Room Schedule Day: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="RSD_TB8" ErrorMessage="*" ForeColor="Red" ValidationGroup="createDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style73">
                        <asp:Label ID="Label33" runat="server" Text="e.g.: M/W/F" Font-Italic="True" ForeColor="#144878"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style73">
                        <asp:TextBox ID="RSD_TB8" runat="server" BorderStyle="Solid" Height="25px" Width="250px" MaxLength="25" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style90" rowspan="2">
                        <asp:Label ID="Label11" runat="server" Text="Room Schedule Time: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="RST_TB9" ErrorMessage="*" ForeColor="Red" ValidationGroup="createDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style73">
                        <asp:Label ID="Label12" runat="server" Text="e.g.: 2pm-5pm, 5pm-6pm" Font-Italic="True" ForeColor="#144878"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style73">
                        <asp:TextBox ID="RST_TB9" runat="server" BorderStyle="Solid" Height="25px" Width="250px" MaxLength="25" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style60">
                        <asp:Button ID="Button2" runat="server" BorderStyle="None" Text="Clear" Width="150px" OnClick="Button2_Click" CssClass="buttonzoom" CausesValidation="False" />
                    </td>
                    <td class="auto-style73">
                        <asp:Button ID="Create_Doc_Info" runat="server" BorderStyle="None" OnClick="Create_Doc_Info_Click" Text="Create Record" Width="200px" ValidationGroup="createDoctor" CssClass="buttonzoom" UseSubmitBehavior="False" />
                    </td>
                </tr>
            </table>
                </ContentTemplate>
            </asp:UpdatePanel>
           

        </div>
    </div>

   

     <!--Delete-->
    <div class="border_page">
        <h1 class="border_header"> Delete Doctor Record </h1>
        <div>
            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
        
                <ContentTemplate>
                    
            <table class="auto-style101">
                <tr>
                    <td class="auto-style98">
                        <asp:Label ID="Label24" runat="server" Text="Input Doctor ID: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox10" ErrorMessage="*" ForeColor="Red" ValidationGroup="deleteDoctor" EnableClientScript="False" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style99">
                        <asp:TextBox ID="TextBox10" runat="server" BorderStyle="Solid" Height="30px" Width="250px" MaxLength="10" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style93">
                        <asp:Button ID="Select_Doc_Delete" runat="server" BorderStyle="None" CssClass="auto-style97" OnClick="Select_Doc_Delete_Click" Text="Select" ValidationGroup="deleteSelect" />
                    </td>
                    <td class="auto-style73">
                        <asp:Button ID="Del_Record" runat="server" BorderStyle="None" Text="Delete Record" Width="200px" OnClick="Del_Record_Click" ValidationGroup="deleteDoctor" CssClass="buttonzoom" />
                    </td>
                </tr>
            </table>
                </ContentTemplate>
            </asp:UpdatePanel>

        </div>
    </div>

</asp:Content>

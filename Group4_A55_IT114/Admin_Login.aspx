<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="Group4_A55_IT114.Admin_Login" Theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style40 {
            height: 98px;
            text-align: right;
        }
        .auto-style42 {
            height: 98px;
            width: 137px;
        }
        .auto-style43 {
            text-align: center;
            width: 250px;
        }
        .auto-style44 {
            height: 98px;
            text-align: left;
            width: 258px;
        }
        .auto-style53 {
            font-family: Arial;
            height: auto;
            width: 775px;
            border-radius: 20px;
            border-style: none;
            margin: 30px auto;
            background-color: white;
        }
        .auto-style56 {
            width: 137px;
        }
        .auto-style58 {
            text-align: left;
            width: 258px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class ="border_login">
         <table class="auto-style53">
            <tr>
                <td class="auto-style43" rowspan="3">
                    <asp:Image ID="Admin_pic" runat="server" Height="250px" Width="250px" ImageUrl="~/Images/Images for DoctorAdminPage/AdminIcon.png" />
                    <br />
                    <asp:Label ID="Admin_Label" runat="server" Text="ADMIN" Font-Bold="True" ForeColor="#144878"></asp:Label>
                </td>
                <td class="auto-style56">
                    <asp:Label ID="ID_Number_Label" runat="server" Text="ID Number:" Font-Bold="True" ForeColor="#144878"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Adm_ID_TB1" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style44">
                    <asp:TextBox ID="Adm_ID_TB1" runat="server" BorderStyle="Solid" Height="50px" Width="250px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style56">
                    <asp:Label ID="Password_Label" runat="server" Text="Password:" Font-Bold="True" ForeColor="#144878"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Adm_PW_TB2" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style58">
                    <asp:TextBox ID="Adm_PW_TB2" runat="server" BorderStyle="Solid" Height="50px" Width="250px" TextMode="Password" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style58">
                    <asp:Button ID="Adm_Login" runat="server" BorderStyle="None" Text="Log In" Width="200px" CssClass="buttonzoom" OnClick="Adm_Login_Click" />
                </td>
            </tr>
        </table>
    </div>

    <div>


    </div>

    <div>


    </div>

</asp:Content>

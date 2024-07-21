    <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Doctor_Login.aspx.cs" Inherits="Group4_A55_IT114.Doctor_Login" Theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style40 {
            width: 879px;
        }
        .auto-style42 {
            width: 137px;
        }
        .auto-style43 {
            width: 250px;
            text-align: center;
        }
        .auto-style44 {
            height: 98px;
            text-align: left;
        width: 258px;
    }
        .auto-style51 {
            width: 137px;
            text-align: right;
        }
        .auto-style53 {
            font-family: Arial;
            height: auto;
            width: 778px;
            border-radius: 20px;
            border-style: none;
            margin: 30px auto;
            background-color: white;
        }
        .auto-style54 {
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
                    <asp:Image ID="Image1" runat="server" Height="250px" Width="250px" ImageUrl="~/Images/Images for DoctorAdminPage/DoctorIcon.png" />
                    <br />
                    <asp:Label ID="Doctor_Label" runat="server" Text="DOCTOR" Font-Bold="True" ForeColor="#144878"></asp:Label>
                </td>
                <td class="auto-style51">
                    <asp:Label ID="ID_Number_Label" runat="server" Text="ID Number:" Font-Bold="True" ForeColor="#144878"></asp:Label>
                    <asp:RequiredFieldValidator ValidationGroup='valGroup1' ID="RequiredFieldValidator1" runat="server" ControlToValidate="Doc_ID_TB1" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style44">
                    <asp:TextBox ID="Doc_ID_TB1" runat="server" BorderStyle="Solid" Height="50px" Width="250px" MaxLength="11" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style51">
                    <asp:Label ID="Password_Label" runat="server" Text="Password:" Font-Bold="True" ForeColor="#144878"></asp:Label>
                    <asp:RequiredFieldValidator ValidationGroup='valGroup1' ID="RequiredFieldValidator2" runat="server" ControlToValidate="Doc_PW_TB2" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style54">
                    <asp:TextBox ID="Doc_PW_TB2" runat="server" BorderStyle="Solid" Height="50px" Width="250px" MaxLength="50" TextMode="Password" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style54">
                    <asp:Button ValidationGroup='valGroup1' ID="Doc_Login" runat="server" BorderStyle="None" Text="Log In" Width="200px" CssClass="buttonzoom" OnClick="Doc_Login_Click" />
                </td>
            </tr>
        </table>
    </div>

    <div>


    </div>

    <div>


    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DoctorAdminSelect.aspx.cs" Inherits="Group4_A55_IT114.DoctorAdminPage" Theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style40 {
            width: 98%;
        }
        .auto-style41 {
            width: 100%;
        }
        .auto-style43 {
            width: 450px;
            text-align: center;
            height: 92px;
        }
        .auto-style45 {
        text-align: center;
            height: 396px;
        }
        .auto-style46 {
            text-align: center;
            width: 450px;
            height: 396px;
        }
        .auto-style47 {
            text-align: center;
            height: 92px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class = "border_page">
        <h1 class ="border_header"> Which one are you? </h1>
        <div class="auto-style40">

            

            <table class="auto-style41">
                <tr>
                    <td class="auto-style46">
                        <br />
                        <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/Images/Images for DoctorAdminPage/DoctorIcon.png" Width="300px" />
                        <br />
                        <br />
                       
                       
                    </td>
                    <td class="auto-style45">
                        <asp:Image ID="Image2" runat="server" Height="300px" ImageUrl="~/Images/Images for DoctorAdminPage/AdminIcon.png" Width="300px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43">
                        <asp:Button ID="btn_Doctor" runat="server" CssClass="buttonzoom" Text="DOCTOR" Width="200px" BorderStyle="None" OnClick="btn_Doctor_Click" />
                    </td>
                    <td class="auto-style47">
                        <asp:Button ID="btn_Admin" runat="server" CssClass="buttonzoom" Text="ADMIN" Width="200px" BorderStyle="None" OnClick="btn_Admin_Click" />
                    </td>
                </tr>
           
            </table>
        </div>
    </div>
</asp:Content>

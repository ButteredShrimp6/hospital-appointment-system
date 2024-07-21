<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Group4_A55_IT114.WebForm1"  Theme="Theme1"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style22 {
            width: 100%;
        }
        .auto-style23 {
            text-align: right;
            height: 444px;
            width: 1032px;
        }
        .auto-style25 {
            text-align: right;
            width: 539px;
            height: 444px;
        }
        .auto-style26 {
            width: 100%;
            height: 444px;
        }
        .auto-style27 {
            text-align: center;
        }
        .auto-style40 {
            text-align: center;
            color: #FFFFFF;
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="homepageimage">

         <table class="auto-style26">
             <tr>
                 <td>
                     <h3>Connecting doctors and patients with</h3>
                     <h1 class="text1">MALAYAN MEDICAL CENTER</h1>
                     <p class="text1">
                         <asp:Button ID="btn_Appointment" runat="server" CssClass="buttonzoom" Text="Make an Appointment Now" Width="250px" BorderStyle="None" OnClick="btn_Appointment_Click" />
                     </p>
                 </td>
             </tr>
         </table>

    </div>
    <div class="div1">

        <table class="auto-style22">
            <tr>
                <td>
                    <asp:Image ID="Image2" runat="server" Height="400px" ImageUrl="~/Images/Images for HomePage/FindDoctorHome.png" CssClass="imageall" />
                </td>
                <td>
                    <h1 class="text1">Find Your Doctor Now</h1>
                    <p>
                        Find a doctor that will attend to your needs (pls improve this)</p>

                    <asp:Button ID="btnFindDoctor" runat="server" BorderStyle="None" CssClass="buttonzoom" OnClick="btnFindDoctor_Click" Text="FIND DOCTOR" />

                </td>
            </tr>
        </table>

    </div>
    <div>

        <table class="auto-style22">
            <tr>
                <td class="auto-style23">
                    <h1 class="text2">Why choose </h1>
                    <h1 class="text2">MALAYAN MEDICAL CENTER?</h1>
                    <p class="text2">
                        Here at Malayan Medical Center, we provide quality service by dedicated doctors.</p>
                    
                    <asp:Button ID="btnAbout" runat="server" BorderStyle="None" CssClass="buttonzoom" Text="LEARN MORE" OnClick="btnAbout_Click" />
                    
                </td>
                <td class="auto-style25">
                    <asp:Image ID="Image3" runat="server" Height="400px" ImageUrl="~/Images/Images for HomePage/AboutUsHome.png" CssClass="imageall" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

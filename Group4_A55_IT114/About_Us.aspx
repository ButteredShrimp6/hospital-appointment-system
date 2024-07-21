<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="About_Us.aspx.cs" Inherits="Group4_A55_IT114.About" theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style40 {
            text-align: center;
        }
        .auto-style26 {
            width: 100%;
            height: 351px;
        }
        .auto-style43 {
            width: 100%;
        }
        .auto-style44 {
            width: 400px;
        }
        .auto-style45 {
            text-align: justify;
        }
        .auto-style46 {
            text-align: center;
        }
        .auto-style47 {
            text-align: center;
            width: 555px;
        }
        .auto-style48 {
            text-align: center;
            width: 597px;
        }
        </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--About Us-->
    <div class="aboutusimage">
        <table class="auto-style26" align="center">
             <tr>
                 <td>
                     <h1 class="hyperlink_color">ABOUT MALAYAN MEDICAL CENTER</h1>
                     <p class="hyperlink_color">Get to know the most convenient hospital appointment system in the Philippines.</p>
                 </td>
             </tr>
         </table>
    </div>
    <!--Mission-->
    <div class="div1">

        <table class="auto-style43">
            <tr>
                <td class="auto-style44">
                    <asp:Image ID="Image1" runat="server" CssClass="imageall" Height="400px" ImageUrl="~/Images/Images for AboutUs/MissionPic.png" />
                </td>
                <td>
                    <h1>MISSION</h1>
                    <p class="auto-style45">
            We aim to provide an excellent and efficient quality of service and easier access for patients 
            who want to seek an appointment with their preferred doctors. We ensure that the local and international 
            standards fulfills the clients satisfaction.
                    </p>
                </td>
            </tr>
        </table>

    </div>
    <!--Vision-->
    <div>

        <table class="auto-style43">
            <tr>
                <td>
                    <h1 class="text2">VISION</h1>
                    <p class="auto-style45">
            We want to embrace the following values: integrity, trustworthiness, and efficiency into our 
            everyday services and be recognized as a reliable community of people that assist patients in 
            getting themselves medically checked in the best place to receive medicine and 
            care here at Malayan Medical Center.
                    </p>
                </td>
                <td>
                    <asp:Image ID="Image2" runat="server" CssClass="imageall" Height="400px" ImageUrl="~/Images/Images for AboutUs/VisionPic.png" />
                </td>
            </tr>
        </table>
    </div>
    <!--Core Values-->
    <div class="div1">
        <h1 class="auto-style46">CORE VALUES</h1>
        <table class="auto-style43">
            <tr>
                <td class="auto-style48">
                    <asp:Image ID="Image3" runat="server" Height="150px" ImageUrl="~/Images/Images for AboutUs/Satisfactory.png" />
                    <br />
                    <h1>
 <strong>Satisfaction</strong></h1>
                    <p class="auto-style46">
                        Ensuring the patients' needs are  accomodated with the best service and accomodation the hospital can offer.
                    </p>
                </td>
                <td class="auto-style47">
                    <asp:Image ID="Image5" runat="server" Height="150px" ImageUrl="~/Images/Images for AboutUs/Integrity.png" />
                    <h1>
        <strong>Integrity</strong></h1>
                    <p class="auto-style46">
                        Exhibiting remarkable and right call of action with modesty and proper decorum.
                    </p>
                </td>
            </tr>
            <tr>
                <td class="auto-style48">
                    <asp:Image ID="Image4" runat="server" Height="150px" ImageUrl="~/Images/Images for AboutUs/Trustworthiness.png" />
                    <h1>
        <strong>Trustworthiness</strong></h1>
                    <p class="auto-style46">
                        Committing to the oath that one shan&#39;t break the trust given and entrusted by the patients.
                    </p>
                </td>
                <td class="auto-style47">
                    <asp:Image ID="Image6" runat="server" Height="150px" ImageUrl="~/Images/Images for AboutUs/Efficiency.png" />
                    <h1>
        <strong>Efficiency</strong></h1>
                    <p class="auto-style46">
                        Excellent and compassionate service being executed in a swift and excellent manner.</p>
                </td>
            </tr>
        </table>

    </div>
    <div>

        <table class="auto-style43">
            <tr>
                <td class="auto-style44">
                    <asp:Image ID="Image7" runat="server" CssClass="imageall" Height="400px" ImageUrl="~/Images/Images for AboutUs/DeveloperPic.png" />
                </td>
                <td>
                    <h1>MEET THE DEVELOPERS</h1>
                    <p class="auto-style45">
                        Get to know the people behind the website of Malayan Medical Center.</p>
                    <p class="auto-style45">
                        <asp:Button ID="btnDev" runat="server" CssClass="buttonzoom" Text="Learn more" BorderStyle="None" OnClick="btnDev_Click"/>
                    </p>
                </td>
            </tr>
        </table>

    </div>
    </asp:Content>

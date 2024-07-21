 <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Developers.aspx.cs" Inherits="Group4_A55_IT114.Developers" Theme="Theme1"%>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style44 {
            width: 100%;
        }
                
        .auto-style48 {
            background-image: url('Images/Developers_Image/DevPic.png');
            height: 367px;
        }
        
        .auto-style49 {
            height: 360px;
        }
        .auto-style50 {
            text-align: left;
            color: #FFFFFF;
        }
        
        .auto-style53 {
            text-align: center;
        width: 675px;
    }
        
        .auto-style54 {
            text-align: justify;
        }
        .auto-style55 {
        text-align: center;
        width: 570px;
    }
    .auto-style56 {
        text-align: center;
    }
        
        </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="developerimage">
        <table class="auto-style49">
             <tr>
                 <td>
                     <h1 class="auto-style50">MEET THE DEVELOPERS OF </h1>
                     <h1 class="auto-style50">MALAYAN MEDICAL CENTER</h1>
                     <p class="hyperlink_color">Malayan Medical Center is operated and owned by five Computer Science professionals from Malayan Colleges Laguna. </p>
                 </td>
             </tr>
         </table>
    </div>

    <div>
        <div>

            <table class="auto-style44">
                <tr>
                    <td class="auto-style55">
                        <asp:Image ID="Image2" runat="server" Height="230px" ImageAlign="Middle" Width="230px" ImageUrl="~/Images/Developers_Image/Andro Amoranto.png" CssClass="imageall" />
                        <br />
                        <h3>Andro Cecilio A. Amoranto</h3>
                        <p class="auto-style54">An independent creative back-end developer affiliated with Q Agency.</p>
                    </td>
                    <td class="auto-style53">
                        <asp:Image ID="Image7" runat="server" Height="230px" ImageAlign="Middle" Width="230px" ImageUrl="~/Images/Developers_Image/Jake Clavillas.jpg" CssClass="imageall" />
                        <br />
                        <h3>Jake Russel D. Clavillas</h3>
                        <p class="auto-style54">
                            A front-end designer from Japan currently based in the Philippines under Accenture’s project, ROSS.</p>
                    </td>
                </tr>
                </table>
            <table class="auto-style44">
                <tr>
                    <td class="auto-style56">
                        <asp:Image ID="Image4" runat="server" Height="230px" ImageAlign="Middle" Width="230px" ImageUrl="~/Images/Developers_Image/Andrea Maala.jpg" CssClass="imageall" />
                        <br />
                        <h3>Andrea Mei T. Maala</h3>
                        <p class="auto-style54">
                            A front-end developer that’s skilled at progressive enhancement, design system, and UI Engineering from Halcyon.</p>
                    </td>
                    <td class="auto-style56">
                        <asp:Image ID="Image8" runat="server" Height="230px" ImageAlign="Middle" Width="230px" ImageUrl="~/Images/Developers_Image/Aaliyah Moral.png" CssClass="imageall" />
                        <h3>Aaliyah Zafira H. Moral </h3>
                        <p class="auto-style54">
                            An interface developer from Syntactics Inc. who majors in using modern front-end web technologies.</p>
                    </td>
                    <td class="auto-style56">
                        <asp:Image ID="Image9" runat="server" Height="230px" ImageAlign="Middle" Width="230px" ImageUrl="~/Images/Developers_Image/Ada Ticzon.jpg" CssClass="imageall" />
                        <h3>Guadalupe Anne P. Ticzon </h3>
                        <p class="auto-style54">
                            A full stack developer from ISBX majoring in projects involving web development and UI/UX Design.</p>
                    </td>
                </tr>
                </table>

        </div>
    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FindDoctorPage.aspx.cs" Inherits="Group4_A55_IT114.WebForm2" theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="div1">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1121px">
            <Columns>
                <asp:BoundField DataField="doctorName" HeaderText="Doctor Name" SortExpression="doctorName" />
                <asp:BoundField DataField="specialization" HeaderText="Specialization" SortExpression="specialization" />
                <asp:BoundField DataField="affiliation" HeaderText="Affiliation" SortExpression="affiliation" />
                <asp:BoundField DataField="contactNumber" HeaderText="Contact Number" SortExpression="contactNumber" />
                <asp:BoundField DataField="roomScheduleDay" HeaderText="Schedule Day" SortExpression="roomScheduleDay" />
                <asp:BoundField DataField="roomNumber" HeaderText="Room Number" SortExpression="roomNumber" />
                <asp:BoundField DataField="roomScheduleTime" HeaderText="Schedule Time" SortExpression="roomScheduleTime" />
            </Columns>
            <HeaderStyle BackColor="#003399" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ 
            ConnectionStrings:MMCConnectionString %>" SelectCommand="SELECT [doctorName], 
            [specialization], [affiliation], [contactNumber], [roomScheduleDay], [roomNumber], [roomScheduleTime] FROM [DoctorTBL]"></asp:SqlDataSource>
    </div>
    
</asp:Content>

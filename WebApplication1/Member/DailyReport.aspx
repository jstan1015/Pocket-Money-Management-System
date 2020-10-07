<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DailyReport.aspx.cs" Inherits="WebApplication1.DailyReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
     <br />
    <br />
    <center>
    <h4>Daily Report</h4>
    <h5>Total Expenses Spent <asp:Label ID="lblDetails" runat="server" Text="From '' To ''"></asp:Label></h5>
        <h5>View by:<asp:Label ID="lblName2" runat="server" Text=""></asp:Label></h5> 
         <h5>Date:<asp:Label ID="lblDate" runat="server" Text=""></asp:Label> </h5>
     <div>
          <br />

          <br />
            <table>
                <tr>
                    <td>Start Date:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Date" OnServerValidate="CustomValidator1_ServerValidate" ForeColor="Red"></asp:CustomValidator>
                    </td>
                </tr>
              
                <tr>
                    <td>End Date:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Date" OnServerValidate="CustomValidator2_ServerValidate" ForeColor="Red"></asp:CustomValidator>
                    </td>
                </tr>

                
            </table>
        </div>
        <br />
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" Height="34px" Width="100px" />
          <br />
          <br />
         <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="765px" EmptyDataText="No Record">
            <Columns>
                <asp:BoundField DataField="ItemId" HeaderText="ItemId" />
                <asp:BoundField DataField="ItemName" HeaderText="ItemName" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" />
                <asp:BoundField DataField="ExpensesDate" HeaderText="ExpensesDate" />
                <asp:BoundField DataField="Category" HeaderText="Category" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
     <br />
     <br />
        
       <h4>Total Expenses(RM)&nbsp; : <asp:Label ID="lblTotal" runat="server"></asp:Label></h4>
       
        </center>
     <p>
            <asp:Literal ID="LitCount" runat="server"></asp:Literal>
        </p>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Member/ViewReport.aspx">&lt;Back</asp:HyperLink>
</asp:Content>

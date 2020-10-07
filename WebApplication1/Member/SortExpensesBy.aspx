<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SortExpensesBy.aspx.cs" Inherits="WebApplication1.SortExpensesBy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 93px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <br />
    <br />
    <center>
    <h4>Annual Report</h4> 

    <div>
         <h4>Total Expense Spent by <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label> in 2019 <br /><asp:Label ID="lblDetails" runat="server" Text="Sort By 'Low to High Prices' Or 'High To Low Prices'"></asp:Label></h4>
        
    <h5>View by:<asp:Label ID="lblName2" runat="server" Text=""></asp:Label></h5> 
         <h5>Date:<asp:Label ID="lblDate" runat="server" Text=""></asp:Label> </h5>
    
            <table class="auto-style1">
                <tr>
                    <td>Sort Expenses By</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" >
                            <asp:ListItem>Low to High Price</asp:ListItem>
                            <asp:ListItem>High to Low Price</asp:ListItem>
                       
                        </asp:DropDownList>
                        &nbsp;  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Apply" Width="91px" />
&nbsp; </td>
                </tr>
                <%--<tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Apply" Width="91px" />
                    </td>
                </tr>--%>
            </table>

        </div>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="LinqDataSource1" Width="846px">
            <Columns>
                <asp:BoundField DataField="ItemId" HeaderText="ItemId" ReadOnly="True" SortExpression="ItemId" />
                <asp:BoundField DataField="ItemName" HeaderText="ItemName" ReadOnly="True" SortExpression="ItemName" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" ReadOnly="True" SortExpression="Amount" />
                <asp:BoundField DataField="ExpensesDate" HeaderText="ExpensesDate" ReadOnly="True" SortExpression="ExpensesDate" />
                <asp:BoundField DataField="Category" HeaderText="Category" ReadOnly="True" SortExpression="Category" />
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
        <td class="auto-style5"><h4>Total Expenses(RM)&nbsp; : <asp:Label ID="lblTotal" runat="server"></asp:Label></h4></center>
        <p>
            <asp:Literal ID="LitCount" runat="server"></asp:Literal>
        </p></td>
    </center>
        <br />
        <br />
        <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="WebApplication1.DatabaseDataContext" EntityTypeName="" OrderBy="Amount desc" Select="new (ItemId, ItemName, Amount, ExpensesDate, Category)" TableName="records">
        </asp:LinqDataSource>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Member/ViewReport.aspx">&lt;Back</asp:HyperLink>
</asp:Content>

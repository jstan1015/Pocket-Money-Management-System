<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 93px;
        }
        .auto-style2 {
            width: 351px;
        }
        .auto-style3 {
            width: 351px;
            height: 43px;
        }
        .auto-style4 {
            height: 43px;
        }
    </style>
</head>
<body>
    <p>
        <br />
    </p>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Sort Expenses By</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Low to High Price</asp:ListItem>
                            <asp:ListItem>High to Low Price</asp:ListItem>
                        </asp:DropDownList>
&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Apply" Width="91px" />
                    </td>
                </tr>
            </table>

        </div>
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
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WebApplication1.DatabaseDataContext" EntityTypeName="" OrderBy="Amount" Select="new (ItemId, ItemName, Amount, ExpensesDate, Category)" TableName="records">
        </asp:LinqDataSource>
        <br />
        <br />
        <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="WebApplication1.DatabaseDataContext" EntityTypeName="" OrderBy="Amount desc" Select="new (ItemId, ItemName, Amount, ExpensesDate, Category)" TableName="records">
        </asp:LinqDataSource>
    </form>
</body>
</html>

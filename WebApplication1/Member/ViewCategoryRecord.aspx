<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewCategoryRecord.aspx.cs" Inherits="WebApplication1.ViewCategoryRecord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main" runat="server">
    <br />
    <br />
    <center>
    <h4>Annual Report</h4> 

    <h5>Total Expenses Spent <asp:Label ID="lblDetails" runat="server" Text="Based On Category '' In 2019"></asp:Label></h5>
      <h5>View by:<asp:Label ID="lblName2" runat="server" Text=""></asp:Label></h5> 
         <h5>Date:<asp:Label ID="lblDate" runat="server" Text=""></asp:Label> </h5>

    <table>
     <tr>
     <td> <asp:TextBox ID="searchBox" runat="server" Height="30px" Width="561px" PlaceHolder="Search" AutoCompleteType="Disabled" ></asp:TextBox></td>
     <%--<td> <asp:ImageButton ID="search" runat="server" ImageUrl="~/img/search.png" Width="44px" Height="22px" style="margin-top: 0px" OnClick="search_Click" />--%>
        <td> <asp:ImageButton ID="search" runat="server" ImageUrl="~/img/search1.png" Width="37px" Height="30px" style="margin-top: 0px" OnClick="search_Click" />
     </td>
    </table>
     &nbsp
    &nbsp
    &nbsp<br />
    <br />
&nbsp;<asp:GridView ID="gw1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="821px" EmptyDataText="No Record">
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
        <tr>
         <td class="auto-style5"><h4>Total Expenses(RM)&nbsp; : <asp:Label ID="lblTotal" runat="server"></asp:Label></h4></td>
    
       </tr>
        </center>
     <p>
            <asp:Literal ID="LitCount" runat="server"></asp:Literal>
        </p>
     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Member/ViewReport.aspx">&lt;Back</asp:HyperLink>
</asp:Content>

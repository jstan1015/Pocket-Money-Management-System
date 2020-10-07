<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MonthlyRecord.aspx.cs" Inherits="WebApplication1.MonthlyRecord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main" runat="server">
    <br />
    <br />
    <center>
    <h4>Monthly Report</h4> 

    <h5>Total Expenses Spent <asp:Label ID="lblDetails" runat="server" Text=""></asp:Label></h5>

    <h5>View by:<asp:Label ID="lblName2" runat="server" Text=""></asp:Label></h5> 
         <h5>Date:<asp:Label ID="lblDate" runat="server" Text=""></asp:Label> </h5>
    
    <br />
    <br />

    <p>Select Month and Year</p>
    <table>
        <tr>
        <td>Month: &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="104px">
            <asp:ListItem Value="1">Jan</asp:ListItem>
            <asp:ListItem Value="2">Feb</asp:ListItem>
             <asp:ListItem Value="3">Mar</asp:ListItem>
             <asp:ListItem Value="4">April</asp:ListItem>
             <asp:ListItem Value="5">May</asp:ListItem>
            <asp:ListItem Value="6">June</asp:ListItem>
            <asp:ListItem Value="7">July</asp:ListItem>
            <asp:ListItem Value="8">Aug</asp:ListItem>
            <asp:ListItem Value="9">Sep</asp:ListItem>
            <asp:ListItem Value="10">Oct</asp:ListItem>
            <asp:ListItem Value="11">Nov</asp:ListItem>
            <asp:ListItem Value="12">Dec</asp:ListItem>
                  </asp:DropDownList></td>
           
       
            <td>&nbsp; Year:&nbsp;<asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled"></asp:TextBox></td>
            
             
     
        <td><asp:Button ID="Button1" runat="server" Text="Filter" OnClick="Button1_Click" Height="29px" Width="78px" /></td>
        </tr>
    </table>
    
    
        

     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="no record" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="903px">
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
        

  
            <td class="auto-style5"><h4>Total Expenses(RM)&nbsp; : <asp:Label ID="lblTotal" runat="server"></asp:Label></h4></center>
        <p>
            <asp:Literal ID="LitCount" runat="server"></asp:Literal>
        </p>
            <%--<td class="auto-style4"><h3><asp:Label ID="lblTotal" runat="server"></asp:Label></h3></td>--%>
        
     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Member/ViewReport.aspx">&lt;Back</asp:HyperLink>
</asp:Content>

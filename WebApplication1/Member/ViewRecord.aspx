<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewRecord.aspx.cs" Inherits="WebApplication1.ViewRecord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main" runat="server">
        <br />
    <br />
    <div>
           
            <h4>Personal Expenses Record</h4>
             <p>
                 <asp:Button ID="Button1" runat="server" Text="Add Expenses" BorderColor="#9999FF" OnClick="Button1_Click" Width="171px" /></p>  
       
       <tr>
     <td><asp:TextBox ID="searchBox" runat="server" Height="30px" Width="561px" PlaceHolder="Search" ></asp:TextBox></td>
     <td><asp:ImageButton ID="search" runat="server" ImageUrl="~/img/search1.png" Width="37px" Height="30px" style="margin-top: 0px" OnClick="search_Click" />
     </td>
    </tr>  
         

        <asp:SqlDataSource ID="dsRecord" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT * FROM [record]"></asp:SqlDataSource>
       
        
             <br />
             <br />
       
        
             <br />
             <asp:GridView ID="gw1" runat="server" AutoGenerateColumns="False" Width="804px" AllowSorting="True" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                 <Columns>
                     <asp:TemplateField HeaderText="ItemId" InsertVisible="False" SortExpression="ItemId">
                         <EditItemTemplate>
                             <asp:Label ID="Label7" runat="server" Text='<%# Eval("ItemId") %>'></asp:Label>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label1" runat="server" Text='<%# Eval("ItemId") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="ItemName" SortExpression="ItemName">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("ItemName") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label2" runat="server" Text='<%# Eval("ItemName") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Amount" SortExpression="Amount">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Amount") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label3" runat="server" Text='<%# Eval("Amount") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="ExpensesDate" SortExpression="ExpensesDate">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("ExpensesDate") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label4" runat="server" Text='<%# Eval("ExpensesDate") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Category" SortExpression="Category">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("Category") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label6" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Operation" SortExpression="Operation">
                         <EditItemTemplate>
                             <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Update">Update</asp:LinkButton>
                             &nbsp;&nbsp;
                             <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                             &nbsp;&nbsp;
                             <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                         </ItemTemplate>
                     </asp:TemplateField>
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

             </div>
    <center>
             <asp:ImageButton ID="ImageButton2" runat="server"  ImageUrl="~/img/add-file.png" Height="51px" OnClick="ImageButton2_Click" Width="57px"/>
         </center>
</asp:Content>

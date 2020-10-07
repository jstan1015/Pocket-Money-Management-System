<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AllRecord.aspx.cs" Inherits="WebApplication1.AllRecord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
        <style type="text/css">
        .modalBackground
    {
        background-color: Black;
        filter: alpha(opacity=40);
        opacity: 0.4;
    }


        .auto-style1 {
            width: 599px;
            height: 520px;
            background-color: #FFFFFF;
        }
        .auto-style2 {
            width: 186px;
            color:black;
        }
        .auto-style3 {
            margin-right: 0px;
        }
        .auto-style4 {
            width: 186px;
            height: 54px;
            color:black;
        }
        .auto-style5 {
            height: 54px;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
     <br />
    <br />
    <div>
   <h4>Personal Expenses Record</h4>
            <p>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            <asp:SqlDataSource ID="dsRecord" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT * FROM [record] WHERE Username = @Username" SortParameterName="@Username"></asp:SqlDataSource>

            </p>
         <br />
            <%--  <p>
                 <asp:Button ID="Button3" runat="server" Text="Add Expenses" BorderColor="#9999FF" OnClick="Button1_Click" Width="171px" /></p>  --%>
       
       <tr>
     <td><asp:TextBox ID="searchBox" runat="server" Height="30px" Width="561px" PlaceHolder="Search" ></asp:TextBox></td>
     <td><asp:ImageButton ID="search" runat="server" ImageUrl="~/img/search1.png" Width="37px" Height="30px" style="margin-top: 0px" OnClick="search_Click" />
     </td>
    </tr>  
         
         <br />
         <br />
         
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="LinqDataSource1" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="215px" Width="798px" EmptyDataText="No Record">
                <Columns>
                    <asp:BoundField DataField="ItemId" HeaderText="ItemId" SortExpression="ItemId" ReadOnly="True" />
                    <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" ReadOnly="True" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" ReadOnly="True" />
                    <asp:BoundField DataField="ExpensesDate" HeaderText="ExpensesDate" SortExpression="ExpensesDate" ReadOnly="True" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" ReadOnly="True" />
                    <asp:CommandField SelectText="Edit" ShowSelectButton="True" />
                    
                     
                   
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
        <h5>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Member/DeleteRecord.aspx">Click here to delete record</asp:HyperLink>
        </h5>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="" ></asp:Label>
            <br />
            <asp:Panel ID="Panel1" runat="server"  Height="578px" Width="650px" >
                <table class="auto-style1" border="0">
                    <tr>
                        <td class="auto-style2">Item Id:</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="198px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Item Name:</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="198px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Amount:</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="198px"></asp:TextBox>
                        </td>
                    </tr>
                    <%--<tr>
                        <td class="auto-style2">Expenses Date:</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Height="24px" Width="198px"></asp:TextBox>
                        </td>
                    </tr>--%>
                    <tr>
                    <td class="auto-style4">Expenses Date:</td>     
                    <td>  <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><asp:ImageButton ID="ImageButton1" runat="server" Height="27px" ImageUrl="~/img/calender1.png" OnClick="ImageButton1_Click" Width="31px" Visible="False" />
                        <br />
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDate" Display="Dynamic" ErrorMessage="Please Select Date" ForeColor="Red" InitialValue="0">*</asp:RequiredFieldValidator>--%>
                     </td>
                        <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDate" Display="Dynamic" ErrorMessage="Please Select Date" ForeColor="Red" InitialValue="0">*</asp:RequiredFieldValidator>--%>
                     <asp:Calendar ID="Cal1" runat="server" Style="margin-top:0px" OnSelectionChanged="Cal1_SelectionChanged" Visible="False" Width="219px"></asp:Calendar>
                    
                </tr>
                    <tr>
                        <td class="auto-style4">Category</td>
                        <td class="auto-style5">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="180px">
                             <asp:ListItem Value="0">---Category---</asp:ListItem>
                             <asp:ListItem>Food</asp:ListItem>
                             <asp:ListItem>Shopping</asp:ListItem>
                             <asp:ListItem>Car Fees</asp:ListItem>
                             <asp:ListItem>Gifts</asp:ListItem>
                             <asp:ListItem>Travel</asp:ListItem>
                             <asp:ListItem>Sports</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="Button1" runat="server" Height="36px" Text="Update" Width="88px" OnClick = "Save"/>
                            &nbsp;
                            <asp:Button ID="Button2" runat="server" CssClass="auto-style3" Height="36px" Text="Cancel" Width="88px" />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <br />
            <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="LinkButton1" PopupControlID="Panel1" CancelControlID="Button2" BackgroundCssClass="modalBackground" ></ajaxToolkit:ModalPopupExtender>
           
           <%--<asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WebApplication1.DatabaseDataContext" EntityTypeName="" EnableDelete="True" EnableUpdate="true" TableName="Members">
    </asp:LinqDataSource>--%>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WebApplication1.DatabaseDataContext" EntityTypeName="" EnableDelete="True" TableName="records" Select="new (ItemId, ItemName, Amount, ExpensesDate, Category)" ></asp:LinqDataSource>
      
         <center>
             <asp:ImageButton ID="ImageButton2" runat="server"  ImageUrl="~/img/add-file.png" Height="51px" OnClick="ImageButton2_Click" Width="57px"/>
         </center>
     </div>

</asp:Content>

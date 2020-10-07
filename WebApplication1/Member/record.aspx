<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="record.aspx.cs" Inherits="WebApplication1.record" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main" runat="server">
    <br />
    <br />
     <h4>Add Expenses</h4>
      <br />
     <br />
     <br />
            <table>
                <tr>
                    <td>Item Name:</td>
                    <td> <asp:TextBox ID="txtItemName" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtItemName" Display="Dynamic" ErrorMessage="Please Enter Item Name" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                 </tr>
                
                
                 <tr>
                    <td class="auto-style1">Category:</td>
                    <td class="auto-style1"> <asp:DropDownList ID="ddlCategory" runat="server" Height="36px" Width="126px">
                       <asp:ListItem Value="0">--Category--</asp:ListItem>
                       <asp:ListItem>Food</asp:ListItem>
                       <asp:ListItem>Shopping</asp:ListItem>
                       <asp:ListItem>Car Fees</asp:ListItem>
                        <asp:ListItem>Gifts</asp:ListItem>
                        <asp:ListItem>Travel</asp:ListItem>
                        <asp:ListItem>Sports</asp:ListItem>
                        </asp:DropDownList>
                          &nbsp Add Category:<asp:TextBox ID="TxtCategory" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        <asp:Button ID="Button2" runat="server" Text="Add Value Into Dropdown list" OnClick="Button2_Click" Width="242px" />
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <%--Enter Category Name: <asp:TextBox ID="TxtCategory" runat="server"></asp:TextBox>
                         <asp:Button ID="Button2" runat="server" Text="Add Value Into Dropdown list" OnClick="Button1_Click"></asp:Button>--%>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlCategory" Display="Dynamic" ErrorMessage="Please Select Gategory" ForeColor="Red" InitialValue="0">*</asp:RequiredFieldValidator>
                        <br />

                    </td>
                </tr>
               
                   <tr>
                    <td>Amount: </td>
                    <td>  <asp:TextBox ID="txtAmount" runat="server"  DataFormatString="{0:c}" AutoCompleteType="Disabled"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAmount" Display="Dynamic" ErrorMessage="Please Enter Amount" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Price" ControlToValidate="txtAmount" ForeColor="Red" ValidationExpression="((\d+)+(\.\d+))$">*</asp:RegularExpressionValidator>
                        <br />

                       </td>
                </tr>
                <tr>
                    <td>Expenses Date: </td>       
                    <td>  <asp:TextBox ID="txtDate" runat="server" AutoCompleteType="Disabled"></asp:TextBox><asp:ImageButton ID="ImageButton1" runat="server" Height="27px" ImageUrl="~/img/calender1.png" OnClick="ImageButton1_Click" Width="31px" /></td>
                    <asp:Calendar ID="Cal1" runat="server" Style="margin-top:0px" OnSelectionChanged="Cal1_SelectionChanged" Visible="False"></asp:Calendar>
                  
                </tr>


                
            </table>
    &nbsp
    &nbsp

            <p><asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click1" Width="131px" CssClass="auto-style1" Height="42px" style="background-color: #996633" /></p>
     <p>
         &nbsp;</p>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
 
    <style type="text/css">
       
    </style>
 
</asp:Content>


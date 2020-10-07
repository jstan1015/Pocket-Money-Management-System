<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 152px;
        }

        table{
            /*whitesmoke*/
            background-color: white;
            width:500px;
            height:250px;
            border:solid;
        }
        .auto-style2 {
            width: 155px;
        }
        .auto-style3 {
            width: 155px;
            height: 81px;
        }
        .auto-style4 {
            width: 152px;
            height: 81px;
        }
        .auto-style5 {
            width: 155px;
            height: 40px;
        }
        .auto-style6 {
            width: 152px;
            height: 40px;
        }
        .auto-style7 {
            width: 497px;
            height: 465px;
        }
    </style>
   </head>

<body>
    <form id="form1" runat="server">
        
    <center>

        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Login.aspx" Text="Back" Width="104px" />

        <br />
        <h1>Account Registration</h1>
        <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" />
        <table class="auto-style7">
        <tr>
            <td class="auto-style2"> Username:</td>
            <td class="auto-style1"><asp:TextBox ID="txtUsername" runat="server" AutoCompleteType="Disabled" Height="24px" Width="168px"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="The username has been used" OnServerValidate="CustomValidator1_ServerValidate" ForeColor="Red" ControlToValidate="txtUsername">*</asp:CustomValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="Please enter your username" ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>

            <tr>
            <td class="auto-style2"> Age (1-99):</td>
            <td class="auto-style1"><asp:TextBox ID="txtAge" runat="server" AutoCompleteType="Disabled" Height="24px" Width="168px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="Please enter your age" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" Text="*" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtAge" ErrorMessage="Age must be integer" ForeColor="Red">*</asp:CompareValidator>
            <asp:RangeValidator runat="server" Type="Integer" MinimumValue="1" MaximumValue="99" ControlToValidate="txtAge" ErrorMessage="Age must be between 1 and 99" ForeColor="Red" >*</asp:RangeValidator>
            </td>
    
            </tr>

            <tr>
            <td class="auto-style5"> Gender:</td>
            <td class="auto-style6">
                <asp:DropDownList ID="ddlGender" runat="server" Height="24px" Width="168px">
                    <asp:ListItem Value="0">----------Gender----------</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlGender" InitialValue="Choose One" Text="*" ErrorMessage="Please select an item." ForeColor="Red"
             ></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td class="auto-style2"> Email Address<br />
                (only gmail):</td>
            <td class="auto-style1"><asp:TextBox ID="txtEmail" runat="server" AutoCompleteType="Disabled" Height="24px" Width="168px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Please enter your email" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:CustomValidator ID="CustomValidator2" runat="server" Display="Dynamic" ErrorMessage="The email has been used" OnServerValidate="CustomValidator2_ServerValidate" ForeColor="Red" ControlToValidate="txtEmail">*</asp:CustomValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Only gmail allow to registered" ForeColor="Red" ValidationExpression="\w+([-+.]\w+)*@(gmail\.com)">*</asp:RegularExpressionValidator></td>
        </tr>

        <tr>
            <td class="auto-style2">Password:</td>
            <td class="auto-style1"><asp:TextBox ID="txtPassword" runat="server" AutoCompleteType="Disabled" Height="24px" Width="168px" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Please enter your password" ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td class="auto-style2">Confirm Password:</td>
            <td class="auto-style1"><asp:TextBox ID="txtConfirmPassword" runat="server" AutoCompleteType="Disabled" Height="24px" Width="168px" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtConfirmPassword" Display="Dynamic" ErrorMessage="Please enter your confirm password" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" Display="Dynamic" ErrorMessage="*Your confirm password must be same with password" ForeColor="Red">*</asp:CompareValidator></td>
        </tr>

        <tr>
            <td class="auto-style3">Auth Code</td>
            <td class="auto-style4"><asp:TextBox ID="txtAuth" runat="server" AutoCompleteType="Disabled" ></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="txtAuth" ErrorMessage="Auth" ForeColor="Red">*</asp:CustomValidator>
                <asp:Button ID="btnEmail" runat="server" OnClick="btnEmail_Click" Text="Send" BackColor="#6699FF" Font-Bold="True" ForeColor="White" Width="70px" />
       </tr>
    </table>
     
            

       <p> 
           <asp:Label ID="lblEmail" runat="server"></asp:Label>
        </p>
        <p> <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" BackColor="#6699FF" Font-Bold="True" ForeColor="White" Height="35px" Width="100px" />
           <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" BackColor="#6699FF" Font-Bold="True" ForeColor="White" Height="35px" Width="100px"/></p>

    </center>
    </form>

    
      <footer class="footer">
         <p>
            © 2019 Pocket Money -- Login Form. All Rights Reserved | Design by
           <a href="http://www.PocketMoney.com" target="_blank">Pocket Money</a>
         </p>
      </footer>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="WebApplication1.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 275px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
               Please Enter your username:<asp:TextBox ID="txtname" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                <br />
                <br />
              <asp:Button ID="ButPwd" runat="server" Text="Get your password" OnClick="ButPwd_Click"></asp:Button>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
             
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">&lt;Back to Login Page</asp:HyperLink>
            </center>
        </div>
    </form>
</body>
</html>
<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 275px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Reset Password</h1>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        <table>
            <tr>
                <td class="auto-style4">Email:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtEmail" runat="server" AutoCompleteType="Disabled" CssClass="auto-style3"  Width="255px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Please enter your email" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Password:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtPassword" runat="server" AutoCompleteType="Disabled" TextMode="Password" Width="251px"></asp:TextBox>
                    <asp:CustomValidator ID="cvNotMatched" runat="server" Display="Dynamic" ErrorMessage="Invalid Email" ForeColor="Red">*</asp:CustomValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Please enter your password" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Confirm Password :</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtCode" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtPassword" runat="server" ErrorMessage="Confirm Password not same with password" ForeColor="Red">*</asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Please enter your confirm password" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Button" />
    </form>
</body>
</html>--%>

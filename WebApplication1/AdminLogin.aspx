<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WebApplication1.AdminLogin" %>

<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"><head runat="server"><title></title><script src="https://www.google.com/recaptcha/api.js" async defer></script><style type="text/css">
        .auto-style1 {
            height: 110px;
            width: 224px;
        }
        .auto-style2 {
            height: 75px;
            width: 224px;
        }
        .auto-style4 {
            height: 106px;
            width: 104px;
        }
        .auto-style5 {
            height: 110px;
            width: 110px;
        }
        .auto-style6 {
            width: 283px;
            height: 205px;
        }

        #header {
            background-color: white;
        }

        #body{
            background-color: white;
        }
        table{
            background-color:whitesmoke;
        }
        
        
    </style></head>
    
    <body><form id="form1" runat="server">

    <div id="header">
            <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Blue" NavigateUrl="~/Login.aspx"> < Go To Member Login</asp:HyperLink><br />
            
            <center>
                <h1>&nbsp;Admin Login</h1>
             <img alt="" border="2" class="auto-style5" dir="ltr" src="images/admin.jpg" /><asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Height="70px" Width="250px" />
            </center>
    </div>

    <div id="body">
         <br />
         <center>
             
             <table class="auto-style6" border="2">
                <tr>
                    <td class="auto-style4">Admin:</td>
                    <td class="auto-style2"><asp:TextBox ID="txtUsername" runat="server" AutoCompleteType="Disabled" Width="125px" Height="16px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="Please enter your username" ForeColor="Red">*</asp:RequiredFieldValidator></td>
               </tr>
                <tr>
                    <td class="auto-style5"> Password:</td>
                    <td class="auto-style1"><asp:TextBox ID="txtPassword" runat="server" AutoCompleteType="Disabled" Width="125px" TextMode="Password"></asp:TextBox>
                    <asp:CustomValidator ID="cvNotMatched" runat="server" Display="Dynamic" ErrorMessage="[Username] and [Password] Not Matched" ForeColor="Red">*</asp:CustomValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Please enter your password" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                </tr>
            </table>           
             <br />
             <div>
            <!-- Login.aspx -->

            
            <div class="g-recaptcha" data-sitekey="6Le2iJkUAAAAAB7fNiFLPuyiPQydSxRWIBjw0Dir"></div><br />
                 
            
             </div>

             <asp:CheckBox ID="chkRememberMe" runat="server" />
             <br />
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" Width="95px" BackColor="#6699FF" Font-Bold="True" ForeColor="White" />
            <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" Width="88px" BackColor="#6699FF" Font-Bold="True" ForeColor="White" /><br /><br />
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" NavigateUrl="~/ForgetPassword.aspx">Forgot Password? Click here</asp:HyperLink><br />
             No account yet? Please
            [ <a href="Register.aspx">Register</a> ].
              </center>
     </div>
        <div id="footer">
            <center>
                    <br />
                    <br />
                    Developed by Pocket Money Management System © 2019
                </center>

        </div>
    </form>
</body>
</html>

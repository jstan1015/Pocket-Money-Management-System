<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 42px;
        }
        .auto-style3 {
            height: 46px;
        }
        .auto-style5 {
            height: 56px;
        }
        .auto-style6 {
            height: 48px;
        }
        .auto-style7 {
            width: 420px;
            height: 280px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>New Messages</h1>

        </div>
        <table class="auto-style7">
            <tr>
                <td class="auto-style5">Total Registered Users</td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Subject</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="159px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Message</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" Height="106px" TextMode="MultiLine" Width="204px"></asp:TextBox>
                    <br />
                </td>
            </tr>
          

             <tr>
                    <td>Upload File:</td>
                    <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
                </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" Height="28px" Width="69px" />
                &nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" Height="28px" Width="69px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </form>
</body>
</html>

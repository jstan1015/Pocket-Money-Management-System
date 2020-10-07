<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 70%;
            height: 166px;
        }
        .auto-style3 {
            width: 310px;
            height: 20px;
            text-align: center;
        }
        .auto-style4 {
            height: 20px;
            text-align: center;
        }
        .auto-style5 {
            width: 310px;
            height: 3px;
            text-align: center;
        }
        .auto-style6 {
            height: 3px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">Monthly Report</td>
                    <td class="auto-style6">Daily Report</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="55px" ImageUrl="~/img/business.png" OnClick="ImageButton1_Click" Width="54px" />
                    </td>
                    <td class="auto-style4">
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="55px" ImageUrl="~/img/report.png" OnClick="ImageButton2_Click" Width="54px" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>

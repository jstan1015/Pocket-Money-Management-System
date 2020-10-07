<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewReport.aspx.cs" Inherits="WebApplication1.ViewReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h4>View Report</h4>
    <div>
        <br />
        <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">Monthly Report</td>
                    <td class="auto-style5">Daily Report</td>
                    <td class="auto-style5">Category Report</td>
                    <td class="auto-style5">Price Report</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="55px" ImageUrl="~/img/business.png" OnClick="ImageButton1_Click" Width="54px" />
                    </td>
                    <td class="auto-style4">
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="55px" ImageUrl="~/img/report.png" OnClick="ImageButton2_Click" Width="54px" />
                    </td>
                    <td class="auto-style3">
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="55px" ImageUrl="~/img/cate.png" OnClick="ImageButton3_Click" Width="54px" />
                    </td>
                    <td class="auto-style3">
                        <asp:ImageButton ID="ImageButton4" runat="server" Height="55px" ImageUrl="~/img/price.png" OnClick="ImageButton4_Click" Width="54px" />
                    </td>
                </tr>
            </table>

        </div>
</asp:Content>

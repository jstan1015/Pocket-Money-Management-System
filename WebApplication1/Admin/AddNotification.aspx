<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddNotification.aspx.cs" Inherits="WebApplication1.AddNotification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main" runat="server">
    <br />
    <br />
     <h3>Send notification</h3>

    <table border="2" class="auto-style1">
                <tr>
                    <td class="auto-style4">Type Text:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" Height="87px" TextMode="MultiLine" Width="305px"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style2">
                        <asp:Button ID="btnSend" runat="server" Text="Send" BackColor="#996633" ForeColor="White" OnClick="btnSend_Click" Width="105px" />
                        <br />
                        <asp:Label ID="lblSend" runat="server" ForeColor="Red"></asp:Label>
                    </td>

                </tr>
                    
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 562px;
            height: 217px;
        }
    </style>
</asp:Content>


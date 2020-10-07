<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Email.aspx.cs" Inherits="WebApplication1.Email" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
            width: 688px;
            height: 346px;
        }
         .auto-style8 {
             height: 56px;
             width: 172px;
         }
         .auto-style9 {
             height: 48px;
             width: 172px;
         }
         .auto-style10 {
             height: 46px;
             width: 172px;
         }
         .auto-style11 {
             width: 172px;
         }
         .auto-style12 {
             height: 67px;
             width: 172px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <br />
    <br />
      <div>
            <h4>New Messages</h4>

        </div>
        <table class="auto-style7">
            <tr>
                <td class="auto-style8">Total Registered Users:</td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Subject:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="159px" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Message:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" Height="106px" TextMode="MultiLine" Width="204px"></asp:TextBox>
                    <br />
                </td>
            </tr>
          

          
            <tr>
                <td class="auto-style12"></td>
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
</asp:Content>

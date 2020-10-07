<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Notification.aspx.cs" Inherits="WebApplication1.Notification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main" runat="server">
    <style type="text/css">
       
        .auto-style2 {
            width: 65px;
        }
      
        
        .auto-style4 {
            width: 298px;
        }
      
        
    </style>
    <br />

     <h4>Notification</h4>

     <div>
            <br />
   
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
          <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
            <asp:Panel ID="Panel1" runat="server" Height="180px" Width="376px" Visible="False">
                  &nbsp;&nbsp;
                        <br />
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="42px" ImageUrl="~/img/bell.png" OnClick="ImageButton1_Click" Width="50px" />
                                    
                                </td>
                                <td class="auto-style4">
                                    <asp:Label ID="lblNotify" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                        </table>
               
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Member/AllNotification.aspx">View all notification</asp:HyperLink>
            </asp:Panel>
                     </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick">
        </asp:Timer>

</asp:Content>

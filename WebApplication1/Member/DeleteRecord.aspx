<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DeleteRecord.aspx.cs" Inherits="WebApplication1.DeleteRecord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 40px;
        }
        .auto-style3 {
            margin-bottom: 0px;
        }
        .auto-style4 {
            text-align: center;
            height: 96px;
            width: 296px;
        }
         .modalBackground
    {
        background-color: Black;
        filter: alpha(opacity=40);
        opacity: 0.4;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <br />
    <br />
    <h4>Delete Record</h4>
     <div class="auto-style1">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <br />
            
        </div>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="ItemId" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="551px" Width="873px">
                    <Columns>
                        <asp:BoundField DataField="ItemId" HeaderText="ItemId" ReadOnly="True" SortExpression="ItemId" InsertVisible="False" />
                        <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        <asp:BoundField DataField="ExpensesDate" HeaderText="ExpensesDate" SortExpression="ExpensesDate" />
                        <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                        <asp:TemplateField HeaderText="Operation">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" CommandName="Delete">Delete</asp:LinkButton>

                                <br />
                                <br />
                                <asp:Panel ID="Panel1" runat="server" CssClass="bg-white" Height="115px" Width="295px">
                                    <div class="auto-style4">
                                        Do You Want To Delete Record?<br />&nbsp;&nbsp;<br />&nbsp;<asp:Button ID="Button1" runat="server" CssClass="auto-style3" Text="yes" Height="27px" Width="56px" />
                                        &nbsp;<asp:Button ID="Button2" runat="server" CssClass="auto-style3" Height="27px" Text="No" Width="56px" />
                                    </div>
                                </asp:Panel>
                                <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" TargetControlID="LinkButton1" DisplayModalPopupID="Popup1"/>
                               <ajaxToolkit:ModalPopupExtender ID="Popup1" runat="server" TargetControlID="LinkButton1" PopupControlID="Panel1" OkControlID="Button1" CancelControlID="Button2" BackgroundCssClass="modalBackground">

</ajaxToolkit:ModalPopupExtender>

                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <br />
                <h5>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Member/AllRecord.aspx">Click here to edit record</asp:HyperLink></h5>
<br />
               
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" DeleteCommand="DELETE FROM [record] WHERE [ItemId] = @ItemId" InsertCommand="INSERT INTO [record] ([ItemName], [Amount], [ExpensesDate], [Category]) VALUES (@ItemName, @Amount, @ExpensesDate, @Category)" SelectCommand="SELECT [ItemId], [ItemName], [Amount], [ExpensesDate], [Category] FROM [record] WHERE [Username] =@Username" UpdateCommand="UPDATE [record] SET [ItemName] = @ItemName, [Amount] = @Amount, [ExpensesDate] = @ExpensesDate, [Category] = @Category WHERE [ItemId] = @ItemId">
                    <DeleteParameters>
                        <asp:Parameter Name="ItemId" Type="Int32" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:Parameter Name="Username" Type="String" DefaultValue="" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ItemName" Type="String" />
                        <asp:Parameter Name="Amount" Type="Decimal" />
                        <asp:Parameter DbType="Date" Name="ExpensesDate" />
                        <asp:Parameter Name="Category" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ItemName" Type="String" />
                        <asp:Parameter Name="Amount" Type="Decimal" />
                        <asp:Parameter DbType="Date" Name="ExpensesDate" />
                        <asp:Parameter Name="Category" Type="String" />
                        <asp:Parameter Name="ItemId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
  <%--  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Member/AllRecord.aspx">&lt;Back</asp:HyperLink>--%>
</asp:Content>
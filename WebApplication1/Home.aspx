<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        .auto-style1 {
            width: 46px;
            height: 53px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
    <%--<p>  Hello welcome to Pocket Money Management
      <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
        </p>--%>

    <div class="container-fluid p-0">

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="about">
      <div class="w-100">
        <%--<h1 class="mb-0"><span class="text-primary">Pocket
          Money</span>
        </h1>--%>
        <div class="subheading mb-5">Take control of your finances today with PocketMoney! Mr./Mrs. <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
         <%-- <a href="mailto:name@email.com">name@email.com</a>--%>
        </div>
        <p class="lead mb-5">PocketMoney, with over 2 million views every year, 1 million total downloads and about ¼ of a million users worldwide, is one of the most used budgeting and personal financial Apps. A powerful yet easy to use personal finance manager, PocketMoney lets you track your cash flow, understand your net worth, and improve the overall health of your finances and it works on iPhone, iPad, Mac OS, Google Android, Windows and Linux.</p>
        <%--<div class="social-icons">
          <a href="#">
            <i class="fab fa-linkedin-in"></i>
          </a>
          <a href="#">
            <i class="fab fa-github"></i>
          </a>
          <a href="#">
            <i class="fab fa-twitter"></i>
          </a>
          <a href="#">
            <i class="fab fa-facebook-f"></i>
          </a>
        </div>--%>
          <%--<center>--%>
             <%-- <a href="/record.aspx"><img src="img/add-file.png" border="0" class="auto-style1"/></a>--%>

          
      </div>
    </section>
        </div>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registered.aspx.cs" Inherits="WebApplication1.Registered" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Success</title>
    <%--<link href="css/style1.css" rel="stylesheet" />--%>
    <script>
        setTimeout(" location = 'Login.aspx' ", 3000);
    </script>

     <style type="text/css">
     body {
    /*background-image: url("../image/background1.jpg");*/
    background-image: url('img/piggy-bank-saving.jpg');
    background-size: cover;
    background-attachment: fixed;

}   

     h2 {
  position: absolute;
  left: 100px;
  top: 150px;
}
        
         .auto-style1 {
             width: 740px;
             left: 100px;
             top: 150px;
         }
        
    </style>

</head>
<body>
    
    <h1>Registration Sucessfully</h1>
    <form id="form1" runat="server">

        <%--<div class="container">
         <header style="text-align:center">
        <img src="img/piggy-bank-saving.jpg" />
             </header>
        </div--%>&nbsp;
     
           <h2 class="auto-style1"> You Have Successfully Registered A Member Account.
               <br />
               You Will Be Redirect To Login Page In 3 Seconds
           </h2>
<br />
              <br />
        <br />
        <br />
        <br />
        <br />
              <p>  &nbsp;</p>
        <p>  &nbsp;</p>
        <p>  &nbsp;</p>
        <p>  If the page didn't redirect, click this to
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink></p>
        <p>  &nbsp;</p>
            
      
        <br />
        <br />
            
      
    </form>
</body>
</html>


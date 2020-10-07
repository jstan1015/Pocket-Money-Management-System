using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace WebApplication1
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Logout the user
            if (User.Identity.IsAuthenticated)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Logout Successfully')", true);
                FormsAuthentication.SignOut();
                //Response.Redirect("Logout.aspx");
                
                Response.Redirect("Login.aspx");
                

            }
        }
    }
}
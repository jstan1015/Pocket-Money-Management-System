using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Net;
using Newtonsoft.Json.Linq;


namespace WebApplication1
{
    public partial class Login  : System.Web.UI.Page
    {
        DatabaseDataContext db = new DatabaseDataContext();


        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public bool IsReCaptchValid()
        {
            var result = false;
            var captchaResponse = Request.Form["g-recaptcha-response"];
            var secretKey = ConfigurationManager.AppSettings[""];
            var apiUrl = "https://www.google.com/recaptcha/api/siteverify?secret={0}&response={1}";
            var requestUri = string.Format(apiUrl, secretKey, captchaResponse);
            var request = (HttpWebRequest)WebRequest.Create(requestUri);

            using (WebResponse response = request.GetResponse())
            {
                using (StreamReader stream = new StreamReader(response.GetResponseStream()))
                {
                    JObject jResponse = JObject.Parse(stream.ReadToEnd());
                    var isSuccess = jResponse.Value<bool>("success");
                    result = (isSuccess) ? true : false;
                }
            }
            return result;
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string username = txtUsername.Text;
                string password = txtPassword.Text;
                bool rememberMe = chkRememberMe.Checked;

                //Login the user

                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\db.mdf;Integrated Security=True");


                //Login the user
                View u = db.Views.SingleOrDefault(
                        x => x.Username == username && x.Password == password && x.Role == "Member"
                        );

                if (u != null)
                {
                    Security.LoginUser(u.Username, u.Role, rememberMe);
                }
                else
                {
                    cvNotMatched.IsValid = false;
                }
            }
        }




        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUsername.Text = "";
            txtPassword.Text = "";

            Response.Redirect("Login.aspx");
        }

        
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;

namespace WebApplication1
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButPwd_Click(object sender, EventArgs e)
        {
            try
            {
                string username = txtname.Text;

                SqlDataReader reader = null;
                SqlConnection conn = new SqlConnection("Data Source =(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf; Integrated Security = True");
                conn.Open();
                SqlCommand cmd = new SqlCommand("select email,password from member where username='" + username + "' union select email,password from admin where username='" + username + "'", conn);
                reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    string email = reader["email"].ToString();
                    string password = reader["password"].ToString();

                    SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                    client.EnableSsl = true;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new NetworkCredential("bookrental2019@gmail.com", "20190101");

                    MailMessage msgobj = new MailMessage();
                    msgobj.To.Add(email);
                    msgobj.From = new MailAddress("bookrental2019@gmail.com");



                    msgobj.Subject = "Need Help? This is your password to access your account.";
                    msgobj.Body = "Dear Mr./Mrs " + username + ". This is your registered password: " + password;
                    client.Send(msgobj);

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Message has been send sucessfully!');", true);
                    Label1.Text = "Please Check Your Email. Thank You";

                    // Labmsg.Text = "An email had sent to your email address.";

                }


            }
            catch (Exception ex)
            {
                Response.Write("Could Not Send Email" + ex.Message);
            }

        }

    }


}

//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using System.Data.SqlClient;

//namespace WebApplication1
//{
//    public partial class ForgetPassword : System.Web.UI.Page
//    {
//        DatabaseDataContext db = new DatabaseDataContext();

//        protected void Page_Load(object sender, EventArgs e)
//        {

//        }

//        protected void btnSubmit_Click(object sender, EventArgs e)
//        {
//            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\db.mdf;Integrated Security=True");
//        }

//        protected void btnLogin_Click(object sender, EventArgs e)
//        {
//            if (Page.IsValid)
//            {
//                string email = txtEmail.Text;
//                string password = txtPassword.Text;


//                SqlDataReader reader = null;
//                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
//                conn.Open();
//                string get = "Select email from Member where Email = '" + email + "';";
//                SqlCommand select = new SqlCommand(get, conn);
//                reader = select.ExecuteReader();
//                if (reader.HasRows && reader != null)
//                {
//                    conn.Close();
//                    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
//                    con.Open();
//                    String sqlStatement = "Update member set password='" + password + "' where email = '" + email + "'";
//                    SqlCommand update = new SqlCommand(sqlStatement, con);
//                    update.ExecuteNonQuery();
//                    con.Close();
//                }

//                else
//                {
//                    cvNotMatched.IsValid = false;
//                }


//            }
//        }
//    }
//}
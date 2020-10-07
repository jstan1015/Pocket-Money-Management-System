using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Register : System.Web.UI.Page
    {
        DatabaseDataContext db = new DatabaseDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            GeneratePasscode();
        }

        public string GeneratePasscode()
        {
            string PasswordLength = "4";
            string NewPassword = "";

            string allowedChars = "";
            allowedChars = "1,2,3,4,5,6,7,8,9,0";
            allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
            allowedChars += "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,";


            char[] sep = {
            ','
            };
            string[] arr = allowedChars.Split(sep);


            string IDString = "";
            string temp = "";

            Random rand = new Random();

            for (int i = 0; i < Convert.ToInt32(PasswordLength); i++)
            {
                temp = arr[rand.Next(0, arr.Length)];
                IDString += temp;
                NewPassword = IDString;

            }
            return NewPassword;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string username = txtUsername.Text;
                string email = txtEmail.Text;
                string password = txtPassword.Text;
                string authcode = txtAuth.Text;
                string gender = ddlGender.Text;
                string age = txtAge.Text;

                //Check Authcode

                SqlDataReader reader = null;
                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from Auth where Auth=@Auth ", conn);
                cmd.Parameters.AddWithValue("@Auth", authcode);
                reader = cmd.ExecuteReader();
                if (reader != null && reader.HasRows)
                {
                    //delete existed auth code;

                    conn.Close();
                    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
                    con.Open();
                    String sqlStatement = "DELETE FROM Auth";
                    SqlCommand dlt = new SqlCommand(sqlStatement, con);
                    dlt.ExecuteNonQuery();
                    con.Close();
                    //Insert new member account
                    Member m = new Member
                    {
                        Username = username,
                        Password = password,
                        Email = email,
                        Gender = gender,
                        Age = age
                    };

                    db.Members.InsertOnSubmit(m);
                    db.SubmitChanges();
                    Response.Redirect("Registered.aspx");
                }
                else
                {
                    CustomValidator3.IsValid = false;
                }
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string username = args.Value;
            //Check for duplicated Name
            if (db.Members.Any(u => u.Username == username))
            {
                args.IsValid = false;
            }
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string email = args.Value;
            //Check for duplicated Name
            if (db.Members.Any(u => u.Email == email))
            {
                args.IsValid = false;
            }
        }

       


        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtUsername.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";
            ddlGender.SelectedValue = "--Select Gender--";
            txtAge.Text = "";

            Response.Redirect("Register.aspx");

        }

        protected void btnEmail_Click(object sender, EventArgs e)
        {
            try
            {
                string email = txtEmail.Text;


                lblEmail.Text = "Please check your Authentication Code From your Registered Mail";


                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential("bookrental2019@gmail.com", "20190101");

                MailMessage msgobj = new MailMessage();
                msgobj.To.Add(email);
                msgobj.From = new MailAddress("bookrental2019@gmail.com");

                string strNewPassword = GeneratePasscode().ToString();

                msgobj.Subject = "Registeration for Pocket Money Management";
                msgobj.Body = "Your Authentication Code is " + strNewPassword;
                client.Send(msgobj);

                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Message has been send sucessfully!');", true);

                Auth a = new Auth
                {
                     Auth1 = strNewPassword
                };

                db.Auths.InsertOnSubmit(a);
                db.SubmitChanges();

            }

            catch (Exception ex)
            {
                Response.Write("Invalid Email Address. Could Not send email" + ex.Message);
            }
        }


    }
}
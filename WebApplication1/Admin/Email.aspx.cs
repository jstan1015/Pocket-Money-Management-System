using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

namespace WebApplication1
{
    public partial class Email : System.Web.UI.Page
    {
        static int totalemailsent;

        protected void Page_Load(object sender, EventArgs e)
        {
            countRegistration();
            totalemailsent = 0;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String mycon = "Data Source =(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf; Integrated Security = True";
            String myquery = "Select * from Member";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int rowcounter = ds.Tables[0].Rows.Count;
            int i = 0;
            while (i < rowcounter)
            {

                sendemail(ds.Tables[0].Rows[i]["Email"].ToString(), ds.Tables[0].Rows[0]["Username"].ToString(),TextBox1.Text, TextBox2.Text);
                i++;
            }
            Label2.Text = "Total Emails " + totalemailsent + " Sent to Registered Customer Successfully";


        }

        private void countRegistration()
        {

            String mycon = "Data Source =(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf; Integrated Security = True";
            String myquery = "Select count(*) from Member";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            Label1.Text = ds.Tables[0].Rows[0][0].ToString();
            con.Close();
        }


        private void sendemail(String emailid, String Username, String subject, String message)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("bookrental2019@gmail.com", "20190101");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = subject;
            msg.Body = "Dear " + Username + " " + message + "\n\n\nThanks & Regards\nPocket Money Sdn Bhd";
            string toaddress = emailid;
            msg.To.Add(toaddress);
            string fromaddress = "Pocket Money Management System <bookrental2019@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
                totalemailsent = totalemailsent + 1;

            }
            catch
            {
                throw;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
         
        }
    }
}
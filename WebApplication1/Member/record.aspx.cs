using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.AspNet.Identity;

namespace WebApplication1
{

    public partial class record : System.Web.UI.Page
    {
        string myConnection = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Cal1.Visible = false;
            }

           

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //if (Cal1.Visible == false)
            //{
            //    Cal1.Visible = true;
            //}
            //else
            //{
            //    Cal1.Visible = false;
            //}
            Cal1.Visible = true;
        }

        protected void Cal1_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = Cal1.SelectedDate.ToShortDateString();
            Cal1.Visible = false;
        }




        protected void Button1_Click1(object sender, EventArgs e)
        {
            {
                SqlConnection con;
                con = new SqlConnection(myConnection);
                con.Open();
                String query = "insert into [dbo].[record](ItemName,Amount,ExpensesDate,Category,Username) Values (@ItemName,@Amount,@ExpensesDate,@Category,@Username) ";
                SqlCommand dml = new SqlCommand(query, con);

                //get Member Id

             
                
                
               
                dml.Parameters.AddWithValue("@Username", User.Identity.Name);

                dml.Parameters.AddWithValue("@ItemName", txtItemName.Text);
                dml.Parameters.AddWithValue("@Amount", txtAmount.Text);
                dml.Parameters.AddWithValue("@ExpensesDate", Convert.ToDateTime(txtDate.Text));
                dml.Parameters.AddWithValue("@Category", ddlCategory.Text);

                dml.ExecuteNonQuery();
                con.Close();
                Response.Redirect("AllRecord.aspx");

                if (Page.IsValid)
                {
                    string ItemName = txtItemName.Text;

                }


            }
        }

        protected void txtItemName_TextChanged(object sender, EventArgs e)
        {

        }

    

        protected void Button2_Click(object sender, EventArgs e)
        {
            string category = TxtCategory.Text;
            if (!string.IsNullOrEmpty(category))
            {
                ddlCategory.Items.Add(new ListItem(category));
            }
            Label1.Text = "Added Successfully";
        }
    }
}
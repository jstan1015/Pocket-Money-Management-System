using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class ViewRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataReader reader = null;
            string value = searchBox.Text;
            SqlConnection conn = new SqlConnection("Data Source =(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf; Integrated Security = True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from record where Username = '" + User.Identity.Name + "'", conn);
            reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                gw1.DataSourceID = null;
                gw1.DataSource = reader;
                gw1.DataBind();
            }
            conn.Close();
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("record.aspx");
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gw1.EditIndex = e.NewEditIndex;
            gw1.DataSource = dsRecord;
            gw1.DataBind();

            gw1.EditRowStyle.BackColor = System.Drawing.Color.White;
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gw1.EditIndex = -1;
            gw1.DataSource = dsRecord;
            gw1.DataBind();

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            Label ItemId = gw1.Rows[e.RowIndex].FindControl("Label7") as Label;
            TextBox ItemName = gw1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            TextBox Amount = gw1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            TextBox ExpensesDate = gw1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
            TextBox Category = gw1.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
            String mycon = "Data Source =(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf; Integrated Security = True";
            //String mycon = "Data Source=HP-PC\\SQLEXPRESS; Initial Catalog=CollegeData; Integrated Security=true";
            String updatedata = "Update record set ItemName='" + ItemName.Text + "', Amount='" + Amount.Text + "', ExpensesDate='" + ExpensesDate.Text + "', Category='" + Category.Text + "' where ItemId=" + ItemId.Text;
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            //Label8.Text = "Row Data Has Been Updated Successfully";
            gw1.EditIndex = -1;
            dsRecord.DataBind();
            gw1.DataSource = dsRecord;
            gw1.DataBind();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label ItemId = gw1.Rows[e.RowIndex].FindControl("Label1") as Label;
            String mycon = "Data Source =(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf; Integrated Security = True";
            String updatedata = "delete from record where ItemId=" + ItemId.Text;
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            //Label8.Text = "Row Data Has Been Deleted Successfully";
            gw1.EditIndex = -1;
            dsRecord.DataBind();
            gw1.DataSource = dsRecord;
            gw1.DataBind();

        }

        protected void search_Click(object sender, ImageClickEventArgs e)
        {
            SqlDataReader reader = null;
            string value = searchBox.Text;
            SqlConnection conn = new SqlConnection("Data Source =(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf; Integrated Security = True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from record where ItemName LIKE '%" + value + "%' and Username = '" + User.Identity.Name + "'", conn);
            reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                gw1.DataSourceID = null;
                gw1.DataSource = reader;
                gw1.DataBind();
            }


            conn.Close();
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("record.aspx");
        }
    }
}
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
    public partial class AllRecord : System.Web.UI.Page
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
                GridView1.DataSourceID = null;
                GridView1.DataSource = reader;
                GridView1.DataBind();
            }
            conn.Close();

        }



        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("record.aspx");
        //}


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[0].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[1].Text;
            TextBox3.Text = GridView1.SelectedRow.Cells[2].Text;
            TextBox4.Text = GridView1.SelectedRow.Cells[3].Text;
            DropDownList1.Text = GridView1.SelectedRow.Cells[4].Text;
            TextBox1.Enabled = false;
            ModalPopupExtender1.Show();
        }



        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            SqlCommand cmd = new SqlCommand("Delete * From record");
            GridView1.DataBind();
        }

        protected void Save(object sender, EventArgs e)
        {

            String mycon = "Data Source =(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf; Integrated Security = True";
            // String updatedata = "Update studentdata set sname='" + TextBox2.Text + "', fathername='" + TextBox3.Text + "', mothername='" + TextBox4.Text + "' where rollno=" + TextBox1.Text;
            // String updatedata = "Update record1 set ItemName='" + TextBox2.Text + "', Amount='" + TextBox3.Text + "', ExpensesDate='" + String.Format("", TextBox4) + "', Category='" + DropDownList1.Text + "' where ItemId=" + TextBox1.Text;
            String updatedata = "Update record set ItemName='" + TextBox2.Text + "', Amount='" + TextBox3.Text + "', ExpensesDate='" + String.Format("", TextBox4) + "', Category='" + DropDownList1.Text + "' where ItemId=" + TextBox1.Text;
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Item Name " + TextBox1.Text + " Data Has Been Updated Successfully";
            LinqDataSource1.DataBind();
            GridView1.DataSource = null;
            GridView1.DataSourceID = "LinqDataSource1";
            GridView1.SelectedIndex = -1;
            Response.Redirect("AllRecord.aspx");

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Cal1.Visible = true;
        }

        protected void Cal1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox4.Text = Cal1.SelectedDate.ToShortDateString();
            Cal1.Visible = false;
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
                GridView1.DataSourceID = null;
                GridView1.DataSource = reader;
                GridView1.DataBind();
            }


            conn.Close();
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("record.aspx");
        }
    }
}
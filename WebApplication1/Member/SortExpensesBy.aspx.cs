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
    public partial class SortExpensesBy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = User.Identity.GetUserName();
            lblName2.Text = User.Identity.GetUserName();
            lblDate.Text = DateTime.Now.ToString("d");

            SqlDataReader reader = null;

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
        protected void Button1_Click(object sender, EventArgs e)
        {
            lblDetails.Text = "Sort By " + DropDownList1.SelectedItem.Text;

            LitCount.Text = GridView1.Rows.Count.ToString() + " record(s) returned";

            Decimal sum = 0;
            for (int i = 0; i < GridView1.Rows.Count; ++i)
            {
                sum += Convert.ToDecimal(GridView1.Rows[i].Cells[2].Text);
            }
            string s = Convert.ToString(sum);
            lblTotal.Text = s;

            // SqlConnection con = new SqlConnection("Data Source =(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf; Integrated Security = True");
            // con.Open();
            // String myquery = "select ItemId, convert(varchar, cast(convert(varchar(10), ItemName, 110) as varchar), 106) as ItemName, Amount, ExpensesDate, Category from record where year(ExpensesDate)= '" + TextBox1.Text + "' and Username = '" + User.Identity.Name + "'";


            // SqlCommand cmd = new SqlCommand(myquery, con);



            // SqlDataAdapter da = new SqlDataAdapter();
            // da.SelectCommand = cmd;
            // DataSet ds = new DataSet();
            // da.Fill(ds);

            // GridView1.DataSource = ds;
            //// GridView1.DataBind();
            // con.Close();

            GridView1.DataSourceID = null;
            if (DropDownList1.SelectedItem.Text == "Low to High Price")
            {

                SqlDataReader reader = null;

                SqlConnection conn = new SqlConnection("Data Source =(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf; Integrated Security = True");
                conn.Open();
                SqlCommand cmd = new SqlCommand("Select * from record where Username = '" + User.Identity.Name + "' Order by Amount ASC" , conn);
                reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    GridView1.DataSourceID = null;
                    GridView1.DataSource = reader;
                    GridView1.DataBind();
                }
                conn.Close();

            }
            else
            {
                SqlDataReader reader = null;

                SqlConnection conn = new SqlConnection("Data Source =(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf; Integrated Security = True");
                conn.Open();
                SqlCommand cmd = new SqlCommand("Select * from record where Username = '" + User.Identity.Name + "' Order by Amount DESC", conn);
                reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    GridView1.DataSourceID = null;
                    GridView1.DataSource = reader;
                    GridView1.DataBind();
                }
                conn.Close();

            }
        }

        protected void LinqDataSource1_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            e.WhereParameters["Username"] = User.Identity.Name;
        }
    }
}
   
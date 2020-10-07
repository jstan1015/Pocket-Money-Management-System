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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

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

                GridView1.DataSource = LinqDataSource1;
                GridView1.DataBind();

            }
            else
            {

                GridView1.DataSource = LinqDataSource2;
                GridView1.DataBind();

            }
        }

       
    }
}
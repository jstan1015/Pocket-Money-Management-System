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
    public partial class ViewCategoryRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName2.Text = User.Identity.GetUserName();
            lblDate.Text = DateTime.Now.ToString("d");
        }

        protected void search_Click(object sender, ImageClickEventArgs e)
        {
            SqlDataReader reader = null;
            string value = searchBox.Text;
            SqlConnection conn = new SqlConnection("Data Source =(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf; Integrated Security = True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from record where Category LIKE '%" + value + "%' and Username = '" + User.Identity.Name + "'", conn);
            

            reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                gw1.DataSourceID = null;
                gw1.DataSource = reader;
                gw1.DataBind();
            }

            conn.Close();

            Decimal sum = 0;
            for (int i = 0; i < gw1.Rows.Count; ++i)
            {
                sum += Convert.ToDecimal(gw1.Rows[i].Cells[2].Text);
            }
            string s = Convert.ToString(sum);
            lblTotal.Text = s;
            lblDetails.Text = "by " + User.Identity.GetUserName() + " Based on Category '" + searchBox.Text + "' in 2019";
            LitCount.Text = gw1.Rows.Count.ToString() + " record(s) returned";
        }


    }
}
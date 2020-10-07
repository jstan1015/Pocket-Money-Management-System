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
    public partial class MonthlyRecord : System.Web.UI.Page
    {
        //string mycon = "Data Source =(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf; Integrated Security = True";

        protected void Page_Load(object sender, EventArgs e)
        {
            lblDetails.Text = "by "+User.Identity.GetUserName()+ " in " + DropDownList1.SelectedItem.Text + " of " + TextBox1.Text;
            lblName2.Text = User.Identity.GetUserName();
            lblDate.Text = DateTime.Now.ToString("d");

            //Decimal sum = 0;
            //for (int i = 0; i < GridView1.Rows.Count; ++i)
            //{
            //    sum += Convert.ToDecimal(GridView1.Rows[i].Cells[2].Text);
            //}
            //string s = Convert.ToString(sum);
            //lblTotal.Text = s;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source =(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf; Integrated Security = True");
            con.Open();
            String myquery = "select ItemId, convert(varchar, cast(convert(varchar(10), ItemName, 110) as varchar), 106) as ItemName, Amount, ExpensesDate, Category from record where month(ExpensesDate)=" + DropDownList1.SelectedItem.Value + " and year(ExpensesDate)= '" + TextBox1.Text +"' and Username = '"+User.Identity.Name+"'";

           
            SqlCommand cmd = new SqlCommand(myquery,con);

            

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();

            LitCount.Text = GridView1.Rows.Count.ToString() + " record(s) returned";

            Decimal sum = 0;
            for (int i = 0; i < GridView1.Rows.Count; ++i)
            {
                sum += Convert.ToDecimal(GridView1.Rows[i].Cells[2].Text);
            }
            string s = Convert.ToString(sum);
            lblTotal.Text = s;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using Microsoft.AspNet.Identity;

namespace WebApplication1
{
    public partial class DailyReport : System.Web.UI.Page
    {

        static Boolean validdate;

        protected void Page_Load(object sender, EventArgs e)
        {
            lblName2.Text = User.Identity.GetUserName();
            lblDate.Text = DateTime.Now.ToString("d");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime d;
            args.IsValid = DateTime.TryParseExact(args.Value, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
            validdate = DateTime.TryParseExact(args.Value, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);

        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime d;
            args.IsValid = DateTime.TryParseExact(args.Value, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
            validdate = DateTime.TryParseExact(args.Value, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (validdate == true)
            {
                lblDetails.Text = "by " + User.Identity.GetUserName() + " from " + TextBox1.Text + " to " + TextBox2.Text;


                String mycon = "Data Source =(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf; Integrated Security = True";
                String myquery = "select ItemId,convert(varchar, cast(convert(varchar(10), ItemName, 110) as varchar) , 106) as ItemName, Amount, ExpensesDate, Category from record where ExpensesDate between CONVERT(datetime, '" + TextBox1.Text + "', 105) AND CONVERT(datetime, '" + TextBox2.Text + "', 105) and Username = '" + User.Identity.Name + "'"; ;
                SqlConnection con = new SqlConnection(mycon);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();

                Decimal sum = 0;
                for (int i = 0; i < GridView1.Rows.Count; ++i)
                {
                    sum += Convert.ToDecimal(GridView1.Rows[i].Cells[2].Text);
                }
                string s = Convert.ToString(sum);
                lblTotal.Text = s;
                LitCount.Text = GridView1.Rows.Count.ToString() + " record(s) returned";
            }
        }
    }
}

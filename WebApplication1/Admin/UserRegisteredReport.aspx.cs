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
    public partial class UserRegisteredReport : System.Web.UI.Page
    {
        DatabaseDataContext db = new DatabaseDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = User.Identity.GetUserName();
            lblDate.Text = DateTime.Now.ToString("d");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source =(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf; Integrated Security = True");
            con.Open();
            String myquery = "select Id, convert(varchar, cast(convert(varchar(10), Username, 110) as varchar), 106) as Username, Email, Gender, Age, registerDate from Member where month(registerDate)=" + DropDownList1.SelectedItem.Value + " and year(registerDate)= '" + TextBox1.Text + "'";


            SqlCommand cmd = new SqlCommand(myquery, con);



            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();

            string output = "";
            //    int count = 0;
            //    foreach (Member m in db.Members)
            //   {
            //      output += string.Format("{0}, {1}, {2}, {3}, {4} <br />",
            //        m.Id, m.Username, m.Email, m.Gender, m.Age);
            //      count++;
            // }
            //  LitCount.Text = string.Format("{0} record(s) returned", count);

            LitCount.Text = GridView1.Rows.Count.ToString()+" record(s) returned";

            lblTitle.Text = "in " + DropDownList1.SelectedItem.Text + " of " + TextBox1.Text;

            
           

            //Decimal sum = 0;
            //for (int i = 0; i < GridView1.Rows.Count; ++i)
            //{
            //    sum += Convert.ToDecimal(GridView1.Rows[i].Cells[2].Text);
            //}
            //string s = Convert.ToString(sum);
            //lblTotal.Text = s;
        }
    }
}
    
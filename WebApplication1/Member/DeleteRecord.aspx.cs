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
    public partial class DeleteRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlDataReader reader = null;

            //SqlConnection conn = new SqlConnection("Data Source =(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf; Integrated Security = True");
            //conn.Open();
            //SqlCommand cmd = new SqlCommand("Select * from record where Username = '" + User.Identity.Name + "'", conn);
            //reader = cmd.ExecuteReader();

            //if (reader.HasRows)
            //{
            //    GridView1.DataSourceID = null;
            //    GridView1.DataSource = reader;
            //    GridView1.DataBind();
            //}
            //conn.Close();
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            SqlDataSource1.SelectParameters["Username"].DefaultValue = User.Identity.Name;
        }


    }
}
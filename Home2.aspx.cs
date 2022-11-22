using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iQHub
{
    public partial class Home2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DataTable dt = new DataTable();
            //DataTable dt2 = new DataTable();
            //string sqlCon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ABC\source\repos\iQHub\App_Data\Xbcad.mdf;Integrated Security=True";
            //string sqlCmd = "SELECT TOP (3) [orgName],[orgEmail],[orgCategory],[orgLocation] FROM [dbo].[Organisation] ORDER BY [pageVisits] DESC";
            //string sqlCmd2 = "SELECT TOP (5) [orgName],[orgDonated] FROM [dbo].[Organisation] ORDER BY [orgDonated] DESC";
            //using (SqlConnection con = new SqlConnection(sqlCon))
            //{
            //    con.Open();
            //    SqlCommand cmd = new SqlCommand(sqlCmd, con);
            //    SqlCommand cmd2 = new SqlCommand(sqlCmd2, con);
            //
            //    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            //    adapter.Fill(dt);
            //    SqlDataAdapter adapter2 = new SqlDataAdapter(cmd2);
            //    adapter2.Fill(dt2);
            //    con.Close();
            //};
            Org1Name.Text = "Test Organisation";
            Org1Type.Text = "Organisation Type";
            Org1Descrip.Text = "This is the description. The organisation does this because it's what they do. These are our values";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iQHub
{
    public partial class donations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            e
        }

        protected void btnDonate_Click(object sender, EventArgs e)
        {
            string sqlCon = "Data Source=MICHAELLAPTOP\\SQLEXPRESS;Initial Catalog=XBCAD;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Encrypt=False;TrustServerCertificate=False";
            string sqlCmd = "INSERT INTO Donations ([orgID],[donationAmount]) VALUES (" + txtID.Text.ToString() + "," + txtAmount.Text.ToString() + ")";
            SqlConnection con = new SqlConnection(sqlCon);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sqlCmd, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Page.Response.Redirect(Page.Request.Url.ToString(), true);

            }
            catch (Exception error)
            {

            }
            finally
            {
                con.Close();
            }
        }
    }
}
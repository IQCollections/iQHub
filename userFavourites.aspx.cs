using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class userFavourites : System.Web.UI.Page
    {
        string cs = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            string userid = "";
            using(SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete * from saveORG where savedID ="+id+"AND userEmail =" +userid,con);
                cmd.ExecuteNonQuery();

                con.Close();
            }
        }
    }
}
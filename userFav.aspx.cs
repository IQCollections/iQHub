using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iQHub
{
    public partial class userFav : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["userEmail"] = userLogin.user_Login;
            if (Session["userEmail"] == null)
            {
                Response.Redirect("userLogin.aspx");
            }
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            string userid = Session["userEmail"].ToString();
            using (SqlConnection con = new SqlConnection(SiteMaster.connString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete * from saveORG where savedID =" + id + "AND userEmail =" + userid, con);
                cmd.ExecuteNonQuery();

                con.Close();
            }
        }

        protected void btnDonate_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(SiteMaster.connString);
                SqlCommand cmd = new SqlCommand("Insert into saveORG(orgID,userEmail)VALUES(@orgID,@userEmail)", con);
                cmd.Parameters.AddWithValue("@orgID", txtID.Text);
                cmd.Parameters.AddWithValue("@userEmail", Session["userEmail"]);
                ;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception err)
            {
            }
        }
    }

}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iQHub
{
    public partial class orgRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMsg.Visible = false;
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(SiteMaster.connString);// connection string to connect to database
                con.Open();// open the connection
                string checkuser = "select count(*) from Organisation where orgEmail = '" + txtEmail.Text + "' ";//sql query
                SqlCommand com = new SqlCommand(checkuser, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());// executes the query
                if (temp == 1)
                {
                    //checks for user existence
                    lblMsg.Visible = true;
                    lblMsg.Text = "User already Exists";

                }
                con.Close();// closes the connection
            }
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try //try for exception handling
            {
                SqlConnection con = new SqlConnection(SiteMaster.connString);// connection string to connect to db
                con.Open();// open the connection 
                string insert = "INSERT INTO dbo.Organisation (orgEmail, orgName, orgPassword, orgLocation, orgCategory, isApproved, orgDonated, pageVisits) VALUES (@orgEmail, @orgName, @orgPassword, @orgLocation, @orgCat, 'true', 10, 1)";// sql query to insert the data
                SqlCommand com = new SqlCommand(insert, con);
                com.Parameters.AddWithValue("@orgEmail", txtEmail.Text);
                com.Parameters.AddWithValue("@orgName", txtUsername.Text);
                com.Parameters.AddWithValue("@orgPassword", Hashing.hashPassword(txtPassword.Text));
                com.Parameters.AddWithValue("@orgLocation", txtLocation.Text);
                com.Parameters.AddWithValue("@orgCat", txtCategory.Text);

                com.ExecuteNonQuery();//executing the query
                lblMsg.Visible = true;
                lblMsg.Text = "Registration is successful";//display msg if succesful

                con.Close();// closes the connection

                txtEmail.Text = "";
                txtUsername.Text = "";
                txtLocation.Text = "";
                txtCategory.Text = "";

            }
            catch (Exception error)// catches the error
            {
                lblMsg.Visible = true;
                lblMsg.Text = "error" + error.ToString();// displays error msg

            }
        }

    }
}
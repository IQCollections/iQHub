using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iQHub
{
    public partial class userLogin : System.Web.UI.Page
    {
        public static string user_Login;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMsg.Visible = false;
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(SiteMaster.connString);// connection string to connect to database
                con.Open();// open the connection
                string checkuser = "select count(*) from Users where userEmail = '" + txtEmail.Text + "' ";//sql query
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
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {

                user_Login = txtEmail.Text;// assigning value to the variable 
                SqlConnection con = new SqlConnection(SiteMaster.connString);// connection string to connect to the db
                con.Open();// opens the connection to db
                string checkuser = "select count(*) from Users where userEmail = '" + user_Login + "' ";// sql query 
                SqlCommand com = new SqlCommand(checkuser, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());// executes the query
                con.Close();//closes the connection
                if (temp == 1)
                {
                    con.Open();// opens the connection 
                    string chkPass = "select userPassword from Users where userEmail = '" + user_Login + "' ";// sql query 
                    SqlCommand passCom = new SqlCommand(chkPass, con);
                    string password = passCom.ExecuteScalar().ToString().Replace(" ", "");// executes the query
                    if (password == Hashing.hashPassword(txtPassword.Text))
                    {
                        lblMsg.Visible = true;
                        lblMsg.Text = "Details entered is correct";// checks if password is correct
                        Page.Response.Redirect("Home2.aspx");// redirects user to main page
                    }
                    else
                    {
                        lblMsg.Visible = true;
                        lblMsg.Text = "Details entered is incorrect";// displays error msg
                    }
                }
                else
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "Details entered is incorrect";// displays error msg
                }
                txtEmail.Text = "";
                txtPassword.Text = "";
                txtUsername.Text = "";
            }
            catch (Exception ex)
            {
                lblMsg.Visible=true;
                lblMsg.Text = "Details entered is incorrect" + ex.Message;
            }

        }

    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iQHub
{
    public partial class orgLogin : System.Web.UI.Page
    {
        public static string org_Login;
        public static string orgSession;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {


                org_Login = txtEmail.Text;// assigning value to the variable 
                SqlConnection con = new SqlConnection(SiteMaster.connString);// connection string to connect to the db
                con.Open();// opens the connection to db
                string checkOrg = "SELECT count(*) from Organisation where orgEmail = '" + org_Login + "'";// sql query 
                SqlCommand com = new SqlCommand(checkOrg, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());// executes the query
                con.Close();//closes the connection
                if (temp == 1)
                {
                    con.Open();// opens the connection 
                    string chkPass = "select orgPassword from Organisation where orgEmail = '" + org_Login + "'";// sql query 
                    SqlCommand passCom = new SqlCommand(chkPass, con);
                    string password = passCom.ExecuteScalar().ToString().Replace(" ", "");// executes the query
                    if (password == Hashing.hashPassword(txtPassword.Text))
                    {
                        lblMsg.Visible = true;
                        lblMsg.Text = "Details entered is correct";// checks if password is correct
                        Response.Redirect("Home2.aspx");// redirects user to main page
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
            }
            catch (Exception ex)
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Details entered is incorrect" + ex.ToString();
            }

        }
    }
}
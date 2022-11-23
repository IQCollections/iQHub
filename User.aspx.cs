using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iQHub
{
    public partial class Register : System.Web.UI.Page
    {
        public static string userLogin;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMsgReg.Visible = false;
            lblMsgLog.Visible = false;
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(SiteMaster.connString);// connection string to connect to database
                con.Open();// open the connection
                string checkuser = "select count(*) from Users where userEmail = '" + txtEmailReg.Text + "' ";//sql query
                SqlCommand com = new SqlCommand(checkuser, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());// executes the query
                if (temp == 1)
                {
                    //checks for user existence
                    lblMsgReg.Visible = true;
                    lblMsgReg.Text = "User already Exists";

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
                string insert = "insert into Users (userEmail, userPassword, userName) values (@uEmail, @pass, @user)";// sql query to insert the data
                SqlCommand com = new SqlCommand(insert, con);
                com.Parameters.AddWithValue("@user", txtUsernameReg.Text);// adding the value to the db
                com.Parameters.AddWithValue("@pass", Hashing.hashPassword(txtPassReg.Text));// adding the value to the db
                com.Parameters.AddWithValue("uEmail", txtEmailReg.Text);// adding the value to the db
                
                com.ExecuteNonQuery();//executing the query
                lblMsgReg.Visible = true;
                lblMsgReg.Text = "Registration is successful";//display msg if succesful

                con.Close();// closes the connection

            }
            catch (Exception error)// catches the error
            {
                lblMsgReg.Visible = true;
                lblMsgReg.Text = "error" + error.ToString();// displays error msg
                
            }
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            userLogin = txtEmail.Text;// assigning value to the variable 
            SqlConnection con = new SqlConnection(SiteMaster.connString);// connection string to connect to the db
            con.Open();// opens the connection to db
            string checkuser = "select count(*) from Users where userEmail = '" + userLogin + "' ";// sql query 
            SqlCommand com = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());// executes the query
            con.Close();//closes the connection
            if (temp == 1)
            {
                con.Open();// opens the connection 
                string chkPass = "select userPassword from Users where userEmail = '" + userLogin + "' ";// sql query 
                SqlCommand passCom = new SqlCommand(chkPass, con);
                string password = passCom.ExecuteScalar().ToString().Replace(" ", "");// executes the query
                if (password == Hashing.hashPassword(txtPassword.Text))
                {
                    //lblMsg.Visible = true;
                    //lblMsg.Text = "Details entered is correct";// checks if password is correct
                    Page.Response.Redirect("Home2.aspx");// redirects user to main page
                }
                else
                {
                    //lblMsg.Visible = true;
                    //lblMsg.Text = "Details entered is incorrect";// displays error msg
                }
            }
            else
            {
                //lblMsg.Visible = true;
                //lblMsg.Text = "Details entered is incorrect";// displays error msg
            }

        }
    }
}
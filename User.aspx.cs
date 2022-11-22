﻿using System;
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
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMsg.Visible = false;
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(SiteMaster.connString);// connection string to connect to database
                con.Open();// open the connection
                string checkuser = "select count(*) from Users where Username = '" + txtUsername.Text + "' ";//sql query
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
                string insert = "insert into Users (userEmail, userPassword, userName, isAdmin) values (@uEmail, @pass, @user, @admin)";// sql query to insert the data
                SqlCommand com = new SqlCommand(insert, con);
                com.Parameters.AddWithValue("@user", txtUsername.Text);// adding the value to the db
                com.Parameters.AddWithValue("@pass", txtPassword.Text);// adding the value to the db
                com.Parameters.AddWithValue("uEmail", txtUseremail.Text);// adding the value to the db
                
                com.ExecuteNonQuery();//executing the query
                lblMsg.Visible = true;
                lblMsg.Text = "Registration is successful";//display msg if succesful

                con.Close();// closes the connection

            }
            catch (Exception error)// catches the error
            {
                lblMsg.Visible = true;
                lblMsg.Text = "error" + error.ToString();// displays error msg

            }
        }
    }
}
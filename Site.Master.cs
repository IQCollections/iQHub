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
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signUpUser_Click(object sender, EventArgs e)
        {
            RegisterUser(TxtUsername.Text, TxtUserEmailSign.Text, TxtUserPassSign.Text);
        }

        private void RegisterUser(string username, string userEmail, string userPassword)
        {
            string connString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\alipy\\source\\repos\\XBCAD_2\\App_Data\\XBCAD.mdf;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(connString))
            {
                try
                {
                    con.Open();
                    string addUserQuery = "INSERT INTO dbo.User (username, userEmail, userPassword) VALUES(@username, @userEmail, @userPassword)";
                    SqlCommand cmd = new SqlCommand(addUserQuery, con);
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@useremail", userEmail);
                    cmd.Parameters.AddWithValue("@userPassword", Hashing.hashPassword(userPassword));

                    cmd.ExecuteNonQuery();
                }
                catch (Exception)
                {
                    throw;
                }
            }
        }


        /// <summary>
        /// OnClick="logInUser_Click"
        /// 
        /// OnClick="signUpUser_Click"
        /// 
        /// OnClick="logInOrg_Click"
        /// 
        /// OnClick="signUpOrg_Click"
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void logInUser_Click(object sender, EventArgs e)
        {
            LogInUser(TxtUserEmailLog.Text, TxtUserPassLog.Text);
        }

        private void LogInUser(string emailAddress, string password)
        {
            string connString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\alipy\\source\\repos\\XBCAD_2\\App_Data\\XBCAD.mdf;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(connString))
            {
                try
                {
                    con.Open();
                    string addUserQUery = "SELECT * FROM dbo.User WHERE Email = @emailAddress AND Password = @password ";
                    SqlCommand cmd = new SqlCommand(addUserQUery, con);
                    cmd.Parameters.AddWithValue("@emailAddress", emailAddress);
                    cmd.Parameters.AddWithValue("@password", Hashing.hashPassword(password));

                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);

                    da.Fill(ds);

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        loginNotification.Text = "Welcome back " + ds.Tables[0].Rows[0]["Username"].ToString();
                    }
                    else
                    {
                        loginNotification.Text = "An Error occured, User does Not exist or Credentials are incorrect";
                    }
                }
                catch (Exception)
                {
                    throw;
                }
            }
        }

        protected void signUpOrg_Click(object sender, EventArgs e)
        {
            RegisterOrganisation(TxtOrgName.Text, TxtOrgLoc.Text, TxtOrgType.Text, TxtOrgEmailSign.Text, TxtOrgPassSign.Text, TxtOrgVeri.Text, TxtOrgSocials.Text);
        }

        private void RegisterOrganisation(string orgName, string orgLocation, string orgEmail, string orgPassword, string orgVerification, string orgSocials, string orgType)
        {
            string connstring2 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\alipy\\source\\repos\\XBCAD_2\\App_Data\\XBCAD.mdf;Integrated Security=True";
            using (SqlConnection con2 = new SqlConnection(connstring2))
                try
                {
                    con2.Open();
                    string addOrgQuery = "INSERT INTO dbo.Organisation (orgName, orgLocation, orgEmail, orgPassword, orgVerification, orgSocials, orgType) VALUES (@orgName, @orgLocation, @orgEmail, @orgPassword, @orgVerification, @orgSocials, @orgType)";
                    SqlCommand cmd2 = new SqlCommand(addOrgQuery, con2);
                    cmd2.Parameters.AddWithValue("@orgName", orgName);
                    cmd2.Parameters.AddWithValue("@orgLocation", orgLocation);
                    cmd2.Parameters.AddWithValue("@orgEmail", orgEmail);
                    cmd2.Parameters.AddWithValue("@orgPassword", Hashing.hashPassword(orgPassword));
                    cmd2.Parameters.AddWithValue("@orgVerification", orgVerification);
                    cmd2.Parameters.AddWithValue("@orgSocials", orgSocials);
                    cmd2.Parameters.AddWithValue("@orgType", orgType);

                    cmd2.ExecuteNonQuery();
                }
                catch (Exception)
                {
                    throw;
                }
        }

        protected void logInOrg_Click(object sender, EventArgs e)
        {
            LoginOrganisation(int.Parse(TxtOrgID.Text), TxtOrgEmailLog.Text, TxtPassLog.Text);
        }

        private void LoginOrganisation(int orgID, string emailAddress, string password)
        {
            string connString2 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\alipy\\source\\repos\\XBCAD_2\\App_Data\\XBCAD.mdf;Integrated Security=True";
            using (SqlConnection con2 = new SqlConnection(connString2))
            {
                try
                {
                    con2.Open();
                    string addUserQUery = "SELECT * FROM dbo.Organisation WHERE orgID = @orgID AND Email = @orgEmail AND Password = @password ";
                    SqlCommand cmd = new SqlCommand(addUserQUery, con2);
                    cmd.Parameters.AddWithValue("@ordID", orgID);
                    cmd.Parameters.AddWithValue("@emailAddress", emailAddress);
                    cmd.Parameters.AddWithValue("@password", Hashing.hashPassword(password));

                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);

                    da.Fill(ds);

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        loginNotification.Text = "Welcome back " + ds.Tables[0].Rows[0]["orgName"].ToString();
                    }
                    else
                    {
                        loginNotification.Text = "An Error occured, Organisation does Not exist or Credentials are incorrect";
                    }
                }
                catch (Exception)
                {
                    throw;
                }
            }
        }
    }
}
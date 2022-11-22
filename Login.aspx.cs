using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iQHub
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (IsPostBack)
            //{
            //    using (SqlConnection con = new SqlConnection(SiteMaster.connString))
            //    {
            //        try
            //        {
            //            con.Open();
            //            string chkUser = "select count(*) from dbo.Users where userEmail = '" + TxtUserEmailSign.Text + "'";
            //            SqlCommand cmd = new SqlCommand(chkUser, con);
            //            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            //            if (temp == 1)
            //            {
            //                //lblMsgUSign.Visible = true;
            //                //lblMsgUSign.Text = "User Already Exists ";
            //            }

            //        }
            //        catch (Exception ex)
            //        {
            //            //lblMsgSign.Text = ex.Message.ToString();
            //        }
            //    }
            //}
            //if (IsPostBack)
            //{
            //    using (SqlConnection con = new SqlConnection(SiteMaster.connString))
            //    {
            //        try
            //        {
            //            con.Open();
            //            string chkUser = "select count(*) from dbo.Organisation where orgEmail = '" + TxtOrgEmailSign.Text + "'";
            //            SqlCommand cmd = new SqlCommand(chkUser, con);
            //            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            //            if (temp == 1)
            //            {
            //                //lblMsgSign.Visible = true;
            //                //lblMsgSign.Text = "User Already Exists ";
            //            }

            //        }
            //        catch (Exception ex)
            //        {
            //            //lblMsgSign.Text = ex.Message.ToString();
            //        }
            //    }
            //}
        }

        //protected void signUpUser_Click(object sender, EventArgs e)
        //{
        //    RegisterUser(TxtUsername.Text, TxtUserEmailSign.Text, TxtUserPassSign.Text);
        //}

        //private void RegisterUser(string username, string userEmail, string userPassword)
        //{
        //    //string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ABC\source\repos\iQHub\App_Data\Xbcad.mdf;Integrated Security=True";
        //    using (SqlConnection con = new SqlConnection(SiteMaster.connString))
        //    {

        //        try
        //        {
        //            con.Open();
        //            string addUserQuery = "INSERT INTO dbo.Users (userEmail, userPassword, userName) VALUES(@uEmail, @uPass, @uName)";
        //            SqlCommand cmd = new SqlCommand(addUserQuery, con);
        //            cmd.Parameters.AddWithValue("@uEmail", userEmail);
        //            cmd.Parameters.AddWithValue("@uPass", Hashing.hashPassword(userPassword));
        //            cmd.Parameters.AddWithValue("@uName", username);

        //            cmd.ExecuteNonQuery();
        //            //lblMsgSign.Visible = true;
        //            //lblMsgSign.Text = "Registration is successful ";
        //        }
        //        catch (Exception ex)
        //        {
        //            //lblMsgSign.Visible = true;
        //            //lblMsgSign.Text = "The following error occured: " + ex.Message.ToString();
        //        }
        //        finally
        //        {
        //            con.Close();
        //        }
        //    }
        //}


        ///// <summary>
        ///// OnClick="logInUser_Click"
        ///// 
        ///// OnClick="signUpUser_Click"
        ///// 
        ///// OnClick="logInOrg_Click"
        ///// 
        ///// OnClick="signUpOrg_Click"
        ///// </summary>
        ///// <param name="sender"></param>
        ///// <param name="e"></param>

        //protected void logInUser_Click(object sender, EventArgs e)
        //{
        //    LogInUser(TxtUserEmailLog.Text, TxtUserPassLog.Text);
        //}

        //private void LogInUser(string emailAddress, string password)
        //{
        //    //string connString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\alipy\\source\\repos\\XBCAD_2\\App_Data\\XBCAD.mdf;Integrated Security=True";
        //    using (SqlConnection con = new SqlConnection(SiteMaster.connString))
        //    {
        //        try
        //        {
        //            SiteMaster.userLogin = TxtUserEmailLog.Text;
        //            con.Open();
        //            string chkUser = "SELECT * FROM dbo.Users WHERE userEmail ='" + SiteMaster.userLogin + "'";
        //            SqlCommand cmd = new SqlCommand(chkUser, con);
        //            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        //            con.Close();
        //            if (temp == 1)
        //            {
        //                con.Open();
        //                string chkPass = "select userPassword from dbo.Users where userEmail ='" + SiteMaster.userLogin + "'";
        //                SqlCommand passCom = new SqlCommand(chkPass, con);
        //                string userPass = passCom.ExecuteScalar().ToString().Replace(" ", "");
        //                con.Close();

        //                con.Open();

        //                if (userPass == TxtUserPassLog.Text)
        //                {
        //                    Response.Redirect("Home2.aspx");
        //                }
        //                else
        //                {
        //                    //lblMsg.Visible = true;
        //                    //lblMsg.Text = "Email or Password is incorrect";
        //                }

        //            }
        //            else
        //            {
        //                //lblMsg.Visible = true;
        //                //lblMsg.Text = "Email or Password is incorrect";
        //            }

        //            //cmd.Parameters.AddWithValue("@emailAddress", emailAddress);
        //            //cmd.Parameters.AddWithValue("@password", Hashing.hashPassword(password));

        //            //DataSet ds = new DataSet();
        //            //SqlDataAdapter da = new SqlDataAdapter(cmd);

        //            //da.Fill(ds);

        //            //if (ds.Tables[0].Rows.Count > 0)
        //            //{
        //            //    loginNotification.Text = "Welcome back " + ds.Tables[0].Rows[0]["Username"].ToString();
        //            //}
        //            //else
        //            //{
        //            //    loginNotification.Text = "An Error occured, User does Not exist or Credentials are incorrect";
        //            //}
        //        }
        //        catch (Exception)
        //        {
        //            throw;
        //        }
        //    }
        //}

        //protected void signUpOrg_Click(object sender, EventArgs e)
        //{
        //    RegisterOrganisation(TxtOrgName.Text, TxtOrgLoc.Text, TxtOrgType.Text, TxtOrgEmailSign.Text, TxtOrgPassSign.Text);
        //}

        //private void RegisterOrganisation(string orgName, string orgLocation, string orgCategory, string orgEmail, string orgPassword)
        //{
        //    //string connstring2 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\alipy\\source\\repos\\XBCAD_2\\App_Data\\XBCAD.mdf;Integrated Security=True";
        //    using (SqlConnection con2 = new SqlConnection(SiteMaster.connString))
        //        try
        //        {
        //            con2.Open();
        //            string addOrgQuery = "INSERT INTO dbo.Organisation (orgEmail, orgName, orgPassword, orgLocation, orgCatergory) VALUES (@orgEmail, @orgName, @orgPassword, @orgLocation, @orgCat)";
        //            SqlCommand cmd2 = new SqlCommand(addOrgQuery, con2);
        //            cmd2.Parameters.AddWithValue("@orgEmail", orgEmail);
        //            cmd2.Parameters.AddWithValue("@orgName", orgName);
        //            cmd2.Parameters.AddWithValue("@orgPassword", Hashing.hashPassword(orgPassword));
        //            cmd2.Parameters.AddWithValue("@orgLocation", orgLocation);
        //            cmd2.Parameters.AddWithValue("@orgCat", orgCategory);

        //            cmd2.ExecuteNonQuery();
        //            //lblMsg.Visible = true;
        //            //lblMsg.Text = "Registered succesfully";
        //        }
        //        catch (Exception)
        //        {
        //            throw;
        //        }
        //        finally
        //        {
        //            con2.Close();
        //        }
        //}

        //protected void logInOrg_Click(object sender, EventArgs e)
        //{
        //    LoginOrganisation(int.Parse(TxtOrgID.Text), TxtOrgEmailLog.Text, TxtPassLog.Text);
        //}

        //private void LoginOrganisation(int orgID, string emailAddress, string password)
        //{
        //    //string connString2 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\alipy\\source\\repos\\XBCAD_2\\App_Data\\XBCAD.mdf;Integrated Security=True";
        //    using (SqlConnection con2 = new SqlConnection(SiteMaster.connString))
        //    {
        //        try
        //        {
        //            con2.Open();
        //            string chkOrg = "SELECT count(*) from  dbo.Organisation where orgEmail = '" + OrgEmailLog1.Text + "'";
        //            SqlCommand cmd = new SqlCommand(chkOrg, con2);
        //            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        //            con2.Close();

        //            if (temp == 1)
        //            {
        //                con2.Open();
        //                string chkOrgPass = "select orgPassword from dbo.Organisation where orgEmail = '" + OrgEmailLog1.Text + "'";
        //                SqlCommand passCom = new SqlCommand(chkOrgPass, con2);
        //                string orgPass = passCom.ExecuteScalar().ToString().Replace(" ", "");
        //                if (orgPass == TxtPassLog.Text)
        //                {
        //                    loginNotification.Text = "Correct details";
        //                    Response.Redirect("Home2.aspx");
        //                }
        //                else
        //                {
        //                    loginNotification.Text = "incorrect Details";
        //                }
        //            }
        //            else
        //            {
        //                loginNotification.Text = "incorrect Details";
        //            }


        //            //DataSet ds = new DataSet();
        //            //SqlDataAdapter da = new SqlDataAdapter(cmd);

        //            //da.Fill(ds);

        //            //if (ds.Tables[0].Rows.Count > 0)
        //            //{
        //            //    loginNotification.Text = "Welcome back " + ds.Tables[0].Rows[0]["orgName"].ToString();
        //            //}
        //            //else
        //            //{
        //            //    loginNotification.Text = "An Error occured, Organisation does Not exist or Credentials are incorrect";
        //            //}
        //        }
        //        catch (Exception)
        //        {
        //            throw;
        //        }
        //        finally
        //        {
        //            con2.Close();
        //        }
        //    }
        //}
    }
}
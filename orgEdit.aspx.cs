using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iQHub
{
    public partial class orgEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["orgEmail"] = orgLogin.org_Login;
            if (Session["orgEmail"] == null)
            {
                Response.Redirect("orgLogin.aspx");
            }


            //SqlConnection con = new SqlConnection(SiteMaster.connString);// connection string to connect to the db
            //con.Open();// opens the connection to db
            //string checkOrg = "SELECT count(*) from Organisation where orgEmail = '" + Session["orgEmail"] + "'";// sql query 
            //SqlCommand com = new SqlCommand(checkOrg, con);
            //int temp = Convert.ToInt32(com.ExecuteScalar().ToString());// executes the query
            //con.Close();//closes the connection
            //if (temp == 1)
            //{
            //    con.Open();// opens the connection 
            //    string chkPass = "select orgID from Organisation where orgEmail = '" + Session["orgEmail"] + "'";// sql query 
            //    SqlCommand idCom = new SqlCommand(chkPass, con);
            //    string orgID = idCom.ExecuteScalar().ToString();// executes the query
            //    Session["orgID"] = orgID;

            //}
            //else
            //{
            //    //lblMsg.Visible = true;
            //    //lblMsg.Text = "Details entered is incorrect";// displays error msg
            //}


        }
    }
}
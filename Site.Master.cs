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
        //public static string user_Login;
        public static string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ABC\source\repos\iQHub\App_Data\Xbcad.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            //string userVal = Session["userEmail"] as string;

            //if (String.IsNullOrEmpty(userVal))
            //{
            //    Response.Redirect("orgLogin.aspx");
            //}

            //if (HttpContext.Current.Session["userEmail"] == null)
            //{
            //    Response.Redirect("userLogin.aspx");
            //}

            //if (Session["userEmail"] == user_Login)
            //{
            //    Response.Redirect("user_Login.aspx");
            //}
            
            
        }

        

       
    }
}
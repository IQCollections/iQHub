using System;
using System.Collections.Generic;
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
        }
    }
}
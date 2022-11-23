using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Search
{
    public partial class Search : System.Web.UI.Page
    {
        string cs = "";
        private List<string> orgList = new List<string>();
        private List<string> searchList = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                try
                {
                    con.Open();
                    SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM [Organisation]", con);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    foreach (DataRow row in dt.Rows)
                    {
                        orgList.Add(row["orgName"].ToString() + " " + row["orgEmail"].ToString() + " " + row["orgLocation"].ToString() + " " + row["orgCategory"].ToString() + " " + row["isApproved"].ToString() + " " + row["orgDonated"].ToString());
                        searchList.Add(row["orgName"].ToString());
                    }
                    //Search
                    string name = txtSearch.Text;
                    string ret = "";
                    Boolean flag = false;
                    for (int i = 0; i < orgList.Count; i++)
                    {
                        if (searchList[i].Equals(name))
                        {
                            flag = true;
                            ret = orgList[i];
                        }
                    }
                    if (flag)
                    {
                        lblSearchResult.Text = "" + ret;
                    }
                    else
                    {
                        lblSearchResult.Text = "The Organisation name inputted was not valid.";
                    }
                    con.Close();
                }
                catch (Exception)
                {
                    throw;
                }
            }
        }
    }
}

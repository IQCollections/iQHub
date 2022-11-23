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
    public partial class Home2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DataTable dt = new DataTable();
            //DataTable dt2 = new DataTable();
            //string sqlCon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C: \Users\fletc\Desktop\Varsity\3rd Year\XBCAD\IQHub\App_Data\Xbcad.mdf;Integrated Security=True";
            //string sqlCmd = "SELECT TOP (3) [orgName],[orgEmail],[orgCategory],[orgLocation] FROM [dbo].[Organisation] ORDER BY [pageVisits] DESC";
            //string sqlCmd2 = "SELECT TOP (5) [orgName],[orgDonated] FROM [dbo].[Organisation] ORDER BY [orgDonated] DESC";
            //using (SqlConnection con = new SqlConnection(sqlCon))
            //{
            //    con.Open();
            //    SqlCommand cmd = new SqlCommand(sqlCmd, con);
            //    SqlCommand cmd2 = new SqlCommand(sqlCmd2, con);
            //
            //    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            //    adapter.Fill(dt);
            //    SqlDataAdapter adapter2 = new SqlDataAdapter(cmd2);
            //    adapter2.Fill(dt2);
            //    con.Close();
            //};
            SqlConnection con = new SqlConnection(SiteMaster.connString);
            
            con.Open();
            string query = "SELECT [orgName],[orgEmail],[orgCategory],[orgLocation] FROM [dbo].[Organisation] ORDER BY [pageVisits] DESC";
            SqlDataAdapter adapter = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            adapter.Fill(ds, "[dbo].[Organisation]");
            dt = ds.Tables["[dbo].[Organisation]"];
            string[] nameResults = dt.AsEnumerable().Select(x => x.Field<string>("orgName")).ToArray();
            string[] typeResults = dt.AsEnumerable().Select(x => x.Field<string>("orgCategory")).ToArray();
            string[] locationResults = dt.AsEnumerable().Select(x => x.Field<string>("orgLocation")).ToArray();
            string[] contactResults = dt.AsEnumerable().Select(x => x.Field<string>("orgEmail")).ToArray();
            Org1Name.Text = nameResults[0];
            Org2Name.Text = nameResults[1];
            Org3Name.Text = nameResults[2];
            Org1Type.Text = typeResults[0];
            Org2Type.Text = typeResults[1];
            Org3Type.Text = typeResults[2];
            Org1Location.Text = locationResults[0];
            Org2Location.Text = locationResults[1];
            Org3Location.Text = locationResults[2];
            Org1Contact.Text = contactResults[0];
            Org2Contact.Text = contactResults[1];
            Org3Contact.Text = contactResults[2];
            Org1Descrip.Text = "This is the description. The organisation does this because it's what they do. These are our values";
            for(int i = 0; i < typeResults.Length; i++)
            {
                drpbtnType.Items.Add(typeResults[i]);
            }
            con.Close();
            
            
        }

        protected void drpbtnType_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(SiteMaster.connString);

            con.Open();
            string query = "SELECT [orgName],[orgEmail],[orgCategory],[orgLocation] FROM [dbo].[Organisation] ORDER BY [pageVisits] DESC";
            SqlDataAdapter adapter = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            adapter.Fill(ds, "[dbo].[Organisation]");
            dt = ds.Tables["[dbo].[Organisation]"];
            string[] nameResults = dt.AsEnumerable().Select(x => x.Field<string>("orgName")).ToArray();
            string[] typeResults = dt.AsEnumerable().Select(x => x.Field<string>("orgCategory")).ToArray();
            string[] locationResults = dt.AsEnumerable().Select(x => x.Field<string>("orgLocation")).ToArray();
            string[] contactResults = dt.AsEnumerable().Select(x => x.Field<string>("orgEmail")).ToArray();
            Org1Name.Text = nameResults[3];
            Org2Name.Text = nameResults[4];
            Org3Name.Text = nameResults[5];
            Org1Type.Text = typeResults[3];
            Org2Type.Text = typeResults[4];
            Org3Type.Text = typeResults[5];
            Org1Location.Text = locationResults[3];
            Org2Location.Text = locationResults[4];
            Org3Location.Text = locationResults[5];
            Org1Contact.Text = contactResults[3];
            Org2Contact.Text = contactResults[4];
            Org3Contact.Text = contactResults[5];
            Org1Descrip.Text = "This is the description. The organisation does this because it's what they do. These are our values";
            for (int i = 0; i < typeResults.Length; i++)
            {
                drpbtnType.Items.Add(typeResults[i]);
            }
            con.Close();

        }

        protected void drpbtnNeeds_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
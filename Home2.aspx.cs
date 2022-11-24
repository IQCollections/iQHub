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
            btnType1.Text = typeResults[0];
            btnType2.Text = typeResults[1];
            btnType3.Text = typeResults[2];
            con.Close();
            
            
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
            btnType1.Text = typeResults[3];
            btnType2.Text = typeResults[4];
            btnType3.Text = typeResults[5];
            con.Close();

        }

        protected void btnType1_Click(object sender, EventArgs e)
        {
            string typeFilter = btnType1.Text.ToString();
            SqlConnection con = new SqlConnection(SiteMaster.connString);

            con.Open();
            string query = "SELECT [orgName],[orgEmail],[orgCategory],[orgLocation] FROM [dbo].[Organisation] WHERE [orgCategory] ="+typeFilter+"ORDER BY [pageVisits] DESC";
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
            btnType1.Text = typeResults[0];
            btnType2.Text = typeResults[1];
            btnType3.Text = typeResults[2];
            con.Close();
        }

        protected void btnType2_Click(object sender, EventArgs e)
        {
            string typeFilter = btnType2.Text.ToString();
            SqlConnection con = new SqlConnection(SiteMaster.connString);

            con.Open();
            string query = "SELECT [orgName],[orgEmail],[orgCategory],[orgLocation] FROM [dbo].[Organisation] WHERE [orgCategory] =" + typeFilter + "ORDER BY [pageVisits] DESC";
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
            btnType1.Text = typeResults[0];
            btnType2.Text = typeResults[1];
            btnType3.Text = typeResults[2];
            con.Close();
        }

        protected void btnType3_Click(object sender, EventArgs e)
        {
            string typeFilter = btnType3.Text.ToString();
            SqlConnection con = new SqlConnection(SiteMaster.connString);

            con.Open();
            string query = "SELECT [orgName],[orgEmail],[orgCategory],[orgLocation] FROM [dbo].[Organisation] WHERE [orgCategory] ='" + typeFilter + "' ORDER BY [pageVisits] DESC";
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
            btnType1.Text = typeResults[0];
            btnType2.Text = typeResults[1];
            btnType3.Text = typeResults[2];
            con.Close();
        }
    }
}
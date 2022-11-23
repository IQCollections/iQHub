using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;

namespace iQHub
{
    public partial class Stats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadData();
            Session["orgEmail"] = orgLogin.org_Login;
            if (Session["orgEmail"] == null)
            {
                Response.Redirect("orgLogin.aspx");
            }

        }
        public void loadData()
        {
            DataTable dt = new DataTable();
            DataTable dt2 = new DataTable();
            SqlConnection con = new SqlConnection(SiteMaster.connString);
            string sqlCmd = "SELECT TOP (5) [orgName],[pageVisits] FROM [dbo].[Organisation] ORDER BY [pageVisits] DESC";
            string sqlCmd2 = "SELECT TOP (5) [orgName],[orgDonated] FROM [dbo].[Organisation] ORDER BY [orgDonated] DESC";
            
            con.Open();
            SqlCommand cmd = new SqlCommand(sqlCmd, con);
            SqlCommand cmd2 = new SqlCommand(sqlCmd2, con);

            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);
            SqlDataAdapter adapter2 = new SqlDataAdapter(cmd2);
            adapter2.Fill(dt2);   
            con.Close();
            
            string[] x = new string[dt.Rows.Count];
            string[] x2 = new string[dt.Rows.Count];
            int[] y = new int[dt2.Rows.Count];
            double[] y2 = new double[dt2.Rows.Count];


            for (int i = 0; i < dt.Rows.Count; i++)
            {
                x[i] = dt.Rows[i][0].ToString();
                y[i] = Convert.ToInt32(dt.Rows[i][1].ToString());
            }
            if (x.Length > 0)
            {
                chrData.Series[0].Points.DataBindXY(x, y);
                chrData.Series[0].ChartType = SeriesChartType.Pie;
            }

            for (int j = 0; j < dt2.Rows.Count; j++)
            {
                x2[j] = dt2.Rows[j][0].ToString();
                y2[j] = Convert.ToDouble(dt2.Rows[j][1].ToString());
            }
            if (x2.Length > 0)
            {
                chr2.Series[0].Points.DataBindXY(x2, y2);
                chr2.Series[0].ChartType = SeriesChartType.Pie;
            }
        }
    }
}
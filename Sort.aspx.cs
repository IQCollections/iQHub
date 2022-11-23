using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sort
{
    public partial class Sort : System.Web.UI.Page
    {
        string cs = "";
        private List<string> DonationList = new List<string>();
        private List<double> sortList = new List<double>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSort_Click1(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                try
                {
                    con.Open();
                    SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM dbo.Organisation", con);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    foreach (DataRow row in dt.Rows)
                    {
                        DonationList.Add(row["orgName"].ToString() + " " + row["orgLocation"].ToString() + " " + row["orgCategory"].ToString() + " " + row["orgDonated"].ToString());
                        sortList.Add(Double.Parse(row["orgDonated"].ToString()));
                    }
                    string fullList = "";
                    for (int i = 0; i < sortList.Count - 1; i++)//Bubble sort in ascending order
                    {
                        for (int k = (i + 1); k < sortList.Count; k++)
                        {
                            if (sortList[i] > sortList[k])
                            {
                                string temp = DonationList[i];
                                DonationList[i] = DonationList[k];
                                DonationList[k] = temp;
                                double temp2 = sortList[i];
                                sortList[i] = sortList[k];
                                sortList[k] = temp2;
                            }
                        }
                    }
                    for (int j = 0; j < DonationList.Count; j++)
                    {
                        fullList = fullList + "" + DonationList[j] + "\n";
                    }
                    txtDisplay.Text = "" + fullList;
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
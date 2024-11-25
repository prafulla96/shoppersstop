using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;

namespace ShoppersStop
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingSolutionDbConnectionString"].ConnectionString);
            cmd = new SqlCommand();
            cmd.Connection = con;
            if (!Page.IsPostBack)
            {
                cmd.CommandText = "select top 20 ProductId, Name, Price, ImagePath from ProductsTable order by AddDate desc";
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                LatestProductsDataList.DataSource = dr;
                LatestProductsDataList.DataBind();
                con.Close();
            }
        }
    }
}
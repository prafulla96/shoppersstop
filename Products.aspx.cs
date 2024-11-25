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
    public partial class Products : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            SubCategoryLabel.Text = Request.QueryString["SubCategory"] + " Items";
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingSolutionDbConnectionString"].ConnectionString);
            cmd = new SqlCommand();
            cmd.Connection = con;
            if (!Page.IsPostBack)
            {
                cmd.CommandText = "select top 15 ProductId, Name, Price, ImagePath from ProductsTable where SubCategoryId = "
                    + Request.QueryString["SubCategoryId"];
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                ProductsByCategoryDataList.DataSource = dr;
                ProductsByCategoryDataList.DataBind();
                con.Close();
            }
        }
    }
}
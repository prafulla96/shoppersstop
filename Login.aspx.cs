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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingSolutionDbConnectionString"].ConnectionString);
            cmd = new SqlCommand();
            cmd.Connection = con;
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "select count(*) from UsersTable where EmailId = '"
                + EmailIdTextBox.Text + "' and Password = '" + PasswordTextBox.Text + "'";
            con.Open();
            int n = (int)cmd.ExecuteScalar();
            con.Close();
            if (n == 1)
            {
                Session["User"] = EmailIdTextBox.Text;
                if (Session["ProductId"] != null)
                {
                    Response.Redirect("~/User/ViewProduct.aspx?ProductId=" + Session["ProductId"].ToString());
                }
                else
                {
                    Response.Redirect("~/User/Home.aspx");
                }
            }
            else
            {
                LoginErrorLabel.Visible = true;
            }
        }
    }
}
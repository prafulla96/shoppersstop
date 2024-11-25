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
    public partial class CreateAccount : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingSolutionDbConnectionString"].ConnectionString);
            cmd = new SqlCommand();
            cmd.Connection = con;
        }

        protected void EmailIdTextBox_TextChanged(object sender, EventArgs e)
        {
            cmd.CommandText = "select count(EmailId) from UsersTable where EmailId = '" + EmailIdTextBox.Text + "'";
            con.Open();
            int n = (int)cmd.ExecuteScalar();
            con.Close();
            if (n == 1)
            {
                EmailIdMessageLabel.Text = "User with email id " + EmailIdTextBox.Text + "is already existing";
                EmailIdMessageLabel.ForeColor = Color.Red;
                EmailIdTextBox.Text = "";
                EmailIdTextBox.Focus();
            }
            else
            {
                EmailIdMessageLabel.Text = "";
            }
        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            cmd.CommandText = @"insert into UsersTable(EmailId, Password, Name, Gender, MobileNumber, Address, Pincode) values('"
            + EmailIdTextBox.Text + "', '" + PasswordTextBox.Text + "', '" + NameTextBox.Text + "', '"
            + GenderRadioButtonList.SelectedItem.Text + "', '" + MobileNoTextBox.Text + "', '" + AddressTextBox.Text
            + "', " + PincodeTextBox.Text + ")";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Login.aspx");
        }
    }
}
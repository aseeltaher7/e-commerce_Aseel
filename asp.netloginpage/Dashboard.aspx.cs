using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace asp.netloginpage
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
                Response.Redirect("login.aspx");
            lblUserDetails.Text = "Username : " + Session["username"];
            userTypeLabel.Text = "" + Session["type"];



        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=THARWATEXAM\SQL2019STD;Initial Catalog=Aseel_Exam;User ID=sa;Password=Yemen@134"))
            {
                sqlCon.Open();
          
                String query = "INSERT INTO ApplicationUsers(Name,PhoneNumber,UserName,Password,Type) values (@Name,@PhoneNumber,@UserName,@Password,@Type)";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);

                sqlCmd.Parameters.AddWithValue("@Name", namebox.Text);
                sqlCmd.Parameters.AddWithValue("@PhoneNumber", phonebox.Text);

                sqlCmd.Parameters.AddWithValue("@UserName", usernamebox.Text);

                sqlCmd.Parameters.AddWithValue("@Password", passwordbox.Text);

                sqlCmd.Parameters.AddWithValue("@Type", typebox.Text);

                sqlCmd.ExecuteNonQuery();
                Response.Redirect("Dashboard.aspx");
            }
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
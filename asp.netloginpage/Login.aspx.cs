using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace asp.netloginpage
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=THARWATEXAM\SQL2019STD;Initial Catalog=Aseel_Exam;User ID=sa;Password=Yemen@134"))
            {
                sqlCon.Open();
                string query = "SELECT * FROM ApplicationUsers WHERE username=@username AND password=@password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@username",txtUserName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());

                DataSet dst = new DataSet();
                string tableName = "ApplicationUsers";
                using (SqlDataAdapter adapter = new SqlDataAdapter(sqlCmd))
                {
                    adapter.Fill(dst, tableName);
                }

                //sqlCon.Close();

                //if (dst.Tables[0].Rows.Count == 0)
                    //show error

                if (dst.Tables[0].Rows.Count > 0)
                {
                    if (Convert.ToString(dst.Tables[0].Rows[0]["Type"] )== "admin")
                    {
                        Session["type"] = "admin";
                    }
                    else
                    {
                        Session["type"] = "customer";
                    }
                }


                if (dst.Tables[0].Rows.Count > 0)
                {
                    Session["username"] = txtUserName.Text.Trim();
                    //Session["type"] = "admin";

                    Response.Redirect("Dashboard.aspx");
                }
                else { lblErrorMessage.Visible = true; }



            }
        }
    }
}
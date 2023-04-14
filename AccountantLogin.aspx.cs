using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant_Management_System
{
    public partial class AccountantLogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from AccountantSignup where username='" + TextBox1.Text.Trim() + "' and password='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('" + dr.GetValue(5).ToString() + "');</script>");
                        Session["accountantID"] = dr.GetValue(0).ToString();
                        Session["username"] = dr.GetValue(5).ToString();
                        Session["firstname"] = dr.GetValue(2).ToString();
                        Session["role"] = "Accountant";
                        

                    }
                    Response.Redirect("AccountantIndex.aspx");

                }


                else
                {
                    Response.Write("<script>alert('Invalid Login Credentials');</script>");

                }
            }
            catch (Exception ex)
            {
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AccountantSignup.aspx");
        }
    }
}
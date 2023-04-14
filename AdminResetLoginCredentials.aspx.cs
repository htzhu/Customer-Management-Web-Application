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
    public partial class AdminResetLoginCredentials : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
      
                try
                {
                    if (Session["role"].Equals("Admin"))
                    {
                        LinkButton1.Text = "Hello " + Session["adminID"].ToString() + Session["username"].ToString() + Session["firstname"].ToString();
                    }
                }
                catch (Exception ex)
                {

                }
            }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckIfAdminExists())
            {
                updateAdmin();

            }
            else
            {
                Response.Write("<script>alert('Incorrect Chef ID');</script>");
                
            }
        }
        bool CheckIfAdminExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from adminSignup where adminID='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        void updateAdmin()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE adminSignup SET username=@username,password=@password,reconfirmpassword=@reconfirmpassword WHERE adminID='" + TextBox1.Text.Trim() + "'", con);
                
                cmd.Parameters.AddWithValue("@username", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@reconfirmpassword", TextBox8.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Login Credentials updated successfully');</script>");
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
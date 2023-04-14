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
    public partial class AccountantSignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void verify_Click(object sender, EventArgs e)
        {
            checkEmployeeID();
        }
        void checkEmployeeID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select *from AccountantRegister where employeeID='" + TextBox1.Text.Trim() + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('" + dr.GetValue(1).ToString() + "');</script>");
                        TextBox2.Text = dr.GetValue(1).ToString();
                        TextBox3.Text = dr.GetValue(2).ToString();
                        
                    }
                }
                else
                {
                    Response.Write("<script>alert('Your not an Accountant');</script>");
                }
            }
            catch (Exception ex)
            {

            }
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO AccountantSignup(accountantID,type,firstname,lastname,email,username,password,reconfirmpassword) values(@accountantID,@type,@firstname,@lastname,@email,@username,@password,@reconfirmpassword)", con);
                cmd.Parameters.AddWithValue("@accountantID", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@type", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@firstname", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@lastname", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@username", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@reconfirmpassword", TextBox8.Text.Trim());



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Accountant added successfully');</script>");
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                Response.Write("<script>alert('Accountant not added successfully');</script>");

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AccountantLogin.aspx");
        }
    }
}
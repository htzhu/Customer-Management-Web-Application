using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;


namespace Restaurant_Management_System
{
    public partial class menuPage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals("Chef"))
                {
                    LinkButton1.Text = "Hello " + Session["chefID"].ToString() + Session["username"].ToString() + Session["firstname"].ToString();
                }
            }
            catch (Exception ex)
            {

            }
        }
        //insert
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckIfMenuExists())
            {
                Response.Write("<script>alert('Menu ID already Exits');</script>");
                
            }
            else
            {
                addNewMenu();
            }
        }
        void addNewMenu()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO menu_details(menu_id,Item_description,chef_id,prices,food_type) values(@menu_id,@Item_description,@chef_id,@prices,@food_type)", con);
                cmd.Parameters.AddWithValue("@menu_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Item_description", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@chef_id", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@prices", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@food_type", DropDownList1.SelectedItem.Value);
               
                

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Menu added successfully');</script>");
                GridView2.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        bool CheckIfMenuExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from menu_details where menu_id='" + TextBox1.Text.Trim() + "';", con);
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
        //update
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (CheckIfMenuExists())
            {
                updateMenu();
                
            }
            else
            {
                Response.Write("<script>alert('Menu ID does not exists');</script>");
            }
        }
        void updateMenu()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE menu_details SET Item_description=@Item_description,chef_id=@chef_id,prices=@prices,food_type=@food_type WHERE menu_id='" + TextBox1.Text.Trim() + "'", con);
                
                cmd.Parameters.AddWithValue("@Item_description", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@chef_id", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@prices", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@food_type", DropDownList1.SelectedItem.Value);
                


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Menu updated successfully');</script>");
                GridView2.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        //delete
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (CheckIfMenuExists())
            {
                deleteMenu();

            }
            else
            {
                Response.Write("<script>alert('Incorrect Menu ID');</script>");
                
            }
        }
        void deleteMenu()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from menu_details WHERE menu_id='" + TextBox1.Text.Trim() + "'", con);



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Menu deleted successfully');</script>");
                GridView2.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        //search
        protected void Button5_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * from menu_details where menu_id='" + TextBox1.Text.Trim() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        //go
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select *from menu_details where menu_id='" + TextBox1.Text.Trim() + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        
                        TextBox2.Text = dr.GetValue(1).ToString();
                        TextBox3.Text = dr.GetValue(2).ToString();
                        TextBox4.Text = dr.GetValue(3).ToString();
                        DropDownList1.SelectedValue = dr.GetValue(4).ToString().Trim();
                        
                        
                        
                    }
                }
                else
                {
                    Response.Write("<script>alert('Menu Does Not Exists');</script>");
                }
            }
            catch (Exception ex)
            {

            }
        }
        //detailed report
        protected void Button6_Click(object sender, EventArgs e)
        {
            Paragraph para2 = new Paragraph("Fresh Course PVT LTD", FontFactory.GetFont("Arial", 30, iTextSharp.text.Font.BOLD));
            para2.Alignment = Element.ALIGN_CENTER;
            Paragraph para = new Paragraph("Menu Details Report", FontFactory.GetFont("Arial", 20, iTextSharp.text.Font.BOLD));
            para.Alignment = Element.ALIGN_CENTER;
            Paragraph para3 = new Paragraph("Suhurupaya,Battaramulla Tel:0772825549", FontFactory.GetFont("Arial", 15, iTextSharp.text.Font.BOLD));
            para3.Alignment = Element.ALIGN_CENTER;
            iTextSharp.text.Image png = iTextSharp.text.Image.GetInstance("D:/Restaurant Management System/Restaurant Management System/Images/logo.png");
            png.ScaleToFit(105f, 105f);
            png.Alignment = Element.ALIGN_CENTER;
            Paragraph para1 = new Paragraph(" ", FontFactory.GetFont("Arial", 20, iTextSharp.text.Font.BOLD));
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=MenuDetailsReport.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            GridView2.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A2, 7f, 7f, 7f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            pdfDoc.Add(para2);
           
            pdfDoc.Add(para3);
            pdfDoc.Add(para);
            pdfDoc.Add(png);
            pdfDoc.Add(para1);
            
            htmlparser.Parse(sr);

            pdfDoc.Close();
            Response.Write(pdfDoc);

            Response.End();
            GridView2.AllowPaging = true;
            GridView2.DataBind();
        }
        //pdf for search
        protected void Button7_Click(object sender, EventArgs e)
        {

            Paragraph para2 = new Paragraph("Fresh Course PVT LTD", FontFactory.GetFont("Arial", 30, iTextSharp.text.Font.BOLD));
            para2.Alignment = Element.ALIGN_CENTER;
            Paragraph para = new Paragraph("Menu Details Report", FontFactory.GetFont("Arial", 20, iTextSharp.text.Font.BOLD));
            para.Alignment = Element.ALIGN_CENTER;
            Paragraph para3 = new Paragraph("Suhurupaya,Battaramulla Tel:0772825549", FontFactory.GetFont("Arial", 15, iTextSharp.text.Font.BOLD));
            para3.Alignment = Element.ALIGN_CENTER;
            iTextSharp.text.Image png = iTextSharp.text.Image.GetInstance("D:/Restaurant Management System/Restaurant Management System/Images/logo.png");
            png.ScaleToFit(200f, 200f);
            png.Alignment = Element.ALIGN_CENTER;

            Paragraph para1 = new Paragraph(" ", FontFactory.GetFont("Arial", 20, iTextSharp.text.Font.BOLD));
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=MenuReport.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            GridView1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A2, 7f, 7f, 7f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();

            pdfDoc.Add(para2);
            
            pdfDoc.Add(para3);
            pdfDoc.Add(para);
            pdfDoc.Add(png);

            pdfDoc.Add(para1);


            htmlparser.Parse(sr);


            pdfDoc.Close();
            Response.Write(pdfDoc);

            Response.End();
            GridView1.AllowPaging = true;
            GridView1.DataBind();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
    }
}
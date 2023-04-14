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
    public partial class AccountantDetailsManagement : System.Web.UI.Page
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
        //Go
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select *from AccountantSignup where accountantID='" + TextBox1.Text.Trim() + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        
                        DropDownList1.SelectedValue = dr.GetValue(1).ToString().Trim();
                        TextBox3.Text = dr.GetValue(2).ToString();
                        TextBox4.Text = dr.GetValue(3).ToString();
                        TextBox5.Text = dr.GetValue(4).ToString();
                        TextBox6.Text = dr.GetValue(5).ToString();
                        TextBox7.Text = dr.GetValue(6).ToString();
                        TextBox8.Text = dr.GetValue(7).ToString();
                        //Response.Write("<script>alert('" + dr.GetValue(1).ToString() + "');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Manager Does Not Exists');</script>");
                }
            }
            catch (Exception ex)
            {

            }
        }
        //insert
        protected void Button2_Click(object sender, EventArgs e)
        {

            if (CheckIfAccountantExists())
            {
                Response.Write("<script>alert('Accountant ID already Exits');</script>");
                //Response.Write("<script>alert('Staff with this ID is already exists.You can't add staff with the same ID');</script>");
            }
            else
            {
                addNewAccountant();
            }
        }
        void addNewAccountant()
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
                cmd.Parameters.AddWithValue("@type", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@firstname", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@lastname", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@username", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@reconfirmpassword", TextBox8.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Accountant added successfully');</script>");
                
                 GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        bool CheckIfAccountantExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from AccountantSignup where accountantID='" + TextBox1.Text.Trim() + "';", con);
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
            if (CheckIfAccountantExists())
            {
                updateAccountant();
                //Response.Write("<script>alert('Staff with this ID is already exists.You can't add staff with the same ID');</script>");
            }
            else
            {
                Response.Write("<script>alert('Accountant ID does not exists');</script>");
            }
        }
        void updateAccountant()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE AccountantSignup SET firstname=@firstname,lastname=@lastname,email=@email WHERE accountantID='" + TextBox1.Text.Trim() + "'", con);
                
                cmd.Parameters.AddWithValue("@firstname", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@lastname", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox5.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Accountant updated successfully');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        //delete
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (CheckIfAccountantExists())
            {
                deleteAccountant();

            }
            else
            {
                Response.Write("<script>alert('Incorrect Accountant ID');</script>");
                
            }
        }
        void deleteAccountant()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from AccountantSignup WHERE accountantID='" + TextBox1.Text.Trim() + "'", con);



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Accountant deleted successfully');</script>");
                GridView1.DataBind();
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
            SqlCommand cmd = new SqlCommand("SELECT * from AccountantSignup where accountantID='" + TextBox1.Text.Trim() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
        //pdf for detailed report
        protected void Button6_Click(object sender, EventArgs e)
        {
            
            Paragraph para2 = new Paragraph("Fresh Course PVT LTD", FontFactory.GetFont("Arial", 30, iTextSharp.text.Font.BOLD));
            para2.Alignment = Element.ALIGN_CENTER;
            Paragraph para = new Paragraph("Accountant Details Report", FontFactory.GetFont("Arial", 20, iTextSharp.text.Font.BOLD));
            para.Alignment = Element.ALIGN_CENTER;
            Paragraph para3 = new Paragraph("Suhurupaya,Battaramulla Tel:0772825549", FontFactory.GetFont("Arial", 15, iTextSharp.text.Font.BOLD));
            para3.Alignment = Element.ALIGN_CENTER;

            iTextSharp.text.Image png = iTextSharp.text.Image.GetInstance("D:/Restaurant Management System/Restaurant Management System/Images/logo.png");
            png.ScaleToFit(200f, 200f);
            png.Alignment = Element.ALIGN_CENTER;
            
            Paragraph para1 = new Paragraph(" ", FontFactory.GetFont("Arial", 20, iTextSharp.text.Font.BOLD));
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=AccountantDetailReport.pdf");
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
        //pdf for search function
        protected void Button7_Click(object sender, EventArgs e)
        {
            Paragraph para2 = new Paragraph("Fresh Course PVT LTD", FontFactory.GetFont("Arial", 30, iTextSharp.text.Font.BOLD));
            para2.Alignment = Element.ALIGN_CENTER;
            Paragraph para = new Paragraph("Accountant Details Report", FontFactory.GetFont("Arial", 20, iTextSharp.text.Font.BOLD));
            para.Alignment = Element.ALIGN_CENTER;
            Paragraph para3 = new Paragraph("Suhurupaya,Battaramulla Tel:0772825549", FontFactory.GetFont("Arial", 15, iTextSharp.text.Font.BOLD));
            para3.Alignment = Element.ALIGN_CENTER;
            iTextSharp.text.Image png = iTextSharp.text.Image.GetInstance("D:/Restaurant Management System/Restaurant Management System/Images/logo.png");
            png.ScaleToFit(105f, 105f);
            png.Alignment = Element.ALIGN_CENTER;
            Paragraph para1 = new Paragraph(" ", FontFactory.GetFont("Arial", 20, iTextSharp.text.Font.BOLD));
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=AccountantDetailsReport.pdf");
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
    }
}
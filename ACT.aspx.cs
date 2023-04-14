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
    public partial class ACT : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals("Manager"))
                {
                    LinkButton1.Text = "Hello " + Session["managerID"].ToString() + Session["username"].ToString() + Session["firstname"].ToString();
                }
            }
            catch (Exception ex)
            {

            }
        }
        //add
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckIfDetailsExists())
            {
                Response.Write("<script>alert('Details already Exits');</script>");
                
            }
            else
            {
                addNewDetail();
            }

        }
        void addNewDetail()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO analysisData(monthFrom,monthTo,netProfit,amount) values(@monthFrom,@monthTo,@netProfit,@amount)", con);
                cmd.Parameters.AddWithValue("@monthFrom", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@monthTo", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@netProfit", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@amount", TextBox4.Text.Trim());
                

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Details added successfully');</script>");
                GridView2.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        bool CheckIfDetailsExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from analysisData where monthFrom='" + TextBox1.Text.Trim() + "';", con);
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
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckIfDetailsExists())
            {
                updateDetails();
                
            }
            else
            {
                Response.Write("<script>alert('Details does not exists');</script>");
            }
        }
        void updateDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE analysisData SET monthTo=@monthTo,netProfit=@netProfit,amount=@amount WHERE monthFrom='" + TextBox1.Text.Trim() + "'", con);
                
                cmd.Parameters.AddWithValue("@monthTo", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@netProfit", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@amount", TextBox4.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Details updated successfully');</script>");
                GridView2.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        //search
        protected void Button3_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * from analysisData where monthFrom='" + TextBox1.Text.Trim() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

       
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        //detailed report
        protected void Button6_Click(object sender, EventArgs e)
        {

            Paragraph para2 = new Paragraph("Fresh Course PVT LTD", FontFactory.GetFont("Arial", 30, iTextSharp.text.Font.BOLD));
            para2.Alignment = Element.ALIGN_CENTER;
            Paragraph para = new Paragraph("Financial Management Report", FontFactory.GetFont("Arial", 20, iTextSharp.text.Font.BOLD));
            para.Alignment = Element.ALIGN_CENTER;
            Paragraph para3 = new Paragraph("Suhurupaya,Battaramulla Tel:0772825549", FontFactory.GetFont("Arial", 15, iTextSharp.text.Font.BOLD));
            para3.Alignment = Element.ALIGN_CENTER;
            iTextSharp.text.Image png = iTextSharp.text.Image.GetInstance("D:/Restaurant Management System/Restaurant Management System/Images/logo.png");
            png.ScaleToFit(200f, 200f);
            png.Alignment = Element.ALIGN_CENTER;
            Paragraph para1 = new Paragraph(" ", FontFactory.GetFont("Arial", 20, iTextSharp.text.Font.BOLD));
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=AnalysisDataReport.pdf");
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
            pdfDoc.Add(para);
            pdfDoc.Add(para3);
            pdfDoc.Add(png);
            pdfDoc.Add(para1);
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
            GridView1.AllowPaging = true;
            GridView1.DataBind();
        }
        //pdf for search function
        protected void Button7_Click(object sender, EventArgs e)
        {
            Paragraph para2 = new Paragraph("Fresh Course PVT LTD", FontFactory.GetFont("Arial", 30, iTextSharp.text.Font.BOLD));
            para2.Alignment = Element.ALIGN_CENTER;
            Paragraph para = new Paragraph("Financial Management Report", FontFactory.GetFont("Arial", 20, iTextSharp.text.Font.BOLD));
            para.Alignment = Element.ALIGN_CENTER;
            Paragraph para3 = new Paragraph("Suhurupaya,Battaramulla Tel:0772825549", FontFactory.GetFont("Arial", 15, iTextSharp.text.Font.BOLD));
            para3.Alignment = Element.ALIGN_CENTER;
            iTextSharp.text.Image png = iTextSharp.text.Image.GetInstance("D:/Restaurant Management System/Restaurant Management System/Images/logo.png");
            png.ScaleToFit(200f, 200f);
            png.Alignment = Element.ALIGN_CENTER;
            Paragraph para1 = new Paragraph(" ", FontFactory.GetFont("Arial", 20, iTextSharp.text.Font.BOLD));
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=AnalyzedDataReport.pdf");
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
            pdfDoc.Add(para);
            pdfDoc.Add(para3);
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
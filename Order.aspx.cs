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
    public partial class Order : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //order
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (CheckIfOrderExists())
            {
                Response.Write("<script>alert('Manager ID already Exits');</script>");
                
            }
            else
            {
                addNewOrder();
            }

        }
        void addNewOrder()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Order2(customerID,item1,description1,price1,type1,quantity1,item2,description2,price2,type2,quantity2,item3,description3,price3,type3,quantity3,item4,description4,price4,type4,quantity4) values(@customerID,@item1,@description1,@price1,@type1,@quantity1,@item2,@description2,@price2,@type2,@quantity2,@item3,@description3,@price3,@type3,@quantity3,@item4,@description4,@price4,@type4,@quantity4)", con);
                cmd.Parameters.AddWithValue("@customerID", TextBox21.Text.Trim());
                cmd.Parameters.AddWithValue("@item1", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@description1", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@price1", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@type1", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@quantity1", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@item2", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@description2", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@price2", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@type2", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@quantity2", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@item3", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@description3", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@price3", TextBox13.Text.Trim());
                cmd.Parameters.AddWithValue("@type3", TextBox14.Text.Trim());
                cmd.Parameters.AddWithValue("@quantity3", TextBox15.Text.Trim());
                cmd.Parameters.AddWithValue("@item4", TextBox16.Text.Trim());
                cmd.Parameters.AddWithValue("@description4", TextBox17.Text.Trim());
                cmd.Parameters.AddWithValue("@price4", TextBox18.Text.Trim());
                cmd.Parameters.AddWithValue("@type4", TextBox19.Text.Trim());
                cmd.Parameters.AddWithValue("@quantity4", TextBox20.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Order placed successfully');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        bool CheckIfOrderExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Order2 where customerID='" + TextBox21.Text.Trim() + "';", con);
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
        //go for item1
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
                        TextBox3.Text = dr.GetValue(3).ToString();
                        TextBox4.Text = dr.GetValue(4).ToString();
                        
                       
                    }
                }
                else
                {
                    Response.Write("<script>alert('Menu Item Does Not Exists');</script>");
                }
            }
            catch (Exception ex)
            {

            }
        }
       
        //go item 3
        protected void Button7_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select *from menu_details where menu_id='" + TextBox11.Text.Trim() + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        
                        TextBox12.Text = dr.GetValue(1).ToString();
                        TextBox13.Text = dr.GetValue(3).ToString();
                        TextBox14.Text = dr.GetValue(4).ToString();

                        
                    }
                }
                else
                {
                    Response.Write("<script>alert('Menu Item Does Not Exists');</script>");
                }
            }
            catch (Exception ex)
            {

            }
        }
        //goitem 4
        protected void Button8_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select *from menu_details where menu_id='" + TextBox16.Text.Trim() + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        
                        TextBox17.Text = dr.GetValue(1).ToString();
                        TextBox18.Text = dr.GetValue(3).ToString();
                        TextBox19.Text = dr.GetValue(4).ToString();

                        
                    }
                }
                else
                {
                    Response.Write("<script>alert('Menu Item Does Not Exists');</script>");
                }
            }
            catch (Exception ex)
            {

            }
        }
        //go item3
        protected void Button6_Click1(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select *from menu_details where menu_id='" + TextBox6.Text.Trim() + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        
                        TextBox7.Text = dr.GetValue(1).ToString();
                        TextBox8.Text = dr.GetValue(3).ToString();
                        TextBox9.Text = dr.GetValue(4).ToString();

                        
                    }
                }
                else
                {
                    Response.Write("<script>alert('Menu Item Does Not Exists');</script>");
                }
            }
            catch (Exception ex)
            {

            }
        }
        //view order
        protected void Button2_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT orderID,description1,quantity1,description2,quantity2,description3,quantity3,description4,quantity4,total from Order2 where customerID='" + TextBox21.Text.Trim() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
        //order status
        protected void Button3_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * from confirmOrders where customerID='" + TextBox21.Text.Trim() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }
        //detailed report
        protected void Button5_Click(object sender, EventArgs e)
        {
            Paragraph para2 = new Paragraph("Fresh Course PVT LTD", FontFactory.GetFont("Arial", 30, iTextSharp.text.Font.BOLD));
            para2.Alignment = Element.ALIGN_CENTER;
            Paragraph para = new Paragraph("Order Details Report", FontFactory.GetFont("Arial", 20, iTextSharp.text.Font.BOLD));
            para.Alignment = Element.ALIGN_CENTER;
            Paragraph para3 = new Paragraph("Suhurupaya,Battaramulla Tel:0772825549", FontFactory.GetFont("Arial", 15, iTextSharp.text.Font.BOLD));
            para3.Alignment = Element.ALIGN_CENTER;
            iTextSharp.text.Image png = iTextSharp.text.Image.GetInstance("D:/Restaurant Management System/Restaurant Management System/Images/logo.png");
            png.ScaleToFit(200f, 200f);
            png.Alignment = Element.ALIGN_CENTER;
            Paragraph para1 = new Paragraph(" ", FontFactory.GetFont("Arial", 20, iTextSharp.text.Font.BOLD));
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=OrderReport.pdf");
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
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
    }
}
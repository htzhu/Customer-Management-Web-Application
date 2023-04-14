using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant_Management_System
{
    public partial class AccountantIndex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals("Accountant"))
                {
                    LinkButton1.Text = "Hello " +Session["accountantID"].ToString()+ Session["username"].ToString() + Session["firstname"].ToString();
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}
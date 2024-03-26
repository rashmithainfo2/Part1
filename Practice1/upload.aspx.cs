using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;


namespace Practice1
{
    public partial class upload : System.Web.UI.Page
    {
        string str = "Data Source=DESKTOP-AOPGVS0;uid=sa;pwd=ris@123;database=EmpSearch";
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(str);
            //string com = "Select * from Emp";
            //SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            //DataTable dt = new DataTable();
            //adpt.Fill(dt);
            //DropDownList1.DataSource = dt;
            //DropDownList1.DataBind();
            //DropDownList1.DataTextField = "Name";
            //DropDownList1.DataValueField = "Age";
            //DropDownList1.DataBind();

            //string = HttpContext.Current.Request.UrlReferrer.AbsoluteUri;
            //label2.Text = "You Came from:-" + home.aspx ;
        }
       
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Request.UrlReferrer != null)
            {
                Response.Redirect(Request.UrlReferrer.ToString());
            }
            else
            {
                // Handle cases where there's no referrer (e.g., direct access or referrer not available)
                // You can redirect to a default page or handle it as per your application logic
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {

            if (Request.UrlReferrer != null)
            {
                Response.Redirect(Request.UrlReferrer.ToString());
            }
            else
            {
                // Handle cases where there's no referrer (e.g., direct access or referrer not available)
                // You can redirect to a default page or handle it as per your application logic
            }
        }
    }
    }

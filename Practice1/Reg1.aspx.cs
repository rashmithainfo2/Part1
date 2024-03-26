using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.IO;


namespace Practice1
{
    public partial class Reg1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-AOPGVS0;Initial Catalog=EmpSearch;User ID=sa; Password=ris@123");
            SqlCommand cmd = new SqlCommand("[dbo].[Reg_P]", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("FirstName", TxtFName.Text);
            cmd.Parameters.AddWithValue("LastName", TxtLName.Text);
            cmd.Parameters.AddWithValue("ScreenName", TxtSName.Text);
            cmd.Parameters.AddWithValue("DateofBirth",TxtDOB.Text);
            cmd.Parameters.AddWithValue("Gender", DDGender.SelectedValue);
            cmd.Parameters.AddWithValue("Country", DDCompanyl.SelectedValue);
            cmd.Parameters.AddWithValue("Emailid", txtEmail.Text);
            cmd.Parameters.AddWithValue("Phone", TxtMN0.Text);
            cmd.Parameters.AddWithValue("AlPhone", TxtAno.Text);
            cmd.Parameters.AddWithValue("Password", txtpass.Text);
            cmd.Parameters.AddWithValue("ConfirmPassword", Txtcpass.Text);
            con.Open();
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                lblmsg.Text = "Record Inserted Succesfully into the Database";
                lblmsg.ForeColor = System.Drawing.Color.CornflowerBlue;
            }
            con.Close();
        }

        protected void Exporttoexcel_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ContentType = "application/ms-excel";
            Response.AddHeader("content-disposition", "attachment;filename=userinfo.xls");
            Response.Charset = "";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htW = new HtmlTextWriter(sw);
            GridView1.RenderControl(htW);
            Response.Output.Write(sw.ToString());
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }
    }
}
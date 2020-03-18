using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Admin_adminlogin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        try
        {


            cn.Open();
            //string sql = "insert into  Admin values('"+txtaid.Text+"','"+txtapass.Text+"')";
            string sql = "select * from tbladminlogin where aid='" + txtemail.Text + "' and apass='" + txtpass.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, cn);
            //cmd.ExecuteNonQuery();
            SqlDataReader dr1 = cmd.ExecuteReader();

            if (dr1.Read() == true)
            {
                Session["uname"] = dr1[0].ToString();
                Response.Redirect("~/Admin/ahome.aspx");
            }
            else
            {
                lblerror.Text = "Admin is not valid";
            }
            cn.Close();
            txtemail.Text = " ";
            txtpass.Text = " ";



            //Response.Redirect("~/Default.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}

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
public partial class Admin_changepassword : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            cn.Open();
            string sql = "update tbladminlogin set apass='" +txtnewpass.Text+"' where aid='" + Session["uname"].ToString() + "' and apass='" + txtpass.Text + "' ";


            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            //txt.Text = " ";
            //txtapass.Text = " ";

            Response.Redirect("~/Admin/ahome.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }
}

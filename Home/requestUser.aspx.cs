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
public partial class Home_requestUser : System.Web.UI.Page
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
            string sql = "insert into tblrequest values('"+Session["uname"].ToString()  +"','"+DropDownList1.SelectedValue+"','N')";
            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
           //lblerror.Text = "Already exist user ";

            Response.Redirect("~/home/home.aspx");
        }
        catch (Exception ex)
        {
            lblText.Text = "You Have Already Requested Friends";  
            
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

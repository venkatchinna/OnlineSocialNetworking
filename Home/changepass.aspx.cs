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

public partial class Home_changepass : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            cn.Open();
            string sql = "update tbllogin set password='" + txtnpass.Text + "' where email='" + Session["uname"].ToString() + "' and password='" + txtpass.Text + "' ";


            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            //txt.Text = " ";
            //txtapass.Text = " ";

            Response.Redirect("~/Home/Home.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }
}

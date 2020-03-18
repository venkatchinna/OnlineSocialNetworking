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
public partial class Admin_news : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtsend_Click(object sender, EventArgs e)
    {
        try
        {
            cn.Open();
            string sql = "insert into tblanews values('" + txtnews.Text + "','" + txtdate.Text + "','" + txtndetail.Text + "')";
            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.ExecuteNonQuery();
            // Response.Redirect("~/Profile/Home.aspx");
          GridView1.DataBind();
            cn.Close();
            txtnews.Text = "";
            txtdate.Text = " ";
            txtndetail.Text = " ";

            lblsuccess.Text = "Successfully Send News";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());

        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtdate.Text = Calendar1.SelectedDate.ToShortDateString();
    }
}

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
public partial class Home_Feedback : System.Web.UI.Page
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
            string sql = "insert into tblfeed values('"+txtnm.Text+"','"+txtadd.Text+"','"+txtct.Text + "','" + txtstate.Text + "','" + txtcount.Text + "','" + txtphone.Text + "','"+txtmobile.Text+"','"+txtdate.Text+"','"+txtfeed.Text+"')";

            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.ExecuteNonQuery();
            cn.Close();

            lblseccess.Text = "Feedback is Succesfully";
            txtnm.Text = " ";
            txtadd.Text = " ";
            txtct.Text = " ";
            txtstate.Text = " ";
            txtcount.Text = " ";
            txtphone.Text = " ";
            txtmobile.Text =" ";
            //txtdate.Text = " ";
            txtfeed.Text = " ";
            // Response.Redirect("~/Default.aspx");
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

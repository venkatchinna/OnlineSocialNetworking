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

public partial class Register : System.Web.UI.Page
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
            string sql = "insert into tbllogin values('" + txtfnm.Text + "','" + txtmnm.Text + "','" + txtlmn.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','" + txtstate.Text + "','" + txtct.Text + "','" + txtpin.Text + "','" + ddlseq.SelectedValue   + "','" + txtsans.Text + "','N')";
            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            txtfnm.Text = " ";
            txtmnm.Text = " ";
            txtlmn.Text = " ";
            txtemail.Text = " ";
            txtpass.Text = " ";
            txtrepass.Text = " ";
            txtstate.Text = " ";
            txtct.Text = " ";
            txtpin.Text = " ";
          // txtsque.Text = " ";
            txtsans.Text = " ";

             //lblerror.Text = "Already exist user ";

            Response.Redirect("~/login.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }
}

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


public partial class forget : System.Web.UI.Page
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
            string sql = "select * from tbllogin where email='"+txtemail.Text+"' and secque='"+txtsque.Text+"' and sans='"+txtsans.Text+"'";
            SqlCommand cmd = new SqlCommand(sql,cn);
            SqlDataReader dr2 = cmd.ExecuteReader();
            if (dr2.Read() == true)
            {
                lblpass.Text =dr2[4].ToString();
            }
            else
            {
                lblerror.Text = "Enter the valid ID & security Ques. Ans";
            }
            cn.Close();
        }
        catch(Exception ex)
        {
            Response.Write(ex.ToString());

        }
    }
}

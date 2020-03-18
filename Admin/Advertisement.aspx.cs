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

public partial class Admin_Advertisement : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            int i;
            cn.Open();
            string dpath; //for the path
            dpath = "~/Admin/adminImages/";//the path at which we are storing our image

            dpath = dpath + FileUpload1.FileName.ToString();


            string sql = "insert into tbladd values('" + Session["uname"].ToString() + "','" + txtaave.Text + "','" + txtaadis.Text + "','" + txtaaddtype.Text + "','" + dpath+ "')";
            SqlCommand cmd = new SqlCommand(sql, cn);
            i = cmd.ExecuteNonQuery();

            if (i > 0)
            {
                FileUpload1.SaveAs(MapPath(dpath)); //File will be stored in your folder


            }

            cn.Close();
            lblsuccess.Text = "Successfully Send Advertisement";
            txtaave.Text = " ";
            txtaadis.Text = " ";
            txtaaddtype.Text = " ";
            dpath = " ";

           GridView1.DataBind();
            //   Response.Redirect("~/Profile/imageupload.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }


    }
}

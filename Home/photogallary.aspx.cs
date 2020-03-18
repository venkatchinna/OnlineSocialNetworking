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

public partial class Home_photogallary : System.Web.UI.Page
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
            string dpath; //for the path
            dpath = "~/Home/PG/";//the path at which we are storing our image
            dpath = dpath + FileUpload1.FileName.ToString();

            string sql = "insert into tblphotogallary values('" + Session["uname"].ToString() + "','" + dpath + "','" + txtdec.Text + "')";

            SqlCommand cmd = new SqlCommand(sql, cn);
            int i;
            i = cmd.ExecuteNonQuery();

            if (i > 0)
            {
                FileUpload1.SaveAs(MapPath(dpath)); //File will be stored in your folder

                txtdec.Text = "";
            }
            DataList1.DataBind();
            cn.Close();

        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}

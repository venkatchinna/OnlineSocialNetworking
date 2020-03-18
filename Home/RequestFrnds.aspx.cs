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

public partial class Home_RequestFrnds : System.Web.UI.Page
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
            string sql = "Update tblrequest set status='Y' where req_to='" + Session["uname"] + "' and req_from='" + DropDownList1.SelectedValue + "'";
            SqlCommand cmd = new SqlCommand(sql, cn);
            int i;
            i = cmd.ExecuteNonQuery();
            cn.Close();
            if (i > 0)
            {
                // Session["frnd"] = DropDownList1.SelectedValue.ToString();
              //  DataList1.DataBind();
                //cn.Open();
                //string sql1 = "delete from tblrequest where req_to='" + Session["uname"] + "' and req_from='" + DropDownList1.SelectedValue + "'";
                //SqlCommand cmd1 = new SqlCommand(sql1, cn);
                //int j = 0;
                //j=cmd1.ExecuteNonQuery();
                //cn.Close();
                //if (j > 0)
                //{
                //    DropDownList1.DataBind();
                //    //FormView1.DataBind();  
                //}
            }

            Response.Redirect("~/home/home.aspx");

        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        string sql1 = "delete from tblrequest where req_to='" + Session["uname"] + "' and req_from='" + DropDownList1.SelectedValue + "'";
        SqlCommand cmd1 = new SqlCommand(sql1, cn);
        int j = 0;
        j = cmd1.ExecuteNonQuery();
        cn.Close();
        if (j > 0)
        {
            DropDownList1.DataBind();
            //FormView1.DataBind();  
            //DataList1.DataBind();
        }
    }
}

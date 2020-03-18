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

public partial class Admin_adminhome : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("~/Admin/adminlogin.aspx");
        }
        else
        {
            lbluser.Text = Session["uname"].ToString();


        }
    }


    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session["uname"] = null;
        Response.Redirect("~/Admin/adminlogin.aspx");
    }
}

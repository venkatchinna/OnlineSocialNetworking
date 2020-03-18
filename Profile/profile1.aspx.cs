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

public partial class Profile_profile1 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        int i;

        for (i = 1; i <= 31; i++)
        {
            ddlday.Items.Add(i.ToString());
        }
        for (i = 1; i <= 12; i++)
        {
            ddlmonth.Items.Add(i.ToString());
        }
        for (i = 1987; i < 2097; i++)
        {
            ddlyear.Items.Add(i.ToString());
        }

        try
        {
            cn.Open();
            string sql1 = "select * from profile1 where Email='" + Session["uname"].ToString() + "' ";
            SqlCommand cmd1 = new SqlCommand(sql1, cn);
            SqlDataReader dr1 = cmd1.ExecuteReader();

            if (dr1.Read() == true)
            {
                Response.Redirect("~/Home/Home.aspx");
            }

            cn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            cn.Open();
            string dpath; //for the path
            dpath = "~/profile/profileImages/";//the path at which we are storing our image

            dpath = dpath + FileUpload1.FileName.ToString();
            string gender;
            if (rbtmale.Checked == true)
            {
                gender = "Male";
            }
            else
            {
                gender = "Female";
            }
            int i;
            string day;
            string month;
            string date;
            string year;
            day = ddlday.SelectedValue;
            month = ddlmonth.SelectedValue;
            year = ddlyear.SelectedValue;
            date = day + "/" + month + "/" + year;

            string sql = "insert into profile1 values('" + Session["uname"].ToString() + "','" + dpath + "','" + txtfnm.Text + "','" + txtmnm.Text + "','" + txtlnm.Text + "','" + gender + "','" + date + "','" + txtct.Text + "','" + txtstate.Text + "','" + txtpin.Text + "','" + txtphone.Text + "','" + txtmobile.Text + "')";
            SqlCommand cmd = new SqlCommand(sql, cn);
            i = cmd.ExecuteNonQuery();

            if (i > 0)
            {
                FileUpload1.SaveAs(MapPath(dpath)); //File will be stored in your folder


            }

            cn.Close();
            Response.Redirect("~/Home/Home.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }
}

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


public partial class Home_checkprofile : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        txtProEmail.Text = Session["uname"].ToString();
    }
    protected void Chkprofile_Click(object sender, EventArgs e)
    {
        try
        {
            cn.Open();
            string sql1 = "select * from profile1 where Email='" + txtProEmail.Text + "' ";
            SqlCommand cmd1 = new SqlCommand(sql1, cn);
            SqlDataReader dr1 = cmd1.ExecuteReader();

            if (dr1.Read() == true)
            {
                txtfnm.Text = dr1[3].ToString();
                txtmnm.Text = dr1[4].ToString();
                txtlnm.Text = dr1[5].ToString();
                txtdate.Text = dr1[7].ToString();
                txtct.Text = dr1[8].ToString();
                txtstate.Text = dr1[9].ToString();
                txtpin.Text = dr1[10].ToString();
                txtphone.Text = dr1[11].ToString();
                txtmobile.Text = dr1[12].ToString();
                
                if (dr1[6].ToString() == "Male")
                {
                    rbtmale.Checked = true;
                }
                else
                {
                    RadioButton2.Checked = true;

                }

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
            string gender;
            if (rbtmale.Checked == true)
            {
                gender = "Male";
            }
            else
            {
                gender = "FeMale";
            }
            cn.Open();
            string sql = "update profile1 set fnm='" + txtfnm.Text + "',mnm='" + txtmnm.Text + "',lnm='" + txtlnm.Text + "',bdate='" + txtdate.Text + "',gender='" + gender + "',city='" + txtct.Text + "',state='"+txtstate.Text+"',pin='" + txtpin.Text + "',phone='" + txtphone.Text + "',mobile='" + txtmobile.Text + "' where email='" + txtProEmail.Text + "' ";
            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            lblsuccess.Text = "Information Updated Successfully";

        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}

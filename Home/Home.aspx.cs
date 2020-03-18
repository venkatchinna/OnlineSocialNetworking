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

public partial class Home_Home : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString); 
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            cn.Open();
            string sql = "select * from tblrequest where req_to='" + Session["uname"].ToString() + "' and status='Y'";
            SqlCommand cmd = new SqlCommand(sql, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read() == true)
            {
                Session["frnd"] = dr[1].ToString(); 
               // Response.Redirect("~/Profile/profile1.aspx");
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
        
    }
    
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

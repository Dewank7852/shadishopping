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

public partial class Default3 : System.Web.UI.Page
{
    string constring = ConfigurationManager.ConnectionStrings["connstring"].ToString();
    SqlCommand cmd;
   // SqlConnection conn;
 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection Conn = new SqlConnection(constring);
            Conn.Open();
            cmd = new SqlCommand("sugg1", Conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@cust_id", txtcid.Text);
            cmd.Parameters.AddWithValue("@sugg", txtsugg.Text);
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)

        {
            //Response.Redirect(ex.Message);
            Response.Redirect("suggestion.aspx");
        }
        finally
        {
            txtcid.Text = "";
            txtsugg.Text = "";
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["uname"] = "";
        Response.Redirect("home.aspx");
    }
}

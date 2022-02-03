


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

public partial class _Default : System.Web.UI.Page
{
    string connstring = ConfigurationManager.ConnectionStrings["connstring"].ToString();
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataAdapter ad;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
protected void  Button1_Click(object sender, EventArgs e)
{
    string img = ("~\\images\\" + FileUpload1.FileName);
        DataSet ds = new DataSet();
        conn=new SqlConnection (connstring);
        SqlCommand cmd = new SqlCommand("company_insert", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Company_id",txtcid.Text);
        cmd.Parameters.AddWithValue("@Company_name",txtcname.Text);
        cmd.Parameters.AddWithValue("@Password",txtpass.Text);
        //cmd.Parameters.AddWithValue("@Product_id",txtpid.Text);
        cmd.Parameters.AddWithValue("@Product_name",txtpname.Text);
        cmd.Parameters.AddWithValue("@Add_image",img);
        cmd.Parameters.AddWithValue("@Add_description",txtadddec.Text);
        cmd.Parameters.AddWithValue("@Company_URL", txtcurl.Text);
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        ad.Fill(ds, "company");

        txtcid.Text = "";
        txtadddec.Text = "";
        txtcname.Text = "";
        txtpass.Text = "";
        txtcurl.Text = "";
        txtpname.Text = "";
        txtpname.Text = "";
}
    

    protected void Button2_Click(object sender, EventArgs e)
    {
        txtcid.Text = "";
        txtadddec.Text = "";
        txtcname.Text = "";
        txtpass.Text = "";
        txtcurl.Text = "";
        txtpname.Text = "";
        txtpname.Text = "";
        
   }
}

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
    string constring = ConfigurationManager.ConnectionStrings["connstring"].ToString();
    SqlCommand cmd;
 //   SqlConnection conn;
 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection Conn = new SqlConnection(constring);
        Conn.Open();
        cmd = new SqlCommand("invo_insert", Conn);
        cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@Invoice_id",txtiid.Text);
        cmd.Parameters.AddWithValue("@Order_id",txtoid.Text);
        cmd.Parameters.AddWithValue("@Discount",txtdiscount.Text);
        cmd.Parameters.AddWithValue("@Tax",txttax.Text);
        cmd.Parameters.AddWithValue("@Shippment_charge",txtshipch.Text);
        cmd.Parameters.AddWithValue("@Amount_payable",txtamount.Text );
        cmd.Parameters.AddWithValue("@Payment_mode",txtpaymode .Text );
        cmd.Parameters.AddWithValue("CCno",txtcredit .Text);
        cmd.ExecuteNonQuery();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //txtiid.Text = "";
        txtoid.Text = "";
        txtdiscount.Text = "";
        txttax.Text = "";
        txtshipch.Text = "";
        txtamount.Text = "";
        txtpaymode.Text = "";
        txtcredit.Text = "";
    }
}

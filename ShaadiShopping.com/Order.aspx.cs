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
    string constring = @"Data Source=.;Initial Catalog=ShaadiShopping;Integrated Security=True";
    SqlCommand cmd;
    //SqlConnection conn;
 
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection Conn = new SqlConnection(constring);
        Conn.Open();
        cmd = new SqlCommand("Order_inst1", Conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Order_id", txtoid .Text);
        cmd.Parameters.AddWithValue("@Cust_id", txtcid .Text);
        cmd.Parameters.AddWithValue("@Item_id", txticode .Text);
        cmd.Parameters.AddWithValue("@Item_quantity", txtquan .Text);
        cmd.Parameters.AddWithValue("@Total_cost", txttotal .Text);
        cmd.Parameters.AddWithValue("@Order_date", txtdoorder .Text);
        cmd.ExecuteNonQuery();

    }
}

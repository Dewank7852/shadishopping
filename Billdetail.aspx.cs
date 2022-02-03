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
using System.Windows.Forms; 

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string a=tex
        Panel3.Visible = false;
        GridView1.DataSource = catalog.getdata();
        this.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MessageBox.Show("Is filled information is correct?", "Shipping Information", MessageBoxButtons.OKCancel);
        Panel3.Visible = true;
        GridView2.DataSource = catalog.calculatprice();
        this.DataBind();
        
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       catalog.insert_dd(txtshipadd.Text ,txtcontect.Text ,txtoid.Text,txtcustid .Text);
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

        GridView2.DataSource = catalog.del(GridView2.SelectedIndex);
        
        Panel3.Visible = true;
        GridView2.DataSource = catalog.calculatprice();
        //this.DataBind();
        GridView2.DataBind(); 

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.DataSource = catalog.del(GridView1.SelectedIndex);
        GridView1.DataBind();
        GridView2.DataSource = catalog.calculatprice();
        this.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}

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

public partial class Rituals : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = false;
        Panel12.Visible = false;
        Panel13.Visible = false;
        Panel14.Visible = false;
        Panel9.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = false;
        Panel12.Visible = false;
        Panel13.Visible = false;
        Panel14.Visible = false;
        Panel9.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible =false ;
        Panel3.Visible = true ;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = false;
        Panel12.Visible = false;
        Panel13.Visible = false;
        Panel14.Visible = false;
        Panel9.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = true ;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = false;
        Panel12.Visible = false;
        Panel13.Visible = false;
        Panel14.Visible = false;
        Panel9.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false ;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = true ;
        Panel6.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = false;
        Panel12.Visible = false;
        Panel13.Visible = false;
        Panel14.Visible = false;
        Panel9.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = true ;
        Panel10.Visible = false;
        Panel11.Visible = false;
        Panel12.Visible = false;
        Panel13.Visible = false;
        Panel14.Visible = false;
        Panel9.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = false;
        Panel12.Visible = false;
        Panel13.Visible = false;
        Panel14.Visible = false;
        Panel9.Visible = false;
        Panel7.Visible = true ;
        Panel8.Visible = false;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = false;
        Panel12.Visible = false;
        Panel13.Visible = false;
        Panel14.Visible = false;
        Panel9.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = true ;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = false;
        Panel12.Visible = false;
        Panel13.Visible = false;
        Panel14.Visible = false;
        Panel9.Visible = true ;
        Panel7.Visible = false;
        Panel8.Visible = false;
    }
    protected void LinkButton14_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false ;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = true ;
        Panel12.Visible = false;
        Panel13.Visible = false;
        Panel14.Visible = false;
        Panel9.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = false;
        Panel12.Visible = true;
        Panel13.Visible = false;
        Panel14.Visible = false;
        Panel9.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
    }
    
    protected void LinkButton11_Click1(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = false;
        Panel12.Visible = false;
        Panel13.Visible = false;
        Panel14.Visible = true ;
        Panel9.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = false;
        Panel12.Visible = false;
        Panel13.Visible = true ;
        Panel14.Visible = false;
        Panel9.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
    }

    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel10.Visible = true ;
        Panel11.Visible = false;
        Panel12.Visible = false;
        Panel13.Visible = false;
        Panel14.Visible = false;
        Panel9.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
    }
}

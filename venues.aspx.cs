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

public partial class vanues : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel5.Visible = false ;
        Panel7.Visible = false ;
        Panel11.Visible = false ;
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel5.Visible = false;
        Panel7.Visible = false;
        Panel11.Visible = false;
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Panel5.Visible = true;
        Panel1.Visible = false ;
        Panel7.Visible = false;
        Panel11.Visible = false;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Panel7.Visible = true;
        Panel5.Visible = false ;
        Panel1.Visible = false;
        Panel11.Visible = false;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel11.Visible = true;
        Panel7.Visible = false ;
        Panel5.Visible = false;
        Panel1.Visible = false;
        
    }
}

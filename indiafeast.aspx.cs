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

public partial class feast : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible =true;
        Panel17.Visible = false;
        Panel20.Visible = false;
        Panel14.Visible = false;
        Panel11.Visible = false;
        Panel8.Visible = false;
        Panel5.Visible = false;
    }

   
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false ;
        Panel17.Visible = false;
        Panel20.Visible = false;
        Panel14.Visible = false;
        Panel11.Visible = true ;
        Panel8.Visible = false;
        Panel5.Visible = false;
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false ;
        Panel17.Visible = false;
        Panel20.Visible = false;
        Panel14.Visible = false;
        Panel11.Visible = false;
        Panel8.Visible = true ;
        Panel5.Visible = false;
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false ;
        Panel17.Visible = false;
        Panel20.Visible = false;
        Panel14.Visible = true ;
        Panel11.Visible = false;
        Panel8.Visible = false;
        Panel5.Visible = false;
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false ;
        Panel17.Visible = true ;
        Panel20.Visible = false;
        Panel14.Visible = false;
        Panel11.Visible = false;
        Panel8.Visible = false;
        Panel5.Visible = false;
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false ;
        Panel17.Visible = false;
        Panel20.Visible = true ;
        Panel14.Visible = false;
        Panel11.Visible = false;
        Panel8.Visible = false;
        Panel5.Visible = false;
    }
   
   
   
}

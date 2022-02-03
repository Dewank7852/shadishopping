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

public partial class Royal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel5.Visible = false;
        Panel11.Visible = false;
    }
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        Panel5.Visible = false;
        Panel11.Visible = true;
        Panel15.Visible = false;

    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Panel5.Visible = true;
        Panel11.Visible =false;
        Panel15.Visible = false;
    }
    protected void LinkButton4_Click2(object sender, EventArgs e)
    {
        Panel5.Visible =false;
        Panel11.Visible = false;
        Panel15.Visible = true;
    }
}

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
using System.Windows.Forms;

public partial class home : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection("server=localhost;database=ShaadiShopping;trusted_connection=true");
    string constring = ConfigurationManager.ConnectionStrings["connstring"].ToString();
    SqlDataAdapter ad;
    SqlConnection con;
    DataSet ds = new DataSet("Inventory");
    DataRowCollection row;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(constring);
        if (Session["image"] == null && Session["url"]==null)
        {
            ImageButton1.ImageUrl = "~\\images\\ad2.gif";
            ImageButton1.PostBackUrl = "general.aspx";
        }
        else
        {
            ImageButton1.PostBackUrl = Session["url"].ToString();
            ImageButton1.ImageUrl = Session["image"].ToString();
        }
        
        LinkButton5.Visible = false;
        userpanel.Visible = true;
        Adminpanel.Visible = false;
        Companypanel.Visible = false;
        con.Open();
        if (!IsPostBack)
        {
            Panel3.Visible = false;
            Panel6.Visible = false;
            Panel5.Visible = false;
            ListItem i; 
        
            DropDownList1.Items.Clear();
            DropDownList1.Items.Add("---Select---");
            DropDownList2.Items.Add("---Select---");
            //conn = new SqlConnection(constring);
            string sql = "select product_name,product_id from Inventory";
            ad = new SqlDataAdapter(sql, con);
            ad.Fill(ds, "inventory");
            row = ds.Tables["Inventory"].Rows;
            foreach (DataRow dr in row)
            {
                i = new ListItem(dr["product_name"].ToString(), dr["product_id"].ToString());
                DropDownList1.Items.Add(i);

            }
            
            }
            
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("custreg.aspx");
       
    }
     
    protected void Button1_Click(object sender, EventArgs e)
        {
        SqlDataReader dr1;
        string str = "Select Username,Password from Customer";
        SqlCommand cmd = new SqlCommand(str, con);
        dr1 = cmd.ExecuteReader();
        if (dr1.HasRows)
        {
            while (dr1.Read())
            {
                if (username.Text == dr1["Username"].ToString() && userpass.Text == dr1["Password"].ToString())
                {
                    Session["uname"] = username.Text;
                    Response.Redirect("assesories.aspx");
                    
                }
            }
            MessageBox.Show("Incorrect UserName or Password");
           
            Response.Redirect("home.aspx");

        }


    }
  
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Adminpanel.Visible = false;
        Companypanel.Visible = false;
        userpanel.Visible = true;
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Adminpanel.Visible = false;
        userpanel.Visible = false;
        Companypanel.Visible = true;
        LinkButton5.Visible = true;
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        userpanel.Visible = false;
        Companypanel.Visible = false;
        Adminpanel.Visible = true;
        LinkButton5.Visible = true;

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        SqlDataReader dr3;
        string str1 = "Select Company_id,Password from Company";
        SqlCommand cmd = new SqlCommand(str1, con);
        dr3 = cmd.ExecuteReader();
        if (dr3.HasRows)
        {

            while (dr3.Read())
            {
                if (txtcomp.Text == dr3["Company_id"].ToString() && txtcompass.Text == dr3["Password"].ToString())
                {
                    Response.Redirect("Companyreg.aspx");
                }
            }
            MessageBox.Show("Incorrect Username or Password");
            Response.Redirect("home.aspx");

        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataReader dr2;
        string str1 = "Select Username,Password from Admin";
        SqlCommand cmd = new SqlCommand(str1, con);
        dr2 = cmd.ExecuteReader();
        if (dr2.HasRows)
        {

            while (dr2.Read())
            {
                if (txtadmin.Text == dr2["Username"].ToString() && adminpass.Text == dr2["Password"].ToString())
                {
                    Response.Redirect("inventory.aspx");
                }
            }
            MessageBox.Show("Incorrect UserName or Password");
            Response.Redirect("home.aspx");
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListItem j;

        DropDownList2.Items.Clear();
        DropDownList2.Items.Add("---Select---");
        //conn = new SqlConnection(constring);
        string s1 = DropDownList1.SelectedValue;
    
        string sql1 = "select distinct(item_brand) from item where product_id='" + DropDownList1.SelectedValue + "'";
        ad = new SqlDataAdapter(sql1, con);
        ad.Fill(ds, "item");
        row = ds.Tables["item"].Rows;
        foreach (DataRow dr in row)
        {
            j = new ListItem(dr["item_brand"].ToString());
            DropDownList2.Items.Add(j);

        }

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["pid"] = DropDownList1.SelectedValue.ToString();
        Session["Brnd"] = DropDownList2.SelectedValue.ToString();
        Response.Redirect("Search.aspx");
    }
    protected void forcomp_Click(object sender, EventArgs e)
    {
        LinkButton3.Visible = false;
        LinkButton4.Visible = false;
        LinkButton5.Visible = false;
        Panel6.Visible = true;
    }
    protected void forgetpass_Click(object sender, EventArgs e)
    {
        LinkButton3.Visible = false;
        LinkButton4.Visible = false;
        Panel3.Visible = true;
    }
    protected void ForAdmin_Click(object sender, EventArgs e)
    {

        LinkButton3.Visible = false;
        LinkButton4.Visible = false;
        LinkButton5.Visible = false;
        Panel5.Visible = true;
    }
   
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        
    }
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Companyreg.aspx");

    }
    protected void LinkButton6_Click1(object sender, EventArgs e)
    {
Response.Redirect("Adminreg.aspx");
    }

    //protected void AdRotator1_AdCreated(object sender, AdCreatedEventArgs e)
    //{
        
    //}
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        SqlDataReader dr5;
        string str5 = "Select username,Password from Customer where username='"+TextBox1.Text+"'";
        SqlCommand cmd5 = new SqlCommand(str5, con);
        dr5 = cmd5.ExecuteReader();
        if (dr5.HasRows)
        {

            while (dr5.Read())
            {
                if (TextBox1.Text == dr5["username"].ToString())
                {
                    Label14.Text = dr5["password"].ToString();
                
                }
                
            }

        }

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        LinkButton3.Visible = true;
        LinkButton4.Visible =true;
        Panel3.Visible =false;
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        SqlDataReader dr6;
        string str6 = "Select company_name,Password from Company where company_name='" + TextBox2.Text + "'";
        SqlCommand cmd6 = new SqlCommand(str6, con);
        dr6 = cmd6.ExecuteReader();
        if (dr6.HasRows)
        {

            while (dr6.Read())
            {
                if (TextBox2.Text == dr6["company_name"].ToString())
                {
                    Label16.Text = dr6["password"].ToString();

                }

            }

        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        LinkButton3.Visible = true;
        LinkButton4.Visible = true;
        LinkButton5.Visible = true;
        Panel6.Visible = false;

    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        SqlDataReader dr7;
        string str7 = "Select username,Password from admin where username='" + TextBox3.Text + "'";
        SqlCommand cmd7 = new SqlCommand(str7, con);
        dr7 = cmd7.ExecuteReader();
        if (dr7.HasRows)
        {

            while (dr7.Read())
            {
                if (TextBox3.Text == dr7["username"].ToString())
                {
                    Label18.Text = dr7["password"].ToString();

                }

            }

        }

    }
    protected void Button7_Click(object sender, EventArgs e)
    {

        LinkButton3.Visible = true;
        LinkButton4.Visible = true;
        LinkButton5.Visible = true;
        Panel5.Visible = false;
    }

    
}

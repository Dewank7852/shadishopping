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
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    //SqlConnection conn = new SqlConnection("server=localhost;database=ShaadiShopping;trusted_connection=true");
    string constring = ConfigurationManager.ConnectionStrings["connstring"].ToString();
    SqlConnection conn;
   
    SqlDataAdapter ad;
    SqlDataReader dr2;
    string id;
    double amt;
    double cust;
    double admin;
    int i;
double dd;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(constring);
        Label13.Visible = false;
        
        //string a=tex
        Panel4.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        GridView1.DataSource = catalog.getdata();
        this.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MessageBox.Show("Is filled information is correct?", "Shipping Information", MessageBoxButtons.OKCancel);
       
        
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

        
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
    //    Panel3.Visible = true;
    //    DataTable tb = catalog.calculatprice();
    //    ViewState["tbs"] = tb;
    //    GridView2.DataSource = catalog.calculatprice();
    //    //(DataTable)Session["datatb"] = catalog.calculatprice();
    //    this.DataBind();
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        string sql = "select Order_id from order1 order by order_id desc";
        SqlDataAdapter ad = new SqlDataAdapter(sql, conn);
        DataSet ds = new DataSet("order1");
        ds.Clear();
        ad.Fill(ds, "order1");
        if (ds.Tables["order1"].Rows.Count == 0)
        {
            id = "o-001";
        }
        else
        {
            int ap;
            object[] arr = ds.Tables["order1"].Rows[0].ItemArray;
            id = arr[0].ToString();
            char s;
            s = Convert.ToChar(id.Substring(0, 1));
            ap = Convert.ToInt32(s);
            i = Convert.ToInt32(id.Substring(2));
            if (i == 999)
            {
                int apint = ap;
                apint = apint + 1;
                if (apint > 79 && apint < 90)
                {
                    id = Convert.ToChar(apint) + "-001";
                }
            }
            else
            {
                i = i + 1;
                if (i >= 0 && i <= 9)
                    id = Convert.ToChar(ap) + "-00" + i.ToString();
                else if (i > 9 && i <= 99)
                    id = Convert.ToChar(ap) + "-0" + i.ToString();
                else if (i > 99 && i < 999)
                    id = Convert.ToChar(ap) + "-" + i.ToString();
            }



        }
        txtoid.Text = id;
        
        
        
        
        Panel3.Visible = false;
        Panel2.Visible = true;
        conn.Open();
        SqlDataReader dr1;
        
        string str = "Select tax,discount from inventory";
        SqlCommand cmd = new SqlCommand(str, conn);
        dr1 = cmd.ExecuteReader();
        if (dr1.HasRows)
        {
            while (dr1.Read())
            {
                txttax.Text = dr1["tax"].ToString();
                
                txtdiss.Text = dr1["discount"].ToString();
            }

        }
        
        DataTable tc = catalog.calculatprice();
        int r1 = tc.Rows.Count;
        DataTable tb1 = (DataTable)ViewState["tbs"];
        int j = 0;
        string tp = "";
        while (j < r1 - 1)
        {
            tp = tb1.Rows[j][4].ToString();
            j++;

        }
        txtamt.Text = tp;
        double t = Convert.ToDouble(txttax.Text);
        double d = Convert.ToDouble(txtdiss.Text);
         amt =Convert.ToDouble(tp.ToString());
        amt = amt - ((amt / 100) * d);
        amt = amt + ((amt / 100) * t);
        txtpay.Text= amt.ToString();
        dr1.Close();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        foreach (GridView k in GridView2.Rows)
        {
            string h = k.Columns[0].ToString();
        }

    }
    protected void Button1_Click2(object sender, EventArgs e)
    {
        conn.Open();

       
        string str1 = "Select acc_no,ccno,cctype,avail_balance,day(cc_expiredate),month(cc_expiredate),year(cc_expiredate) from Payment where cust_id='"+txtcustid.Text+"'";
        SqlCommand cmd = new SqlCommand(str1, conn);
        dr2 = cmd.ExecuteReader();

        if (dr2.HasRows)
        {
            while (dr2.Read())
            {
                if ((txtacc.Text == dr2["acc_no"].ToString().Trim()) && (txtccno.Text == dr2["ccno"].ToString().Trim()) && (txtctype.Text == dr2["cctype"].ToString().Trim()))
                {
                    dd = Convert.ToDouble(dr2["avail_balance"].ToString());
                    int d = DateTime.Now.Day;
                    int y = DateTime.Now.Year;
                    int m = DateTime.Now.Month;
                    if (y < Convert.ToInt32(dr2[6].ToString().Trim()))
                    {
                       
                        purchase();
                       
                    }

                    else if (y == Convert.ToInt32(dr2[6].ToString().Trim()))
                    {
                        purchase();
                    }
                    else
                    {
                        if (m < Convert.ToInt32(dr2[5].ToString().Trim()))
                        {
                            purchase();
                        }
                        else if (m == Convert.ToInt32(dr2[5].ToString().Trim()))
                        {
                            purchase();
                        }
                        else
                        {
                            if (d < Convert.ToInt32(dr2[4].ToString().Trim()))
                            {
                                purchase();
                            }
                            else if (d == Convert.ToInt32(dr2[4].ToString().Trim()))
                            {
                                purchase();
                            }
                            else
                            {
                                Label13.Text = "invalid";

                            }
                        }
                    }
                }
                break;
            }
            
        }
        Label13.Text = "Transaction Has been successfully comleted";
        Panel1.Visible = false;
        Label13.Visible = true;
        Panel4.Visible = true;
        Session["ord"] = txtoid.Text;
        TextBox1.Text = txtoid.Text;
        TextBox2.Text = txtcustid.Text;
        TextBox3.Text = txtamt.Text;
        TextBox4.Text = txtdiss.Text;
        TextBox5.Text = txttax.Text;
        TextBox6.Text = txtpay.Text;
        Session["ord"] = txtoid.Text;
    }
            

    public void purchase()
    {
        dr2.Close();
        double p = Convert.ToDouble(txtpay.Text);
      if (p <=dd)
      {
          DataTable tab = catalog.calculatprice();
          int r = tab.Rows.Count;
          DataTable tb1 = (DataTable)ViewState["tbs"];
          int j = 0;
          string tt = "";
          while (j < r - 1)
          {
              tt = tb1.Rows[j][4].ToString();
              j++;

          }

          string str2 = "Insert into order1 values('" + txtoid.Text + "','" + txtcustid.Text + "','" + txtpay.Text + "','" + DateTime.Now.ToShortDateString() + "','" + txtshipadd.Text + "','" + txtcontect.Text + "')";
          SqlCommand cmd1 = new SqlCommand(str2, conn);
          cmd1.ExecuteNonQuery();
          int i = 0;
          while (i < r - 1)
          {
              string pname = tb1.Rows[i][0].ToString();
              string brand = tb1.Rows[i][1].ToString();
              string price = tb1.Rows[i][2].ToString();
              string quant = tb1.Rows[i][3].ToString();
              string tot = tb1.Rows[i][4].ToString();

              string sql = "insert into orderdetail values('" + txtoid.Text + "','" + pname + "','" + brand + "','" + price + "','" + quant + "','" + tot + "')";
              SqlCommand cmd = new SqlCommand(sql, conn);
              cmd.ExecuteNonQuery();
              i++;
          }
          string str3 = "Select avail_balance from payment where acc_no='" + txtacc.Text + "'";
          string str4 = "Select avail_balance from payment where acc_no='124'";
          SqlCommand cmd3 = new SqlCommand(str3, conn);
          SqlCommand cmd4 = new SqlCommand(str4, conn);
          SqlDataReader dr3;
          SqlDataReader dr4;
          dr3=cmd3.ExecuteReader();
          
          if (dr3.HasRows)
          {
              while (dr3.Read())
              {
                cust = Convert.ToDouble(dr3["avail_balance"].ToString().Trim());
              }
          }
          dr3.Close();
          dr4 = cmd4.ExecuteReader();
          if (dr4.HasRows)
          {
              while (dr4.Read())
              {
                  admin = Convert.ToDouble(dr4["avail_balance"].ToString().Trim());
              }
          }
          dr4.Close();

          amt = Convert.ToDouble(txtpay.Text);
          cust = cust - amt;
          admin = admin + amt;
          
          string cs="update payment set Avail_balance='"+cust+"' where Acc_no='"+txtacc.Text+"'";
          string ad="update payment set Avail_balance='"+admin+"' where Acc_no='124'";
          SqlCommand cmdcs = new SqlCommand(cs, conn);
          SqlCommand cmdad = new SqlCommand(ad, conn);
          cmdcs.ExecuteNonQuery();
          cmdad.ExecuteNonQuery();
    }
    }
    protected void Button1_Click4(object sender, EventArgs e)
    {

        Panel3.Visible = true;
        DataTable tb = catalog.calculatprice();
        ViewState["tbs"] = tb;
        GridView2.DataSource = catalog.calculatprice();
        //(DataTable)Session["datatb"] = catalog.calculatprice();
        this.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["uname"] =null;
        Response.Redirect("home.aspx");
    }
}


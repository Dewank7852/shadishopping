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
using System.Web.Configuration;
using System.Data.SqlClient;


public partial class Default2 : System.Web.UI.Page
{
    string constring = ConfigurationManager.ConnectionStrings["connstring"].ToString();
    SqlConnection Conn;
    SqlCommand cmd;
    string sql;
    DataSet ds = new DataSet("ShaadiShopping");
    string id;
    int i;
   protected void Page_Load(object sender, EventArgs e)
    {
        Conn = new SqlConnection(constring);
        for (i = 1; i <= 31; i++)
        {
            
            dddate.Items.Add(i.ToString ());
        }
        for (i = 1950; i <= 2009; i++)
        {
            ddyear.Items.Add(i.ToString());
        }
        sql = "select Cust_id from Customer order by Cust_id desc";
        SqlDataAdapter ad = new SqlDataAdapter(sql, Conn);
        ds.Clear();
        ad.Fill(ds, "Customer");
        if (ds.Tables["Customer"].Rows.Count == 0)
        {
            id = "C-001";
        }
        else
        {
            int ap;
            object[] arr = ds.Tables["Customer"].Rows[0].ItemArray;
            id = arr[0].ToString();
            char s;
            s = Convert.ToChar(id.Substring(0, 1));
            ap = Convert.ToInt32(s);
            i = Convert.ToInt32(id.Substring(2));
            if (i == 999)
            {
                int apint = ap;
                apint = apint + 1;
                if (apint > 67 && apint < 90)
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
        txtcust .Text = id;
                              
   
        //if (!Page.IsPostBack)
        //{
        //    HiddenField h=new HiddenField();
      
        //    for (i = 1; i <= 31; i++)
        //    {
        //        dddate.Items.Add(i.ToString());
        //    }
        //    for (j = 1950; j <= 2000; j++)
        //    {
        //        ddyear.Items.Add(j.ToString());
        //    }
        //}

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //Session ["fname"]=txtfna .Text ;
        //Session["lname"] = txtlna.Text;
        //Session["date"] = dddate.Text;
        //Session["month"] = ddmonth.Text;
        //Session["year"] = ddyear.Text;
        //if (rdmale.Checked == true)
        //{
        //    Session["gender"] = rdmale.Text;
        //}
        //else
        //{
        //    Session["gender"] = rdfemale.Text;
        //}
        //Session["email"] = Txtemail.Text;
        //Session["address"] = Txtadd.Text;
        //Session["country"] = ddcoun.Text;
        //Session["state"] = txtstate.Text;
        //Session["city"] = txtcity.Text;
        //Session["contact"] = Txtmob.Text;
        //Session["zip"] = txtzip.Text;
        //Response.Redirect("custreg2.aspx");
         }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection Conn = new SqlConnection(constring);
        Conn.Open();
        cmd = new SqlCommand("insert_cust", Conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Username", txtuname.Text);
        cmd.Parameters.AddWithValue("@Password", txtpass.Text);
        //cmd.Parameters.AddWithValue("@Cust_id", txtcust.Text);
        cmd.Parameters.AddWithValue("@Firstname", txtfna.Text);
        cmd.Parameters.AddWithValue("@Lastname", txtlna.Text);
        string dd = ddmonth.Text.ToString() + "/"+ dddate.Text.ToString()+  "/" + ddyear.Text.ToString();
        cmd.Parameters.AddWithValue("@DOB", Convert.ToDateTime(dd));
        if (rdmale.Checked == true)
        {
            cmd.Parameters.AddWithValue("@Gender", rdmale.Text);
           
        }
        else
        {
            cmd.Parameters.AddWithValue("@Gender", rdfemale.Text);
        }
        
        cmd.Parameters.AddWithValue("@Email_id",Txtemail.Text);
        cmd.Parameters.AddWithValue("@Address", Txtadd.Text);
        cmd.Parameters.AddWithValue("@Country", ddcoun.Text);
        cmd.Parameters.AddWithValue("@State", txtstate.Text);
        cmd.Parameters.AddWithValue("@City", txtcity.Text);
        cmd.Parameters.AddWithValue("@Postal_zip", txtzip.Text);
        cmd.Parameters.AddWithValue("@Contactno", Txtmob.Text);
        cmd.Parameters.AddWithValue("@cust_id", txtcust.Text);
        cmd.ExecuteNonQuery();
        txtfna.Text = "";
        txtlna.Text = "";
        dddate.Text = "Day";
        ddmonth.Text = "Month";
        ddyear.Text = "Year";
        rdmale.Checked = false;
        rdfemale.Checked = false;
        Txtemail.Text = "";
        Txtadd.Text = "";
        ddcoun.Text = "Country";
        txtstate.Text = "";
        txtzip.Text = "";
        Txtmob.Text = "";
        txtuname.Text = "";
        txtpass.Text = "";
        txtcity.Text = "";
        ddcoun.SelectedIndex =0;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        txtfna.Text = "";
        txtlna.Text = "";
        dddate.Text = "Day";
        ddmonth.Text = "Month";
        ddyear.Text = "Year";
        rdmale.Checked = false;
        rdfemale.Checked = false;
        Txtemail.Text = "";
        Txtadd.Text = "";
        ddcoun.Text = "Country";
        txtstate.Text = "";
        txtzip.Text = "";
        Txtmob.Text = "";
        txtuname.Text = "";
        txtpass.Text = "";
        txtcity.Text = "";
        ddcoun.SelectedIndex = 0;



    }
   
    protected void Button3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}

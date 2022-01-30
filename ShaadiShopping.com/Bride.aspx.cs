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
using System.Data.SqlTypes;
using System.Windows.Forms;
 
public partial class Groom : System.Web.UI.Page
{
    string constring = ConfigurationManager.ConnectionStrings["connstring"].ToString();
    SqlDataAdapter ad;
    SqlConnection conn;
    DataSet ds = new DataSet("Inventory");
    DataRowCollection row;
       
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            GridView1.Visible = false;
            ListItem i;
            ddpname.Items.Clear();
            ddpname.Items.Add("---Select---");
            conn = new SqlConnection(constring);
           string  sql = "select product_name,product_id from Inventory where category='Bride'";
            ad = new SqlDataAdapter(sql, conn);
            ad.Fill(ds, "inventory");
            row = ds.Tables["Inventory"].Rows;
            foreach (DataRow dr in row)
            {
                i = new ListItem(dr["product_name"].ToString(), dr["product_id"].ToString()); 
                ddpname.Items.Add(i);

            }

           


        }
    
          
    }
   
    
    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["indexer"] = GridView1.SelectedIndex;
        ((System.Web.UI.WebControls.DropDownList)(GridView1.Rows[GridView1.SelectedIndex].FindControl("quantity"))).Visible = true;
        ((System.Web.UI.WebControls.Button)(GridView1.Rows[GridView1.SelectedIndex].FindControl("bt"))).Visible = true;
        ((System.Web.UI.WebControls.Button)(GridView1.Rows[GridView1.SelectedIndex].FindControl("Button1"))).Visible = false;
    }

    protected void addtocart(object sender, EventArgs e)
    {
      //  string prodname;

        ((System.Web.UI.WebControls.DropDownList)(GridView1.Rows[Convert.ToInt32(Session["indexer"])].FindControl("quantity"))).Visible =false;
        ((System.Web.UI.WebControls.Button )(GridView1.Rows[Convert.ToInt32(Session["indexer"])].FindControl("bt"))).Visible = false ;
        ((System.Web .UI.WebControls.Button)(GridView1.Rows[Convert.ToInt32(Session["indexer"])].FindControl("Button1"))).Visible = true ;
        string prodname = ((System.Web.UI.WebControls.Label)(GridView1.Rows[Convert.ToInt32(Session["indexer"])].FindControl("Label4"))).Text;
        string brand = ((System.Web.UI.WebControls.Label)(GridView1.Rows[Convert.ToInt32(Session["indexer"])].FindControl("Label1"))).Text;
        string sellingprice = ((System.Web.UI.WebControls.Label)(GridView1.Rows[Convert.ToInt32(Session["indexer"])].FindControl("Label2"))).Text;
        string idtem = ((System.Web.UI.WebControls.Label)(GridView1.Rows[Convert.ToInt32(Session["indexer"])].FindControl("Label3"))).Text;
        string quantity = ((System.Web.UI.WebControls.DropDownList)(GridView1.Rows[Convert.ToInt32(Session["indexer"])].FindControl("quantity"))).SelectedValue;
        GridView2.DataSource = catalog.addtocart(prodname, brand, quantity, idtem, sellingprice);
       this.DataBind();
       GridView2.DataBind();
       GridView1.Visible = true;
       //GridView1.DataBind();       
    
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.Visible = true;

        Session["proid"] = ddpname.SelectedValue.ToString();
        GridView1.DataBind();
        
        groom1.Visible = false;
        //string sql = "select * from item Where product_id='" + DropDownList1.SelectedValue.ToString() + "'";
        //conn = new SqlConnection(constring);
        //ad = new SqlDataAdapter(sql, conn);
        //ad.Fill(ds, "In");
        //GridView1.DataSource = ds.Tables["in"];
        //GridView1.DataBind();
      

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect(@"~\Default2.aspx");  
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
       // MessageBox.Show(GridView2.SelectedIndex.ToString()); 
     
       GridView2.DataSource =  catalog.del  (GridView2.SelectedIndex  );
       GridView2.DataBind(); 
    }
    
    protected void Button3_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(constring);
        con.Open();
        //string constring1 = @"Data Source=.;Initial Catalog=ShaadiShopping;Integrated Security=True";
        SqlDataReader dr;
            string str3 = "Select Product_name from Inventory where product_id='" + ddpname.SelectedValue + "'";
        SqlCommand cmd1 = new SqlCommand(str3, con);
        
        
        
        dr = cmd1.ExecuteReader();
        if (dr.HasRows)
        {
        string prodname = dr["Product_name"].ToString();
            //GridView2.DataSource = catalog.addtocart(prodname, brand, quantity, idtem, sellingprice);
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["uname"] = "";
        Response.Redirect("home.aspx");
    }
}
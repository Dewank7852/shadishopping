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
using System.Text ;
public partial class inventory : System.Web.UI.Page
{
    string constring = ConfigurationManager.ConnectionStrings["connstring"].ToString();
    SqlConnection conn; 
    SqlCommand cmd;
    SqlDataAdapter ad;
    
    DataSet ds= new DataSet("Inventory");
    string sql;
    DataRowCollection row;
    DataRowCollection row1;
    string id;
    int i;
   DataRow r;
    //DataRowCollection r;
    protected void Page_Load(object sender, EventArgs e)
    {
 
        if (!IsPostBack)
            
        {
               
            Panel3.Visible = false;
            txtimg.Visible = false;
            ddpna.Items.Clear();
            ddpna.Items.Add("---Select---");
            ddiid.Items.Add("--select--");
            ddcomp.Items.Add("--select--");
            conn = new SqlConnection(constring);
            sql = "select * from Inventory";
            ad = new SqlDataAdapter(sql, conn);
            ad.Fill(ds, "Inventory");
            row = ds.Tables["Inventory"].Rows;
            foreach (DataRow dr in row)
            {
                ddpna.Items.Add(dr["product_name"].ToString());
            }

            ddpna.Items.Add("New");
            string sql1 = "select company_id from Company";
            DataSet ds1 = new DataSet("company");
            SqlDataAdapter ad1 = new SqlDataAdapter(sql1, conn);
            ad1.Fill(ds1, "Company");
            row1 = ds1.Tables["Company"].Rows;
            foreach (DataRow dr1 in row1)
            {
                ddcomp.Items.Add(dr1["Company_id"].ToString());
            }

            
        }
    }
    
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
       // DropDownList2.Items.Clear();
        //DropDownList2.Items.Add("---Select---");   

        
        //string a;
        if (ddpna.SelectedItem.Text == "New")
        {
            txtprona.Visible = true;
            txtiid.Visible = true;
            ddpna.Visible = false;
            ddiid.Visible = false;
            txtprona.Text = "";
            txtpid.Text = "";
            txtcat.Text = "";
            txtpp.Text = "";
            txtsp.Text = "";
            txtstock.Text = "";
            txtupdate.Text = "";

            conn = new SqlConnection(constring);
            conn.Open();
            string sql1 = "select Product_id from inventory order by Product_id desc";
            SqlDataAdapter ad1 = new SqlDataAdapter(sql1, conn);
            DataSet ds1 = new DataSet("inventory");
            
            ds1.Clear();
            ad1.Fill(ds1, "inventory");
            if (ds1.Tables["inventory"].Rows.Count == 0)
            {
                id = "p001";
            }
            else
            {
                int ap;
                object[] arr = ds1.Tables["inventory"].Rows[0].ItemArray;
                id = arr[0].ToString();
                char s;
                s = Convert.ToChar(id.Substring(0, 1));
                ap = Convert.ToInt32(s);
                i = Convert.ToInt32(id.Substring(2));
                if (i == 999)
                {
                    int apint = ap;
                    apint = apint + 1;
                    if (apint > 80 && apint < 90)
                    {
                        id = Convert.ToChar(apint) + "-001";
                    }
                }
                else
                {
                    i = i + 1;
                    if (i >= 0 && i <= 9)
                        id = Convert.ToChar(ap) + "00" + i.ToString();
                    else if (i > 9 && i <= 99)
                        id = Convert.ToChar(ap) + "0" + i.ToString();
                    else if (i > 99 && i < 999)
                        id = Convert.ToChar(ap) + "" + i.ToString();
                }



            }
            txtpid.Text = id;


        }
        else
        {
            txtprona.Visible = false;
            txtiid.Visible = false;
        }

        ds.Clear();
        string sql = "select Product_Id from Inventory Where Product_Name='" + ddpna.SelectedItem.Text + "'";
       // string sql = "select * from Inventory Where Product_Name='" + ddpna.SelectedItem.Text + "'";
       
        conn = new SqlConnection(constring); 
 
        ad = new SqlDataAdapter(sql, conn);
        ad.Fill(ds, "In");
        foreach (DataRow r in ds.Tables["In"].Rows)
        {
            txtpid.Text = r["Product_id"].ToString();
                       /*TextBox1 .Text  = r["Category"].ToString(); 
            txtpp.Text = r["Item_pprice"].ToString();
            txtsp.Text = r["Item_sprice"].ToString();
            txtstock.Text = r["Stock_in_hand"].ToString();
            txtupdate.Text = r["Last_update"].ToString(); */
        }
        sql = "select Item_id from Item Where Product_Id='" + txtpid.Text + "'";
        conn = new SqlConnection(constring);
        ad = new SqlDataAdapter(sql, conn);
        ad.Fill(ds, "Item");
        foreach (DataRow r in ds.Tables["Item"].Rows)
        {
            ddiid.Items.Add(r["Item_Id"].ToString());
        }


        
        
    }
   
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        //sql = "select * from Inventory Where Product_Id='" + txtpid.Text + "'";    
        //conn = new SqlConnection(constring); 
        //ad = new SqlDataAdapter(sql, conn);
        //ad.Fill(ds, "In");
        //foreach (DataRow r in ds.Tables["In"].Rows)
        //{
        // txtpid.Text = r["Product_Id"].ToString();
        //    txtcat.Text = r["Category"].ToString();
        //    //txtpp.Text = r["Item_pprice"].ToString();
        //   //txtsp.Text = r["Item_sprice"].ToString();
        //    //txtstock.Text = r["Stock_in_hand"].ToString();
        //    txtupdate.Text = r["Last_update"].ToString();


        //}
        //sql = "select * from Item Where Item_id='" + ddiid .SelectedItem .Text  + "'";
        //conn = new SqlConnection(constring);
        //ad = new SqlDataAdapter(sql, conn);
        //ad.Fill(ds, "Item");
        //foreach (DataRow r in ds.Tables["Item"].Rows)
        //{
        //    txtbrand .Text = r["Item_brand"].ToString();
        //    txtquan.Text = r["quantity"].ToString();
        //    txtprona.Text = r["Product_name"].ToString();
            
        //}
    }
    protected void butsubmit_Click(object sender, EventArgs e)
    {
        string img = ("~\\images\\" + FileUpload1.FileName);
        SqlTransaction tr;
        SqlConnection Conn = new SqlConnection(constring);
        Conn.Open();
            tr = Conn.BeginTransaction();
            try
            {
                cmd = new SqlCommand("insert_inventory_info", Conn, tr);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Product_name", txtprona.Text);
                cmd.Parameters.AddWithValue("@Product_id", txtpid.Text);
                cmd.Parameters.AddWithValue("@Category", txtcat.Text);
                cmd.Parameters.AddWithValue("@Tax", txttax.Text);
                cmd.Parameters.AddWithValue("@Discount", txtdiss.Text);
                cmd.Parameters.AddWithValue("@Last_update", txtupdate.Text);
                cmd.ExecuteNonQuery();
                cmd = new SqlCommand("item_insert", Conn, tr);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Item_id", txtiid.Text);
                cmd.Parameters.AddWithValue("@Item_brand", txtbrand.Text);
                cmd.Parameters.AddWithValue("@Item_image", img);
                cmd.Parameters.AddWithValue("@Item_pprice", txtpp.Text);
                cmd.Parameters.AddWithValue("@Item_sprice", txtsp.Text);
                cmd.Parameters.AddWithValue("@Product_name", txtprona.Text);
                cmd.Parameters.AddWithValue("@Quantity", txtstock.Text);
                //cmd.Parameters.AddWithValue("@Item_price", txtsp.Text);
               cmd.Parameters.AddWithValue("@Product_id", txtpid.Text);
                cmd.ExecuteNonQuery();
                tr.Commit();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                tr.Rollback();
            }
            finally
            {
                Conn.Close();
                clear();
            }
    }
    protected void butreset_Click(object sender, EventArgs e)
    {
        
       // string img1 = Server.MapPath(FileUpload1.FileName);
       
        clear();
    }
    public void clear()

    {
        ddpna.SelectedIndex = 0;
        ddiid.SelectedIndex = 0;

        //ddiid.SelectedIndex;
        //ddpna.Items.Add("--Select--");
        txtprona.Text = "";
        txtpid.Text = "";
        txtcat.Text = "";
        txtpp.Text = "";
        txtsp.Text = "";
        txtstock.Text = "";
        txtimg.Text = "";
        txtupdate.Text = "";
        txtdiss.Text = "";
        txttax.Text = "";
        txtbrand.Text = "";
        Image1.ImageUrl = "";
    }
//    protected void Button1_Click1(object sender, EventArgs e)
//    {
//        ddpna.Visible = false;
        
//        txtprona.Visible = true;
////        TextBox2.Visible = true;
//    }

    protected void txtsp_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtstock_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ddiid_SelectedIndexChanged(object sender, EventArgs e)
    {
        FileUpload1.Visible = false;
        
        
        sql = "select * from Inventory Where Product_Id='" + txtpid.Text + "'";
        conn = new SqlConnection(constring);
        ad = new SqlDataAdapter(sql, conn);
        ad.Fill(ds, "In");
        foreach (DataRow r in ds.Tables["In"].Rows)
        {
            txtimg.Visible = true;
            //txtpid.Text = r["Product_Id"].ToString();
            txtcat.Text = r["Category"].ToString();
            txttax.Text = r["tax"].ToString();
            txtdiss.Text = r["discount"].ToString();
           // txtpp.Text = r["Item_pprice"].ToString();
            //txtsp.Text = r["Item_sprice"].ToString();
            //txtstock.Text = r["Stock_in_hand"].ToString();
            txtupdate.Text = r["Last_update"].ToString();
        }
        sql = "select * from Item Where Item_id='" + ddiid.SelectedItem.Text + "'";
        conn = new SqlConnection(constring);
        ad = new SqlDataAdapter(sql, conn);
        ad.Fill(ds, "Item");
        foreach (DataRow r in ds.Tables["Item"].Rows)
        {
            txtbrand.Text = r["Item_brand"].ToString();
            txtimg.Text = r["Item_image"].ToString();
            txtstock.Text = r["quantity"].ToString();
            txtpp.Text = r["Item_pprice"].ToString();
            txtsp.Text = r["Item_sprice"].ToString();
            Image1.ImageUrl = txtimg.Text;
            

            //  txtsize.Text = r["PRODUCT"].ToString();
        }
       /* sql = "select * from Inventory Where Product_Id='" + txtpid.Text + "'";    
        conn = new SqlConnection(constring); 
        ad = new SqlDataAdapter(sql, conn);
        ad.Fill(ds, "In");
        foreach (DataRow r in ds.Tables["In"].Rows)
        {
            txtpid.Text = r["Product_Id"].ToString();
            txtcat.Text = r["Category"].ToString();
            txtpp.Text = r["Item_pprice"].ToString();
          txtsp.Text = r["Item_sprice"].ToString();
            txtstock.Text = r["Stock_in_hand"].ToString();
            txtupdate.Text = r["Last_update"].ToString();


        }
        sql = "select * from Item Where Item_id='" + ddiid .SelectedItem .Text  + "'";
        conn = new SqlConnection(constring);
        ad = new SqlDataAdapter(sql, conn);
        ad.Fill(ds, "Item");
        foreach (DataRow r in ds.Tables["Item"].Rows)
        {
            txtbrand .Text = r["Item_brand"].ToString();
            txtquan.Text = r["quantity"].ToString();
            txtsize .Text = r["size_weight"].ToString();
        }*/
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        SqlTransaction tr;


        SqlConnection conn = new SqlConnection(constring);

        conn.Open();
        tr = conn.BeginTransaction();
        try
        {
            conn = new SqlConnection(constring);
            conn.Open();
            cmd = new SqlCommand("item_delete", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Item_id", ddiid.Text);
            cmd.ExecuteNonQuery();
            tr.Commit();
        }
        catch (Exception ex)
        {                                                   
            Response.Write(ex.Message);
            tr.Rollback();
        }
        finally
        {
            conn.Close();
            clear();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlTransaction tr;
        SqlConnection Conn = new SqlConnection(constring);
        Conn.Open();
            tr = Conn.BeginTransaction();
            try
            {
                cmd = new SqlCommand("info_update", Conn, tr);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Product_name", ddpna.Text);
                cmd.Parameters.AddWithValue("@Product_id", txtpid.Text);
                cmd.Parameters.AddWithValue("@Category", txtcat.Text);
                cmd.Parameters.AddWithValue("@Tax", txttax.Text);
                cmd.Parameters.AddWithValue("@Discount", txtdiss.Text);
                cmd.Parameters.AddWithValue("@Last_update", txtupdate.Text);
                cmd.ExecuteNonQuery();
                cmd = new SqlCommand("item_update", Conn, tr);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Item_id", ddiid.Text);
                cmd.Parameters.AddWithValue("@Item_brand", txtbrand.Text);
                cmd.Parameters.AddWithValue("@Item_image", FileUpload1.FileName);
                cmd.Parameters.AddWithValue("@Item_pprice", txtpp.Text);
                cmd.Parameters.AddWithValue("@Item_sprice", txtsp.Text);
                cmd.Parameters.AddWithValue("@Product_name", txtprona.Text);
                cmd.Parameters.AddWithValue("@Quantity", txtstock.Text);
                //cmd.Parameters.AddWithValue("@Item_price", txtsp.Text);
               cmd.Parameters.AddWithValue("@Product_id", txtpid.Text);
                cmd.ExecuteNonQuery();
                tr.Commit();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                tr.Rollback();
            }
            finally
            {
                Conn.Close();
                clear();
            }


    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
    }
    protected void ddcomp_SelectedIndexChanged(object sender, EventArgs e)
    {
       String sql2 = "select Add_image,Company_URL from Company Where Company_Id='" + ddcomp.SelectedItem.Text + "'";
        conn = new SqlConnection(constring);
        ad = new SqlDataAdapter(sql2, conn);
        ad.Fill(ds, "In");
        foreach (DataRow r in ds.Tables["In"].Rows)
        {
            TextBox1.Text = r["Add_image"].ToString();
            TextBox2.Text = r["Company_URL"].ToString();
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Session["image"] = TextBox1.Text;
        //Session["image"] = "~/images/a2.gif";
        Session["url"] = TextBox2.Text;
    }
}

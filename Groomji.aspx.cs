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
public partial class Groom : System.Web.UI.Page
{//public int i;
   // public static int j;
    //string []a=new string[25];
    protected void Page_Load(object sender, EventArgs e)
    {
        visibility();


    }
    public void visibility()
    {
        Image2.Visible = false;
        Image3.Visible = false;
        Image4.Visible = false;
        Image5.Visible = false;
        Image6.Visible = false;
        Image1.Visible = false;
        Label1.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label2.Visible = false;
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        
        string str = " Select Item_image,Item_sprice,Item_brand from Item where Product_id='p010'";
        string str1 = "select count(Item_id )from Item where product_id='p010'";
       puneet(str,str1);             
    }
    public void puneet(string p, string Q)
    {
           groom1.Visible = false;
        Image2.Visible = true;
        Image3.Visible = true;
        Image4.Visible = true;
        Image5.Visible = true;
        Image6.Visible = true;
        Image1.Visible = true;
        Label1.Visible = true;
        Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        Label6.Visible = true;
        Label2.Visible = true;
        
   

                SqlConnection cn = new SqlConnection("server=localhost;database=ShaadiShopping;trusted_connection=true");
        cn.Open();
        SqlDataReader dr1;
        //string str = " Select Item_image,Item_price from Item where Product_id='p'";
        //string str1 = "select count(Item_id )from Item where product_id=p";
        SqlCommand cmd1 = new SqlCommand(p, cn);
        SqlCommand cmd2 = new SqlCommand(Q, cn);
         int i = (int)cmd2.ExecuteScalar();
        //j = i;
        
        dr1 = cmd1.ExecuteReader();
        if (i < 6)
        {
            int a = 6 - i;
            switch (a)
            {
                case 1:
                    Image6.Visible = false;
                    break;
                case 2:
                    Image6.Visible = false;
                    Image5.Visible = false;

                    break;
                case 3:
                    Image6.Visible = false;
                    Image5.Visible = false;
                    Image4.Visible = false;
                    break;
                case 4:
                    Image6.Visible = false;
                    Image5.Visible = false;
                    Image4.Visible = false;
                    Image3.Visible = false;
                    break;
                case 5:
                    Image6.Visible = false;
                    Image5.Visible = false;
                    Image4.Visible = false;
                    Image3.Visible = false;
                    Image2.Visible = false;
                    break;


                default:
                    break;
            }
        }
        
        //while (i > 0)
        //{
            
        //    dr1.Read();
        //    a[i] = dr1["Item_image"].ToString();
        //    i--;
        //}
        while (i > 0)
        {


            switch (i)
            {
                case 1:
                    dr1.Read();
                    Image1.ImageUrl = dr1["Item_image"].ToString();
                    Label1.Text = dr1["Item_brand"].ToString() + "," + dr1["Item_sprice"].ToString();
                    break;
                case 2:
                    dr1.Read();
                    Image2.ImageUrl = dr1["Item_image"].ToString();
                    Label2.Text = dr1["Item_brand"].ToString() + "," + dr1["Item_sprice"].ToString();
                    break;
                case 3:
                    dr1.Read();
                    Image3.ImageUrl = dr1["Item_image"].ToString();
                    Label3.Text = dr1["Item_brand"].ToString() + "," + dr1["Item_sprice"].ToString();
                    break;
                case 4:
                    dr1.Read();
                    Image4.ImageUrl = dr1["Item_image"].ToString();
                    Label4.Text = dr1["Item_brand"].ToString() + "," + dr1["Item_sprice"].ToString();
                    break;
                case 5:
                    dr1.Read();
                    Image5.ImageUrl = dr1["Item_image"].ToString();
                    Label5.Text = dr1["Item_brand"].ToString() + "," + dr1["Item_sprice"].ToString();
                    break;
                case 6:
                    dr1.Read();
                    Image5.ImageUrl = dr1["Item_image"].ToString();
                    Label5.Text = dr1["Item_brand"].ToString() + "," + dr1["Item_sprice"].ToString();
                    break;
                default:
                    //int j = i - 6;

                    i = 7;
                    //groom1.Visible = true;
                    break;
            }
            i--;
        }

    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {

        string str = " Select Item_image,Item_sprice,Item_brand from Item where Product_id='p008'";
        string str1 = "select count(Item_id )from Item where product_id='p008'";
        puneet(str, str1);         
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {

        string str = " Select Item_image,Item_sprice,Item_brand from Item where Product_id='p009'";
        string str1 = "select count(Item_id )from Item where product_id='p009'";
        puneet(str, str1);         
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

        string str = " Select Item_image,Item_sprice,Item_brand from Item where Product_id='p010'";
        string str1 = "select count(Item_id )from Item where product_id='p010'";
        puneet(str, str1);         
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        string str = " Select Item_image,Item_sprice,Item_brand from Item where Product_id='p011'";
        string str1 = "select count(Item_id )from Item where product_id='p011'";
        puneet(str, str1);         
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {


        //Image1.ImageUrl = a[1];
       
    }
    
}
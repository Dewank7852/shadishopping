using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient ;
/// <summary>
/// Summary description for catalog
/// </summary>
public static class catalog
{
    static DataTable dt;
    static DataTable dtprice;
    static Double sum = 0.0;
    static SqlCommand cmd;
    static string connstring = ConfigurationManager.ConnectionStrings["connstring"].ToString();
    static catalog()
    {

        dt = new DataTable();
        DataColumn c0 = new DataColumn("Product Name");
        dt.Columns.Add(c0);
        DataColumn c1 = new DataColumn("Brand");
        dt.Columns.Add(c1);
        DataColumn c2 = new DataColumn("Price");
        dt.Columns.Add(c2);
        DataColumn c3 = new DataColumn("Qty");
        dt.Columns.Add(c3);
        DataColumn c4 = new DataColumn("Item id");
        dt.Columns.Add(c4);

        //
        // TODO: Add constructor logic here
        //
    }

    public static DataTable addtocart(string prodname,string brand, string quantity, string itemid, string price)
    {
        DataRow r = dt.NewRow();
        r["Product Name"] = prodname;
        r["Brand"] = brand;
        r["Qty"] = quantity;
        r["Item id"] = itemid;
        r["Price"] = price;
        dt.Rows.Add(r);
        return dt;
    }

    public static DataTable getdata()
    {
        return dt;
    }
    public static DataTable del(int i)
    {

        //r["GridView2.SelectedIndex.ToString()"]
        //DataRow r;
        //int j = i;

        //i=GridView2.SelectedIndex.ToString();
        dt.Rows[i].Delete();
        dt.AcceptChanges();
        return dt;
    }
    public static DataTable calculatprice()
   {
        int sumq = 0;
        dtprice = new DataTable();
        //DataColumn c0 = new DataColumn("Itemid");
        //dtprice.Columns.Add(c0);
        DataColumn c0 = new DataColumn("Product Name");
        dtprice.Columns.Add(c0);
        DataColumn c1 = new DataColumn("Brand");
        dtprice.Columns.Add(c1);
        DataColumn c2 = new DataColumn("Price");
        dtprice.Columns.Add(c2);
        DataColumn c3 = new DataColumn("Quantity");
        dtprice.Columns.Add(c3);
        DataColumn c4 = new DataColumn("Total");
        dtprice.Columns.Add(c4);
        foreach (DataRow r in dt.Rows)
        {

            
            DataRow r1 = dtprice.NewRow();
            r1["Product Name"] = r["Product Name"].ToString();
            r1["Brand"] = r["Brand"].ToString();
            r1["Price"] = r["Price"].ToString();
            r1["Quantity"] = r["Qty"].ToString();
            string price = r["Price"].ToString();
            Double priced = Convert.ToDouble(price.Substring(3));
            int quantity = Convert.ToInt32(r["Qty"]);
            sumq = sumq + quantity;
            r1["Total"] = Convert.ToString(priced * quantity);
            sum = sum + priced * quantity;
            dtprice.Rows.Add(r1);
        }
        
        DataRow rr = dtprice.NewRow();
        rr["Brand"] = "----";
        rr["Price"] = "Total";
        rr["Quantity"] = sumq.ToString();
        rr["Total"] = sum.ToString();
        sum = 0;
        dtprice.Rows.Add(rr);
        return dtprice;
    }
     public static void insert_dd(string add, string contact,string or,string cust)
     {
        
      }
}

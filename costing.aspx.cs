using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataTable dt = new DataTable();
    DataSet ds = new DataSet();

    public double ss1,ss2,sheet_size,sheet;
    public static double total_w,total_r;
    public int l2, w2, h2;
   
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    public void cal_weight()
    {
        var top_gsm1 = tb_tp.Text;
        var top_gsm2 = Convert.ToInt32(top_gsm1);

        var flute_gsm1 = tb_fp.Text;
        var flute_gsm2 = Convert.ToInt32(flute_gsm1);
        var f_gsm = (flute_gsm2 * 40)/100 ;

        var liner_gsm1 = tb_lp.Text;
        var liner_gsm2 = Convert.ToInt32(liner_gsm1);

       
       sheet_size = Convert.ToDouble(tb_ss1.Text);
        var ply =Convert.ToInt32(ddlply.SelectedValue);
        var ply_viz=0;

        if(ply==3)
        {
            ply_viz = 1; 
        }
        else if(ply==5)
        { 
            ply_viz = 2;
        }
        else if(ply==7)
        {
            ply_viz = 3;
        }
        else
        {
            ply_viz = 4; 
        }

        var top_w = ((top_gsm2 * sheet_size) / 10000)/1000 ;
        tb_top_w.Text = top_w.ToString() + "  kg";

        var flute_w = (((flute_gsm2+ f_gsm) * sheet_size * ply_viz) / 10000)/1000;
        tb_flute_w.Text = flute_w.ToString() + "  kg";

        var liner_w = ((liner_gsm2 * sheet_size * ply_viz) / 10000)/1000;
        tb_liner_w.Text = liner_w.ToString() + "  kg";


        total_w = top_w + flute_w + liner_w;
        tb_total_w.Text = total_w.ToString() + "  kg";

    }


    public void cal_rate()
    {
        var chk_rate_top=0;
        DataTable chk_rate_top1 = new DataTable();

        if (ddl_tbf.SelectedItem.Text == "12")
        {
            chk_rate_top1 = obj.select("select bf_rate from bf_tbl WHERE bf_id= '1'");
            chk_rate_top= Convert.ToInt32(chk_rate_top1.Rows[0][0].ToString());
        }
        else if (ddl_tbf.SelectedItem.Text == "16" )
        {
            chk_rate_top1 = obj.select("select bf_rate from bf_tbl WHERE bf_id= '2'");
            chk_rate_top = Convert.ToInt32(chk_rate_top1.Rows[0][0].ToString());
        }
        else if (ddl_tbf.SelectedItem.Text == "18" )
        {
            chk_rate_top1 = obj.select("select bf_rate from bf_tbl WHERE bf_id= '3'");
            chk_rate_top = Convert.ToInt32(chk_rate_top1.Rows[0][0].ToString());
        }
        else if (ddl_tbf.SelectedItem.Text == "20" )
        {
            chk_rate_top1 = obj.select("select bf_rate from bf_tbl WHERE bf_id= '5'");
            chk_rate_top = Convert.ToInt32(chk_rate_top1.Rows[0][0].ToString());
        }
        else if (ddl_tbf.SelectedItem.Text == "22")
        {
            chk_rate_top1 = obj.select("select bf_rate from bf_tbl WHERE bf_id= '6'");
            chk_rate_top = Convert.ToInt32(chk_rate_top1.Rows[0][0].ToString());
        }
        else if (ddl_tbf.SelectedItem.Text == "24" )
        {
            chk_rate_top1 = obj.select("select bf_rate from bf_tbl WHERE bf_id= '7'");
            chk_rate_top = Convert.ToInt32(chk_rate_top1.Rows[0][0].ToString());
        }



        var chk_rate_flute = 0;
        DataTable chk_rate_flute1 = new DataTable();
 
        if ( ddl_fbf.SelectedItem.Text == "12" )
        {
            chk_rate_flute1 = obj.select("select bf_rate from bf_tbl WHERE bf_id= '1'");
            chk_rate_flute = Convert.ToInt32(chk_rate_top1.Rows[0][0].ToString());
        }
        else if (ddl_fbf.SelectedItem.Text == "16")
        {
            chk_rate_flute1 = obj.select("select bf_rate from bf_tbl WHERE bf_id= '2'");
            chk_rate_flute = Convert.ToInt32(chk_rate_top1.Rows[0][0].ToString());
        }
        else if (ddl_fbf.SelectedItem.Text == "18")
        {
            chk_rate_flute1 = obj.select("select bf_rate from bf_tbl WHERE bf_id= '3'");
            chk_rate_flute = Convert.ToInt32(chk_rate_top1.Rows[0][0].ToString());
        }
        else if (ddl_fbf.SelectedItem.Text == "20")
        {
            chk_rate_flute1 = obj.select("select bf_rate from bf_tbl WHERE bf_id= '5'");
            chk_rate_flute = Convert.ToInt32(chk_rate_top1.Rows[0][0].ToString());
        }
        else if (ddl_fbf.SelectedItem.Text == "22" )
        {
            chk_rate_flute1 = obj.select("select bf_rate from bf_tbl WHERE bf_id= '6'");
            chk_rate_flute = Convert.ToInt32(chk_rate_top1.Rows[0][0].ToString());
        }
        else if (ddl_fbf.SelectedItem.Text == "24" )
        {
            chk_rate_flute1 = obj.select("select bf_rate from bf_tbl WHERE bf_id= '7'");
            chk_rate_flute = Convert.ToInt32(chk_rate_top1.Rows[0][0].ToString());
        }



        var chk_rate_liner = 0;
        DataTable chk_rate_liner1 = new DataTable();

        if (ddl_lbf.SelectedItem.Text == "12")
        {
            chk_rate_liner1 = obj.select("select bf_rate from bf_tbl WHERE bf_id= '1'");
            chk_rate_liner = Convert.ToInt32(chk_rate_top1.Rows[0][0].ToString());
        }
        else if (ddl_lbf.SelectedItem.Text == "16")
        {
            chk_rate_liner1 = obj.select("select bf_rate from bf_tbl WHERE bf_id= '2'");
            chk_rate_liner = Convert.ToInt32(chk_rate_top1.Rows[0][0].ToString());
        }
        else if (ddl_lbf.SelectedItem.Text == "18")
        {
            chk_rate_liner1 = obj.select("select bf_rate from bf_tbl WHERE bf_id= '3'");
            chk_rate_liner = Convert.ToInt32(chk_rate_top1.Rows[0][0].ToString());
        }
        else if (ddl_lbf.SelectedItem.Text == "20")
        {
            chk_rate_liner1 = obj.select("select bf_rate from bf_tbl WHERE bf_id= '5'");
            chk_rate_liner = Convert.ToInt32(chk_rate_top1.Rows[0][0].ToString());
        }
        else if (ddl_lbf.SelectedItem.Text == "22")
        {
            chk_rate_liner1 = obj.select("select bf_rate from bf_tbl WHERE bf_id= '6'");
            chk_rate_liner = Convert.ToInt32(chk_rate_top1.Rows[0][0].ToString());
        }
        else if (ddl_lbf.SelectedItem.Text == "24")
        {
            chk_rate_liner1 = obj.select("select bf_rate from bf_tbl WHERE bf_id= '7'");
            chk_rate_liner = Convert.ToInt32(chk_rate_top1.Rows[0][0].ToString());
        }

        var top_r = total_w * chk_rate_top;
        tb_top_rate.Text = top_r.ToString() + "  Rs.";

        var flute_r = total_w * chk_rate_flute;
        tb_flute_rate.Text = flute_r.ToString() + "  Rs.";

        var liner_r = total_w * chk_rate_liner;
        tb_liner_rate.Text = liner_r.ToString() + "  Rs.";


         total_r = top_r + flute_r + liner_r;
        tb_total_rate.Text = total_r.ToString() + "  Rs.";
      
    }

    public void extra_charge()
    {
        var labor = Convert.ToInt32(tb_labor.Text);
        var labor_charge = total_w * labor;
      
        var freight = Convert.ToInt32(tb_freight.Text);
        var freight_charge = total_w * freight;

        var print = Convert.ToInt32(tb_print.Text);
        var print_charge = total_w * print;

        var init_total = labor_charge + print_charge + freight_charge + total_r; 

        var profit = Convert.ToInt32(tb_profit.Text);
        
        var profit1 = 100+profit;
        var profit2 = profit1 * init_total* 0.01;

       // var final_price = profit2 + total_r;

         tb_final_price.Text = profit2.ToString() + "  Rs.";
    }   



    public void btn_cal_Click(object sender, EventArgs e)
    {
        try
        {

            Label2.Visible = true;
            tb_ss.Visible = true;

            var l1 = tb_l.Text;
            l2 = Convert.ToInt32(l1);
            var w1 = tb_w.Text;
            w2 = Convert.ToInt32(w1);
            var h1 = tb_h.Text;
            h2 = Convert.ToInt32(h1);

            ss1 = (w2 + h2 + 25.4) / 10;
            ss2 = (2 * l2 + 2 * w2 + 25.4) / 10;


            sheet_size = ss1 * ss2;

            var ss3 = ss1.ToString();
            var ss4 = ss2.ToString();


            tb_ss1.Text = sheet_size.ToString();
            tb_ss.Text = ss1 + "  *  " + ss2 + "   cm ";
        }
        catch (Exception ex)
        {
            lblmsg.Text = "Something went Wrong...";
            lblmsg.Visible = true;
        }
    }
  
    
    public void btn_submit_Click(object sender, EventArgs e)
    {
        try
        {
            cal_weight();
            cal_rate();
        }
        catch (Exception ex)
        {
            lblmsg.Text = "Something went Wrong...";
            lblmsg.Visible = true;
        }

    }



    public void btn_final_price_Click(object sender, EventArgs e)
    {
        try
        {
            extra_charge();

            Label21.Visible = true;
            tb_final_price.Visible = true;
            btn_c_submit.Visible = true;
        }
        catch (Exception ex)
        {
            lblmsg.Text = "Something went Wrong...";
            lblmsg.Visible = true;
        }
    }

    
    protected void btn_c_submit_Click(object sender, EventArgs e)
    {
        try
        {
            obj.insert("insert into costing_tbl values('" + tb_date.Text + "','" + tb_cname.Text + "','" + tb_product.Text + "','" + ddlply.SelectedItem.Text + "','" + tb_ss1.Text + "','" + tb_total_w.Text + "','" + tb_total_rate.Text + "','" + tb_print.Text + "','" + tb_labor.Text + "','" + tb_freight.Text + "','" + tb_profit.Text + "','" + tb_final_price.Text + "')");

            lbl_msg.Text = "Record has been submitted...";
            lbl_msg.Visible = true;
        }
        catch (Exception ex)
        {
            lblmsg.Text = "Something went Wrong...";
            lblmsg.Visible = true;
        }
    }
}
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
    public int corugation_sal, pasting_sal, printing_sal, punching_sal, packing_sal,total_sal;
    
    protected void Page_Load(object sender, EventArgs e)
    {
       /* if (!IsPostBack)
        {
            fillgrid();
        }
        */
        
    }
   /* public void fillgrid()
    {
        dt = obj.select("select * from salary_rate_tbl");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    } */

    public void cal_corugation()
    {      
        var production = tb_production.Text;
        var pro = Convert.ToInt32(production);
        
        var rate_1 = obj.select("select corugation from salary_rate_tbl WHERE rate_id = '1'");
      
         var rat1 = Convert.ToInt32(rate_1.Rows [0][0].ToString());

        corugation_sal = (pro*rat1) / 1000;

       tb_m1_op.Text = corugation_sal.ToString();
    }
    public void cal_printing()
    {
        var production = tb_production.Text;
        var pro = Convert.ToInt32(production);

        var rate_2 = obj.select("select printing from salary_rate_tbl WHERE rate_id = '1'");
        if(rate_2.Rows.Count > 0)
        {
            var rat2 = Convert.ToInt32(rate_2.Rows[0][1].ToString());
            var printing_sal = (pro * rat2) / 1000;

            tb_m2_op.Text = printing_sal.ToString();
        }
        

        
    }
    public void cal_pasting()
    {
        var production = tb_production.Text;
        var pro = Convert.ToInt32(production);

        var rate_3 = obj.select("select pasting from salary_rate_tbl WHERE rate_id = '1'");

        var rat3 = Convert.ToInt32(rate_3.Rows[0][2].ToString());

         pasting_sal = (pro * rat3) / 1000;

        tb_m3_op.Text = pasting_sal.ToString();
    }
    public void cal_punching()
    {
        var production = tb_production.Text;
        var pro = Convert.ToInt32(production);

        var rate_4 = obj.select("select punching from salary_rate_tbl WHERE rate_id = '1'");

        var rat4 = Convert.ToInt32(rate_4.Rows[0][3].ToString());

         punching_sal = (pro * rat4) / 1000;

        tb_m4_op.Text = punching_sal.ToString();
    }
    public void cal_packing()
    {
        var production = tb_production.Text;
        var pro = Convert.ToInt32(production);

        var rate_5 = obj.select("select packing from salary_rate_tbl WHERE rate_id = '1'");

        var rat5 = Convert.ToInt32(rate_5.Rows[0][4].ToString());

         packing_sal = (pro * rat5) / 1000;

        tb_m5_op.Text = packing_sal.ToString();
    }
   public void total ()
    {
         total_sal = corugation_sal + printing_sal + pasting_sal + punching_sal + packing_sal;



        tb_total_op.Text = total_sal.ToString();
    }  
   

  /*  protected void btn_save_Click(object sender, EventArgs e)
    {
        obj.insert("insert into salary_rate_tbl values('" + tb_m1.Text + "','" + tb_m2.Text + "','" + tb_m3.Text + "','" + tb_m4.Text + "','" + tb_m5.Text + "')");

        lblmsg1.Visible = true;
        lblmsg1.Text = "Rates Submitted...";


    }
      protected void btn_update_Click(object sender, EventArgs e)
    {
        obj.update("update salary_rate_tbl set corugation='" + tb_m1.Text + "',printing='" + tb_m2.Text + "',pasting='" + tb_m3.Text + "',punching='" + tb_m4.Text + "',packing='" + tb_m5.Text + "' where rate_id='1'");
        lblmsg1.Visible = true;
        lblmsg1.Text = "Rates Successfully Updated...";

    } */

    protected void btn_cal_Click(object sender, EventArgs e)
    {
        try
        {
            cal_corugation();
            cal_printing();
            cal_pasting();
            cal_punching();
            cal_packing();
            total();
            obj.insert("insert into salary_tbl values('" + tb_date.Text + "','" + tb_production.Text + "','" + tb_m1_op.Text + "','" + tb_m2_op.Text + "','" + tb_m3_op.Text + "','" + tb_m4_op.Text + "','" + tb_m5_op.Text + "','" + tb_total_op.Text + "')");
        }
        catch (Exception ex)
        {
            lblmsg.Text = "Something went Wrong...";
            lblmsg.Visible = true;
        }
   }

    protected void btn_view_rate_Click(object sender, EventArgs e)
    {
        
       // fillgrid();
        
    }
    protected void btn_rate_Click(object sender, EventArgs e)
    {
       GridView1.Visible = true;
    }
}
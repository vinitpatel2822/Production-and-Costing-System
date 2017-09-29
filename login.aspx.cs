using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataTable wdt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Visible = false;
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
    }
   
    protected void tb_uname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            wdt = obj.select("select * from reg_user_tbl where User_name= '" + tb_uname.Text + "' and Password= '" + tb_pwd.Text + "'");
            if (wdt.Rows.Count > 0)
            {
                Session["uid"] = tb_uname.Text;
                Response.Redirect("about.aspx");
            }
            else
            {
                lblmsg.Visible = true;
                lblmsg.Text = "User name and Password does not match";
            }

        }
        catch (Exception ex)
        {
            lblmsg.Visible = true;
            lblmsg.Text = "User name and Password does not match";
        }
    }
}


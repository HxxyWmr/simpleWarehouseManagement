using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    private static SqlConnection connection = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        connection=pClass.Connection;

        String selSql = "select * from AdiminiWK_20 where Glnum=" + Glnum.Text.Trim() + " and pwd=" + pwd.Text.Trim();

        if (pClass.logSelecte(selSql))
        {
            Response.Write(" <script>alert('管理员登入成功')</script>");
            Tis.Text = Glnum.Text = pwd.Text = "";
            Response.Write(" <script>window.location='Home.aspx'</script>");
        }
        else {
            Tis.Text = "用户名或者密码错误";
        }
    }
    protected void reset_Click(object sender, EventArgs e)
    {
        Glnum.Text = pwd.Text = "";
    }
}
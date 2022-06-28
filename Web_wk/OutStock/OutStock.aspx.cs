using System;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;


public partial class OutStock_OutStock : System.Web.UI.Page
{

    private static SqlConnection connection = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        String sql = "select * from OutStockWK_20";
        connection = pClass.Connection;
        pClass.GetDataSet(GridView1, sql);
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        connection = pClass.connection;

        String Spname = this.GridView1.Rows[e.RowIndex].Cells[3].Text;
        String id=this.GridView1.Rows[e.RowIndex].Cells[2].Text;
        Random random = new Random();
        int num = 1;
        String Dnum = "";
        for (int i = 0; i < 20; i++)
        {
            num = random.Next(1, 9);
            Dnum += num.ToString();
        }
        String sql = "update OutStockWK_20 set Status='已发货',Dnum=N'" + Dnum + "' where Spname='" + Spname + "' and id='" + id + "'";
        pClass.ExecuteSql(sql);
        Response.Redirect(Request.Url.ToString());

    }
}
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


public partial class Stock_Stock : System.Web.UI.Page
{
    private static SqlConnection connection = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            setVisableFalse();
        }
        String sql = "select * from StockWK_20";
        connection = pClass.Connection;
        pClass.GetDataSet(GridView1, sql);

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        connection = pClass.Connection;
        String sql = "delete from StockWK_20 where Spnum='" + this.GridView1.Rows[e.RowIndex].Cells[0].Text + "'";
        OutRes(sql);
    }
    private void OutRes(String sql)
    {
        pClass.ExecuteSql(sql);
        Spnum.Text = Spname.Text = Glnum.Text = Sptype.Text = Price.Text = Snum.Text = Rkdate.Text = Sdate.Text = "";
        Response.Redirect(Request.Url.ToString());
    }
    protected void add_Click(object sender, EventArgs e)
    {
        connection = pClass.Connection;
        String sql = "insert into StockWK_20(Spnum,Glnum,Spname,Sptype,Price,Snum,Rkdate,Sdate) values" +
            "('" + Spnum.Text.Trim() + "','" + Glnum.Text.Trim() + "','" + Spname.Text.Trim() + "','"
            + Sptype.Text.Trim() + "','" + Price.Text.Trim() + "','" + Snum.Text.Trim() + "','" + Rkdate.Text.Trim() + "','" + Sdate.Text.Trim() + "')";
        OutRes(sql);

    }
    protected void update_Click(object sender, EventArgs e)
    {
        connection = pClass.Connection;
        String uSpnum = Spnum.Text == "" ? "Spnum='100000'" : "Spnum='" + Spnum.Text.Trim() + "'";
        String uGlnum = Glnum.Text == "" ? "" : ",Glnum='" + Glnum.Text.Trim() + "'";
        String uSpname = Spname.Text == "" ? "" : ",Spname='" + Spname.Text.Trim() + "'";
        String uSptype = Sptype.Text == "" ? "" : ",Sptype='" + Sptype.Text.Trim() + "'";
        String uPrice = Price.Text == "" ? "" : ",Price=" + Price.Text.Trim();
        String uSnum = Snum.Text == "" ? "" : ",Snum=" + Snum.Text.Trim();
        String uRkdate = Rkdate.Text == "" ? "" : ",Rkdate='" + Rkdate.Text.Trim() + "'";
        String uSdate = Sdate.Text == "" ? "" : ",Sdate='" + Sdate.Text.Trim() + "'";

        String sql = "update StockWK_20 set " + uSpnum + uGlnum + uSpname + uSptype + uPrice + uSnum + uRkdate + uSdate + " where " + uSpnum;

        OutRes(sql);

    }
    protected void selec_Click(object sender, EventArgs e)
    {
        connection = pClass.Connection;

        String uSpnum = Spnum.Text == "" ? "Spnum>0" : "Spnum='" + Spnum.Text.Trim() + "'";
        String uSpname = Spname.Text == "" ? "" : " and Spname='" + Spname.Text.Trim() + "'";
        String uGlnum = Glnum.Text == "" ? "" : " and Glnum='" + Glnum.Text.Trim() + "'";
        String uSptype = Sptype.Text == "" ? "" : " and Sptype='" + Sptype.Text.Trim() + "'";
        String uPrice = Price.Text == "" ? "" : " and Price='" + Price.Text.Trim() + "'";
        String uSnum = Snum.Text == "" ? "" : " and Snum='" + Snum.Text.Trim() + "'";
        String uRkdate = Rkdate.Text == "" ? "" : " and Rkdate='" + Rkdate.Text.Trim() + "'";
        String uSdate = Sdate.Text == "" ? "" : " and Sdate='" + Sdate.Text.Trim() + "'";

        String selc = "select * from StockWK_20 where " + uSpnum + uGlnum + uSpname + uSptype + uPrice + uSnum + uRkdate + uSdate;
        pClass.GetDataSet(GridView1, selc);
        Spnum.Text = Spname.Text = Glnum.Text = Sptype.Text = Price.Text = Snum.Text = Rkdate.Text = Sdate.Text = "";
    }
    private void setVisableFalse()
    {

        Spnum.Visible = Spname.Visible = Glnum.Visible = Sptype.Visible = Price.Visible = Snum.Visible = Rkdate.Visible = Sdate.Visible =
            add.Visible = update.Visible = selec.Visible = tis.Visible = false;

    }
    private void ChooseVisable(String choose)
    {
        add.Visible = update.Visible = selec.Visible = tis.Visible = false;
        Spnum.Visible = Spname.Visible = Glnum.Visible = Sptype.Visible = Price.Visible = Snum.Visible = Rkdate.Visible = Sdate.Visible = true;
        if (choose == "查询库存")
        {
            selec.Visible = true;
        }
        else if (choose == "新增库存")
        {
            add.Visible = true;
        }
        else
        {
            update.Visible = tis.Visible = true;

        }
    }
    protected void TreeView1_TreeNodeCollapsed(object sender, TreeNodeEventArgs e)
    {
        setVisableFalse();
    }
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        ChooseVisable(this.TreeView1.SelectedNode.Text);
    }

}
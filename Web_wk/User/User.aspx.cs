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


public partial class User_User : System.Web.UI.Page
{
    private static SqlConnection connection = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            setVisableFalse();
        }
        String sql = "select * from UserWK_20";
        connection = pClass.Connection;
        pClass.GetDataSet(GridView1, sql);
    }
    private void OutRes(String sql)
    {
        pClass.ExecuteSql(sql);
        id.Text = Name.Text = Sex.Text = Tel.Text = Brday.Text = Lev.Text = Adr.Text = "";
        Response.Redirect(Request.Url.ToString());
    }
    protected void add_Click(object sender, EventArgs e)
    {
        connection = pClass.Connection;
        String sql = "insert into UserWK_20(id,Name,Sex,Tel,Brday,Lev,Adr) values" +
            "('" + id.Text.Trim() + "','" + Name.Text.Trim() + "','" + Sex.Text.Trim() + "','"
            + Tel.Text.Trim() + "','" + Brday.Text.Trim() + "'," + Lev.Text.Trim() + ",'" + Adr.Text.Trim() + "')";
        OutRes(sql);

    }
    protected void update_Click(object sender, EventArgs e)
    {
        connection = pClass.Connection;
        String uid = id.Text == "" ? "id='100000'" : "id='" + id.Text.Trim() + "'";
        String uName = Name.Text == "" ? "" : ",Name='" + Name.Text.Trim() + "'";
        String uSex = Sex.Text == "" ? "" : ",Sex='" + Sex.Text.Trim() + "'";
        String uTel = Tel.Text == "" ? "" : ",Tel='" + Tel.Text.Trim() + "'";
        String uBrday = Brday.Text == "" ? "" : ",Brday=" + Brday.Text.Trim();
        String uLev = Lev.Text == "" ? "" : ",Lev=" + Lev.Text.Trim();
        String uAdr = Adr.Text == "" ? "" : ",Adr='" + Adr.Text.Trim() + "'";

        String sql = "update UserWK_20 set " + uid + uName + uSex + uTel + uBrday + uLev + uAdr + " where " + uid;

        OutRes(sql);

    }
    protected void selec_Click(object sender, EventArgs e)
    {
        connection = pClass.Connection;

        String uid = id.Text == "" ? "id>0" : "id='" + id.Text.Trim() + "'";
        String uName = Name.Text == "" ? "" : " and Name='" + Name.Text.Trim() + "'";
        String uSex = Sex.Text == "" ? "" : " and Sex='" + Sex.Text.Trim() + "'";
        String uTel = Tel.Text == "" ? "" : " and Tel='" + Tel.Text.Trim() + "'";
        String uBrday = Brday.Text == "" ? "" : " and Brday=" + Brday.Text.Trim();
        String uLev = Lev.Text == "" ? "" : " and Lev=" + Lev.Text.Trim();
        String uAdr = Adr.Text == "" ? "" : " and Adr='" + Adr.Text.Trim() + "'";

        String selc = "select * from UserWK_20 where " + uid + uName + uSex + uTel + uBrday + uLev + uAdr;
        pClass.GetDataSet(GridView1, selc);
        id.Text = Name.Text = Sex.Text = Tel.Text = Brday.Text = Lev.Text = Adr.Text = "";
    }

    private void setVisableFalse()
    {

        id.Visible = Name.Visible = Sex.Visible = Tel.Visible = Brday.Visible = Lev.Visible = Adr.Visible =
            add.Visible = update.Visible = selec.Visible = tis.Visible = false;

    }
    private void ChooseVisable(String choose)
    {
        add.Visible = update.Visible = selec.Visible = tis.Visible = false;
        id.Visible = Name.Visible = Sex.Visible = Tel.Visible = Brday.Visible = Lev.Visible = Adr.Visible = true;
        if (choose == "用户查询")
        {
            selec.Visible = true;
        }
        else if (choose == "新增用户")
        {
            add.Visible = true;
        }
        else
        {
            update.Visible = tis.Visible = true;
        }
    }

    protected void TreeView1_SelectedNodeChanged1(object sender, EventArgs e)
    {
         ChooseVisable(this.TreeView1.SelectedNode.Text);
    }
    protected void TreeView1_TreeNodeCollapsed1(object sender, TreeNodeEventArgs e)
    {
         setVisableFalse();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        connection = pClass.Connection;
        String sql = "delete from UserWK_20 where id='" + this.GridView1.Rows[e.RowIndex].Cells[0].Text + "'";
        OutRes(sql);
    }
}
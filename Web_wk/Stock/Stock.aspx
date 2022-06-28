<%@ Page Title="库存管理" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Stock.aspx.cs" Inherits="Stock_Stock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contents" Runat="Server">
    <div>
        <asp:TreeView ID="TreeView1" runat="server" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" ForeColor="White" OnTreeNodeCollapsed="TreeView1_TreeNodeCollapsed" ShowExpandCollapse="False">
            <Nodes>
                <asp:TreeNode Text="库存管理界面" Value="库存管理界面">
                    <asp:TreeNode Text="查询库存" Value="查询库存"></asp:TreeNode>
                    <asp:TreeNode Text="新增库存" Value="新增库存"></asp:TreeNode>
                    <asp:TreeNode Text="修改库存信息" Value="修改库存信息"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    </div>
    <asp:TextBox ID="Spnum" placeholder="商品号" CssClass="TextBox" runat="server"></asp:TextBox>
        <br />
    <asp:TextBox ID="Glnum" placeholder="管理员编号" CssClass="TextBox" runat="server"></asp:TextBox>
        <br />
    <asp:TextBox ID="Spname" placeholder="名称" CssClass="TextBox" runat="server"></asp:TextBox>
            <br />
    <asp:TextBox ID="Sptype" placeholder="类型" CssClass="TextBox" runat="server"></asp:TextBox>
        <br />
    <asp:TextBox ID="Price" placeholder="价格" CssClass="TextBox" runat="server"></asp:TextBox>
            <br />
    <asp:TextBox ID="Snum" placeholder="仓库" CssClass="TextBox" runat="server"></asp:TextBox>
        <br />         
    <asp:TextBox ID="Rkdate" placeholder="入库日期" CssClass="TextBox" runat="server"></asp:TextBox>
        <br />
    <asp:TextBox ID="Sdate" placeholder="保质期" CssClass="TextBox" runat="server"></asp:TextBox>
    <asp:Button ID="add" runat="server" CssClass="StockButton"  Text="添加"  OnClick="add_Click" />
            <br />
    <asp:Button ID="update" runat="server" CssClass="StockButton" Text="修改"   OnClick="update_Click" />
        <br />
    <asp:Button ID="selec" runat="server" CssClass="StockButton" Text="查询" OnClick="selec_Click"/>
        <br />
    <asp:Label ID="tis" CssClass="Tis" Text="修改时请先输入商品号" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="StockGr">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  EnableModelValidation="True"  Height="150px" OnRowDeleting="GridView1_RowDeleting" Width="1020px">
        <Columns>
            <asp:BoundField DataField="Spnum" HeaderText="商品号" SortExpression="Spnum" />
            <asp:BoundField DataField="Glnum" HeaderText="管理员编号" SortExpression="Glnum" />
            <asp:BoundField DataField="Spname" HeaderText="名称" SortExpression="Spname" />
            <asp:BoundField DataField="Sptype" HeaderText="类型" SortExpression="Sptype" />
            <asp:BoundField DataField="Price" HeaderText="价格" SortExpression="Price" />
            <asp:BoundField DataField="Snum" HeaderText="仓库" SortExpression="Snum" />
            <asp:BoundField DataField="Rkdate" HeaderText="入库日期" SortExpression="Rkdate" />
            <asp:BoundField DataField="Sdate" HeaderText="保质期/月" SortExpression="Sdate" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
</div>
</asp:Content>


<%@ Page Title="出库销售" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OutStock.aspx.cs" Inherits="OutStock_OutStock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contents" Runat="Server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="Outcon">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="False" CssClass="OutconGir" scrolling="yes" AutoGenerateColumns="False" EnableModelValidation="True"  OnRowDeleting="GridView1_RowDeleting">
        <Columns>
            <asp:BoundField DataField="Dnum" HeaderText="订单编号" SortExpression="Dnum" />
            <asp:BoundField DataField="Glnum" HeaderText="管理员编号" SortExpression="Glnum" />
            <asp:BoundField DataField="id" HeaderText="用户id" SortExpression="id" />
            <asp:BoundField DataField="Spname" HeaderText="商品名称" SortExpression="Spname" />
            <asp:BoundField DataField="Ctime" HeaderText="创建时间" SortExpression="Ctime" />
            <asp:BoundField DataField="Status" HeaderText="商品状态" SortExpression="Status" />
            <asp:BoundField DataField="Adr" HeaderText="发货地址" SortExpression="Adr" />
            <asp:CommandField DeleteText="发货" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    </div>
</asp:Content>


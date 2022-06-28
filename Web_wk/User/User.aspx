<%@ Page Title="用户管理" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contents" Runat="Server">
    <div>
        <asp:TreeView ID="TreeView1" CssClass="Tree" runat="server" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged1" OnTreeNodeCollapsed="TreeView1_TreeNodeCollapsed1" ForeColor="White" ShowExpandCollapse="False">
            <Nodes>
                <asp:TreeNode Text="用户管理操作" Value="用户管理操作">
                    <asp:TreeNode Text="用户查询" Value="用户查询"></asp:TreeNode>
                    <asp:TreeNode Text="新增用户" Value="新增用户"></asp:TreeNode>
                    <asp:TreeNode Text="用户信息修改" Value="用户信息修改"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    </div>
    <asp:TextBox ID="id" placeholder="用户账号" runat="server" CssClass="TextBox"></asp:TextBox>
            <br />
    <asp:TextBox ID="Name" placeholder="用户姓名" runat="server" CssClass="TextBox"></asp:TextBox>
            <br />
    <asp:TextBox ID="Sex" placeholder="性别" runat="server" CssClass="TextBox"></asp:TextBox>
            <br />
    <asp:TextBox ID="Tel" placeholder="电话号码" runat="server" CssClass="TextBox"></asp:TextBox>
            <br />
    <asp:TextBox ID="Brday" placeholder="出生日期" runat="server" CssClass="TextBox"></asp:TextBox>
            <br />
    <asp:TextBox ID="Lev" placeholder="用户等级" runat="server" CssClass="TextBox"></asp:TextBox>
            <br />
    <asp:TextBox ID="Adr" placeholder="收货地址" runat="server" CssClass="TextBox"></asp:TextBox>
    <asp:Button ID="add" runat="server"    Text="添加" Width="198px" OnClick="add_Click"   CssClass="Button" />
            <br />
    <asp:Button ID="update" runat="server"   Text="修改"  Width="198px" OnClick="update_Click"   CssClass="Button" />
            <br />      
    <asp:Button ID="selec" runat="server" Text="查询" Width="198px" OnClick="selec_Click"   CssClass="Button"/>
            <br />
    <asp:Label ID="tis" CssClass="Tis" Text="修改时请先输入用户账号" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" EnableModelValidation="True" CssClass="Usercon" Height="380px" Width="1109px" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="用户账号" SortExpression="id" ReadOnly="True" />
                <asp:BoundField DataField="Name" HeaderText="用户姓名" SortExpression="Name" />
                <asp:BoundField DataField="Sex" HeaderText="性别" SortExpression="Sex" />
                <asp:BoundField DataField="Tel" HeaderText="电话号码" SortExpression="Tel" />
                <asp:BoundField DataField="Brday" HeaderText="出生日期" SortExpression="Brday" />
                <asp:BoundField DataField="Lev" HeaderText="用户等级" SortExpression="Lev" />
                <asp:BoundField DataField="Adr" HeaderText="收货地址" SortExpression="Adr" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
    </asp:GridView>
</asp:Content>


<%@ Page Title="管理员" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Adimini.aspx.cs" Inherits="Adimini_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contents" Runat="Server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .admini
        {
            margin:75px 50px;
        }
    </style>
    <div class="admini">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  EnableModelValidation="True" Height="323px" Width="970px" DataKeyNames="Glnum" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Glnum" HeaderText="Glnum" SortExpression="Glnum" ReadOnly="True" />
                <asp:BoundField DataField="pwd" HeaderText="pwd" SortExpression="pwd" />
                <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
                <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WK_20ConnectionString %>" SelectCommand="SELECT * FROM [AdiminiWK_20]"></asp:SqlDataSource>
    </div>
</asp:Content>


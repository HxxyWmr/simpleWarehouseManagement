<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>首页</title>
       <link href="~/App_Themes/主题1/all.css" rel="stylesheet" />
       <link href="App_Themes/主题1/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="Head">
                    <ul>  
                        <li>
                            <asp:LinkButton ID="Adimini" runat="server" PostBackUrl="~/Adimini/Adimini.aspx" CssClass="LinkButton">管理员</asp:LinkButton> 
                        </li>
                        <li>
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/User/User.aspx" CssClass="LinkButton">用户管理</asp:LinkButton>
                        </li>
                            <li>
                            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/OutStock/OutStock.aspx"  CssClass="LinkButton">出库销售</asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Stock/Stock.aspx" CssClass="LinkButton">库存管理</asp:LinkButton>
                        </li>             
                        <li style=" color: #373737;
                                    font-size: 30px ;
                                    font-family: 黑体;
                                    font-weight: bold;
                                    line-height:50%;">
                            主界面
                        </li>      
                    </ul>
                    <h1 style="margin-left:-120px;line-height:30px;">Warehouse management system</h1>
            </div>
            <div class="Zwen">欢迎进入仓库后台管理系统界面！</div>
        </div>
    </form>
</body>
</html>

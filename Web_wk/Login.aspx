<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登入</title>
    <link href="~/App_Themes/主题1/all.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="Center">
            <div style="height:10px;"></div>
                <h3 >请登入</h3>
                <asp:TextBox ID="Glnum" placeholder="账号" runat="server" Height="25px" Width="200px"></asp:TextBox><br />
                    <br />
                <asp:TextBox ID="pwd" placeholder="密码" TextMode="Password"  runat="server" Height="25px" Width="200px"></asp:TextBox>
                    <br />
                    <br />
                <asp:Button ID="log" runat="server" Text="确定" OnClick="Button1_Click" Height="25px" Width="200px" style="margin-bottom:8px;"/>
                <asp:Button ID="reset" runat="server" Text="重置" OnClick="reset_Click" Height="25px" Width="200px" />
                    <br />
                <asp:Label Text="" style=" font-size:14px;font-family: 黑体;color:red;" runat="server" ID="Tis"/>
        </div>
    </form>
</body>
</html>

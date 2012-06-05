<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link rel="stylesheet" href="DefaultStyle.css" type="text/css" /> 
    <title>交通违规罚款系统</title>
    <style type="text/css">
        .style7
        {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main" style="text-align: center">
    <div style="padding-top:100px;">
        <table width="300px">
            <tr>
                <td style="text-align: right" width="100px">
                    <asp:Label ID="adminName_label" runat="server" Text="用户名："></asp:Label>
                </td>
                <td style="text-align: left" width="200px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" width="100px" class="style7">
                    <asp:Label ID="Label1" runat="server" Text="密码："></asp:Label>
                </td>
                <td style="text-align: left" class="style7" width="200px">
                    <asp:TextBox ID="TextBox2" runat="server" Height="16px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" width="100px">
                    验证码：</td>
                <td style="text-align: left" width="200px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center; width: 300px;" width="100px" colspan="2">
                    <asp:Label ID="adminLoginError_label" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" 
                    style="text-align: center; padding-top: 15px; padding-bottom: 20px;padding-left:50px;">
                    <asp:Button ID="adminLogin_bt" runat="server" Height="35px" Text="登录" 
                        Width="50px" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    </div>
    </form>
</body>
</html>

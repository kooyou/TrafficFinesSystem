<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DriverLisenceRegisterWeb.aspx.cs" Inherits="DriverLisenceRegisterWeb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="DefaultStyle.css" type="text/css" /> 
    <title>交通违规罚款系统</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
    <div class="header">
    </div>
    <div class="menu">
            <div style="padding-top: 8px">
                <table style="width: 100%; text-align: center;">
                    <tr>
                        <td class="style1">
                            <asp:LinkButton ID="home_linkbtn" runat="server" ForeColor="White" 
                                PostBackUrl="Login.aspx">首页</asp:LinkButton>
                        </td>
                        <td class="style2">
                            <asp:LinkButton ID="fines_menu" runat="server" ForeColor="White" 
                                PostBackUrl="PayFinesWeb.aspx">缴费罚款</asp:LinkButton>
                        </td>
                        <td class="style2">
                            <asp:LinkButton ID="play_menu" runat="server" ForeColor="White" 
                                PostBackUrl="Login.aspx">在线演示</asp:LinkButton>
                        </td>
                        <td class="style2">
                            <asp:LinkButton ID="problem_menu" runat="server" ForeColor="White" 
                                PostBackUrl="Login.aspx">常见问题</asp:LinkButton>
                        </td>
                        <td class="style2">
                            <asp:LinkButton ID="trafficInfo_menu" runat="server" ForeColor="White" 
                                PostBackUrl="Login.aspx">交通信息</asp:LinkButton>
                        </td>
                        <td class="style3">
                            <asp:LinkButton ID="illegalInfo_menu" runat="server" ForeColor="White" 
                                PostBackUrl="http://chaxun.weizhang8.cn/daimachaxun2.aspx">违规信息</asp:LinkButton>
                        </td>
                        <td class="style4">
                            <asp:LinkButton ID="chatOnline_menu" runat="server" ForeColor="White" 
                                PostBackUrl="Login.aspx">在线留言</asp:LinkButton>
                        </td>
                        <td>
                            <asp:LinkButton ID="contact_menu" runat="server" ForeColor="White" 
                                PostBackUrl="Login.aspx">联系我们</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div align="center" style="padding-top:50px;">
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Larger" 
                Text="驾驶证在线缴费注册"></asp:Label>
        </div>
        <div style="text-align: center;padding-top:20px;">
            <table style="width:auto;">
                <tr>
                    <td style="text-align: right">
                        <asp:Label ID="Label1" runat="server" Text="驾驶证号："></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="registerDriverLisence_edit" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <asp:Label ID="Label2" runat="server" Text="姓名："></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="registerName_edit" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <asp:Label ID="Label3" runat="server" Text="身份证号："></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="registerID_edit" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <asp:Label ID="Label4" runat="server" Text="缴款密码："></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="registerPsw_edit" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        缴款密码确认：</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="registerPswConfirm_edit" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <asp:Label ID="Label5" runat="server" Text="验证码："></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="registerAuthCode_edit" runat="server" Width="43px"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="CreateImg.aspx" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" colspan="2">
                        <asp:Label ID="registerErrorInfo_label" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="padding: 10px; text-align: center" colspan="2">
                        <asp:Button ID="DriverLisenceRegister_bt" runat="server" Text="注册" 
                            Height="30px" Width="50px" onclick="DriverLisenceRegister_bt_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>

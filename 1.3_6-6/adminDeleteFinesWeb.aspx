<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminDeleteFinesWeb.aspx.cs" Inherits="adminDeleteFinesWeb" %>

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
                                PostBackUrl="Login.aspx">违规信息</asp:LinkButton>
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
        <div style="width:100%;height:500px;">
            <div style="border-style: groove; border-width: thin; width:20%; height:100%; float:left;">
                <div style="width:100%;margin-top:20px;">
                    <table style="width:100%;">
                        <tr>
                            <td colspan="2" style="text-align: center" height="130px">
                                <img alt="" height="100px" src="src_image/cimg_3.gif" width="100px" /></td>
                        </tr>
                        <tr>
                            <td class="style7" style="text-align: right" height="25px">
                                <asp:Label ID="Label1" runat="server" Text="姓名："></asp:Label>
                            </td>
                            <td height="25px">
                                <asp:Label ID="adminName_label" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7" style="text-align: right" height="25px">
                                <asp:Label ID="Label2" runat="server" Text="账号："></asp:Label>
                            </td>
                            <td height="25px">
                                <asp:Label ID="adminCount_label" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
                <div style="width:100%;margin-top:30px;">
                <div style="width:100%;margin-bottom:15px;margin-left:10px;">
                    功能导航：
                </div>
                    <table style="width:100%;">
                        <tr>
                            <td style="text-align: center">
                                <asp:LinkButton ID="adminQuery_lb" runat="server" 
                                    PostBackUrl="adminQueryWeb.aspx">·查询罚单</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:LinkButton ID="adminAddFines_lb" runat="server" 
                                    PostBackUrl="AdminHandlerWeb.aspx">·录入罚单</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:LinkButton ID="adminDel_lb" runat="server" 
                                    PostBackUrl="adminDeleteFinesWeb.aspx" ForeColor="#000066">·删除罚单</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div style="border-style: groove; border-width: thin; width:auto; height:100%;">
                <div style="margin-top:30%;text-align:center;">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" 
                        Text="暂时不支持删除罚款"></asp:Label>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>

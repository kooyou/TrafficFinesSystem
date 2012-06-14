<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminQueryWeb.aspx.cs" Inherits="adminQueryWeb" %>

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
                                    PostBackUrl="adminQueryWeb.aspx" ForeColor="#000066">·查询罚单</asp:LinkButton>
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
                                    PostBackUrl="adminDeleteFinesWeb.aspx">·删除罚单</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td style="padding: 20px; text-align: center">
                                <asp:LinkButton ID="LinkButton1" runat="server" 
                                    PostBackUrl="DriverLisenceRegisterWeb.aspx">·驾驶证在线缴款注册</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div style="border-style: groove; border-width: thin; width:auto; height:100%;">
                <div style="margin-top:80px;">
                <div class="adminSearch">
                    <table style="width:100%;">
                        <tr>
                            <td colspan="2" height="30" style="text-align: center">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="按车牌号码查询"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                <asp:Label ID="Label4" runat="server" Text="车牌号码："></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="adminQueryCarNo_edit" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                地点：</td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="省:"></asp:Label>
                                <asp:DropDownList ID="carFinesProvince_ld" runat="server" Width="50px">
                                </asp:DropDownList>
&nbsp;<asp:Label ID="Label7" runat="server" Text="市:"></asp:Label>
                                <asp:DropDownList ID="carFinesCity_ld" runat="server" Width="50px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <asp:Button ID="adminCarQuery_bt" runat="server" Height="30px" Text="查询" 
                                    Width="50px" />
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="adminSearch">
                    <table style="width:100%;">
                        <tr>
                            <td colspan="2" height="30" style="text-align: center">
                                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="按驾驶证号码查询"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                <asp:Label ID="Label9" runat="server" Text="驾驶证号码："></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="adminQueryDriLisenceNo_edit0" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="Label10" runat="server" ForeColor="Red" Text="*"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                地点：</td>
                            <td>
                                <asp:Label ID="Label11" runat="server" Text="省:"></asp:Label>
                                <asp:DropDownList ID="dirverLisenceFinesProvince_ld0" runat="server" 
                                    Width="50px">
                                </asp:DropDownList>
&nbsp;<asp:Label ID="Label12" runat="server" Text="市:"></asp:Label>
                                <asp:DropDownList ID="driverLisenceFinesCity_ld0" runat="server" Width="50px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <asp:Button ID="adminDirverLisenceQuery_bt0" runat="server" Height="30px" Text="查询" 
                                    Width="50px" />
                            </td>
                        </tr>
                    </table>
                </div>
                </div>
                <div style="width:100%;height:auto;margin-top:30px;">
                    <div style="margin-left:20px;margin-bottom:10px;">
                        <asp:Label ID="Label13" runat="server" Text="查询结果"></asp:Label>
                    </div>
                    <div style="text-align:center">
                        <asp:TextBox ID="TextBox1" runat="server" Height="183px" ReadOnly="True" 
                            TextMode="MultiLine" Width="80%">没有查询结果。</asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>

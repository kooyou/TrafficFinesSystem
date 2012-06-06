<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHandlerWeb.aspx.cs" Inherits="AdminHandlerWeb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="DefaultStyle.css" type="text/css" /> 
    <title>交通违规罚款系统</title>
    <style type="text/css">
        .style7
        {
            width: 55px;
        }
        .style8
        {
            height: 30px;
        }
    </style>
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
                                <asp:LinkButton ID="adminAddFines_lb" runat="server" ForeColor="#000066" 
                                    PostBackUrl="AdminHandlerWeb.aspx">·录入罚单</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:LinkButton ID="adminDel_lb" runat="server" 
                                    PostBackUrl="adminDeleteFinesWeb.aspx">·删除罚单</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div style="border-style: groove; border-width: thin; width:auto; height:100%;">
            <div style="width:auto;margin-top:40px;">
                <table style="width:100%; text-align:center;">
                    <tr>
                        <td style="text-align: right" height="25" width="40%">
                            <asp:Label ID="Label3" runat="server" Text="罚单编号："></asp:Label>
                        </td>
                        <td style="text-align: left" height="25">
                            <asp:TextBox ID="finesTicketNo_edit" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right" height="25" width="40%">
                            <asp:Label ID="Label4" runat="server" Text="违章类型："></asp:Label>
                        </td>
                        <td style="text-align: left" height="25">
                            <asp:TextBox ID="finesStyle_edit" runat="server"></asp:TextBox>
                            &nbsp;<asp:Label ID="Label8" runat="server" Text="如：1001A"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right" class="style8" width="40%" height="25">
                            <asp:Label ID="Label5" runat="server" Text="违章地点："></asp:Label>
                        </td>
                        <td style="text-align: left" class="style8" height="25">
                            <asp:TextBox ID="finesPlace_edit" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right" height="25" width="40%">
                            <asp:Label ID="Label6" runat="server" Text="违章时间："></asp:Label>
                        </td>
                        <td style="text-align: left" height="25">
                            <asp:TextBox ID="finesTime_edit" runat="server"></asp:TextBox>
                        &nbsp;<asp:Label ID="Label9" runat="server" Text="如：2012-6-5 13:30:00"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right" height="25" width="40%">
                            违章车辆车牌号码：</td>
                        <td style="text-align: left" height="25">
                            <asp:TextBox ID="finesCarNo_edit" runat="server"></asp:TextBox>
                        &nbsp;<asp:Label ID="Label10" runat="server" Text="如：粤AB1234"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right" height="25" width="40%">
                            <asp:Label ID="Label7" runat="server" Text="违章驾驶证号："></asp:Label>
                        </td>
                        <td style="text-align: left" height="25">
                            <asp:TextBox ID="finesDriverLisence_edit" runat="server"></asp:TextBox>
                        &nbsp;<asp:Label ID="Label11" runat="server" Text="如：123456789123456789"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right" height="25" width="40%">
                            <asp:Label ID="Label12" runat="server" Text="处理情况："></asp:Label>
                        </td>
                        <td style="text-align: left" height="25">
                            <asp:CheckBox ID="havedHandle_check" runat="server" Text="已处理" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center" colspan="2" height="60">
                            <asp:Button ID="confirmAdd_bt" runat="server" Height="30px" Text="确认录入" />
                        </td>
                    </tr>
                </table>
            </div>
            <div style="width:100%;height:auto;margin-top:20px;text-align:center;">
                <div style="text-align:left;padding-left:20px;">
                    <asp:Label ID="Label13" runat="server" Text="录入操作结果信息表："></asp:Label>
                </div>
                <div style="height:auto;margin-top:5px;">
                    <asp:TextBox ID="addActionInfo_edit" runat="server" 
                        TextMode="MultiLine" Width="80%" Height="100px" ReadOnly="True">还没有录入罚单。</asp:TextBox>
                </div>
            </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>

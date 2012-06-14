<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<link rel="stylesheet" href="DefaultStyle.css" type="text/css" /> 
    <title>交通违规罚款系统</title>
    <style type="text/css">
        .style7
        {
        }
        .style9
        {
            width: 187px;
        }
        .style10
        {
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
        <div class="loginTab">
            <div class="loginCarNo">
                <div style="margin-left: 110px; padding-top: 48px;">
                    <table>
                        <tr>
                            <td style="text-align: right">
                    <asp:Label ID="CarStyle_label" runat="server" Text="号牌种类："></asp:Label>
                            </td>
                            <td>
                    <asp:DropDownList ID="carStyle_DropDownList" runat="server" Width="120px">
                    </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right" width="100px">
                    <asp:Label ID="Label1" runat="server" Text="号牌号码： "></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="placeName_dropList" runat="server" Width="45px">
                                </asp:DropDownList>
                    <asp:TextBox ID="carNo_edit" runat="server" Width="75px">A</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right" width="100px">
                    <asp:Label ID="Label2" runat="server" Text="车架号："></asp:Label>
                            </td>
                            <td>
                    <asp:TextBox ID="carFrame_edit" runat="server" Width="120px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right" width="100px">
                                <asp:Label ID="Label6" runat="server" Text="验证码："></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="CarLoginAuthCode_edit" runat="server" Width="39px"></asp:TextBox>
                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="CreateImg.aspx" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center" colspan="2">
                    <asp:Button ID="carNoCheck_btn" runat="server" Text="查询" Style="margin-top: 10px;" Height="35px" Width="55px" OnClick="carNoCheck_btn_Click" />
                            </td>
                        </tr>
                    </table>
                    <br />
                </div>
            </div>
            <div class="loginDriverLicence">
                <div style="margin-left:130px; margin-top:55px;">
                    <table>
                        <tr>
                            <td class="style7" style="text-align: right" height="25px">
                                <asp:Label ID="LabelName" runat="server" Text="姓名："></asp:Label>
                            </td>
                            <td class="style6" style="text-align: left" height="25px">
                                <asp:TextBox ID="checkDriverLicenseName_edit" runat="server" Width="120px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7" style="text-align: right" height="25px">
                                <asp:Label ID="Label4" runat="server" Text="驾驶证号："></asp:Label>
                            </td>
                            <td class="style6" style="text-align: left" height="25px">
                                <asp:TextBox ID="checkDriverLicenceNo_edit" runat="server" Width="120px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7" style="text-align: right" height="25px">
                                <asp:Label ID="Label5" runat="server" Text="验证码："></asp:Label>
                            </td>
                            <td class="style6" style="text-align: left" height="25px">
                                <asp:TextBox ID="driverLisenceCheck_edit" runat="server" Width="40px"></asp:TextBox>
                                <asp:ImageButton ID="driverLoginCheckImag" runat="server" ImageUrl="CreateImg.aspx"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7" style="text-align: center" colspan="2">
                    <asp:Button ID="driverLicenceCheck_btn" runat="server" Text="查询" Style="margin-top: 25px;" Height="35px" Width="55px" OnClick="driverLicenceCheck_btn_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div style="width:100%;height:50px; color: #FF0000; vertical-align: middle; text-align: center;">
            <asp:Label ID="loginError_label" runat="server"></asp:Label>
        </div>
        <div style="width:100%;height:50px; color: #FF0000; text-align: right; margin-right:40px;">
            <asp:LinkButton ID="adminLogin_lb" runat="server" 
                PostBackUrl="AdminLogin.aspx">管理员入口&gt;&gt;</asp:LinkButton>
        </div>
        <div style="width:100%;color: #000000; text-align: center;">
            <div>
            <asp:Image ID="bank_img" runat="server" ImageUrl="~/src_image/bank.gif" />
            </div>
            <div style="padding-top:10px;">
            <asp:Label ID="contactInfo" runat="server" Font-Size="Small"
                Text="客服热线（免长途费）400-830-2003 传真：020-22221763 客服邮箱：1525178929@qq.com " 
                ForeColor="#333333"></asp:Label>
            </div>
            <div style="padding-top:5px;">
            <asp:Label ID="webInfo" runat="server" Font-Size="Small" 
                Text="版权所有：**交通违章查询网 Copyright © www.****.net All Rights Reserved. 粤ICP备********号" 
                ForeColor="#333333"></asp:Label>
            </div>
        </div>
    </div>
    </form>
</body>
</html>

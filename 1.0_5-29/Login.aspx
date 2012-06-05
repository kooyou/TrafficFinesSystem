<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

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
                            <asp:LinkButton ID="home_linkbtn" runat="server" ForeColor="White">首页</asp:LinkButton>
                        </td>
                        <td class="style2">
                            <asp:LinkButton ID="fines_menu" runat="server" ForeColor="White">缴费罚款</asp:LinkButton>
                        </td>
                        <td class="style2">
                            <asp:LinkButton ID="play_menu" runat="server" ForeColor="White">在线演示</asp:LinkButton>
                        </td>
                        <td class="style2">
                            <asp:LinkButton ID="problem_menu" runat="server" ForeColor="White">常见问题</asp:LinkButton>
                        </td>
                        <td class="style2">
                            <asp:LinkButton ID="trafficInfo_menu" runat="server" ForeColor="White">交通信息</asp:LinkButton>
                        </td>
                        <td class="style3">
                            <asp:LinkButton ID="illegalInfo_menu" runat="server" ForeColor="White">违规信息</asp:LinkButton>
                        </td>
                        <td class="style4">
                            <asp:LinkButton ID="chatOnline_menu" runat="server" ForeColor="White">在线留言</asp:LinkButton>
                        </td>
                        <td>
                            <asp:LinkButton ID="contact_menu" runat="server" ForeColor="White">联系我们</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="loginTab">
            <div class="loginCarNo">
                <div style="padding-left: 145px; padding-top: 63px;">
                    <asp:Label ID="CarStyle_label" runat="server" Text="号牌种类："></asp:Label>
                    <asp:DropDownList ID="carStyle_DropDownList" runat="server" Width="104px">
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="号牌号码： 粤"></asp:Label>
                    <asp:TextBox ID="carNo_edit" runat="server" Width="74px">A</asp:TextBox>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="车架号："></asp:Label>
                    <asp:TextBox ID="carFrame_edit" runat="server" Width="100px" Style="margin-left: 15px;"></asp:TextBox>
                    <br />
                    <asp:Button ID="carNoCheck_btn" runat="server" Text="查询" Style="margin-left: 70px;
                        margin-top: 15px;" Height="35px" Width="55px" OnClick="carNoCheck_btn_Click" />
                </div>
            </div>
            <div class="loginDriverLicence">
                <div style="padding-left: 135px; padding-top: 70px;">
                    <table style="width: 71%; margin-right: 0px;">
                        <tr>
                            <td class="style5">
                                姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：
                            </td>
                            <td class="style6">
                                <asp:TextBox ID="checkDriverLicenseName_edit" runat="server" Width="100px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                驾驶证号：
                            </td>
                            <td class="style6">
                                <asp:TextBox ID="checkDriverLicenceNo_edit" runat="server" Width="100px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="driverLicenceCheck_btn" runat="server" Text="查询" Style="margin-left: 70px;
                        margin-top: 15px;" Height="35px" Width="55px" OnClick="driverLicenceCheck_btn_Click" />
                </div>
            </div>
        </div>
        <div style="width:100%;height:100px; color: #FF0000; vertical-align: middle; text-align: center;">
            <asp:Label ID="loginError_label" runat="server"></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>

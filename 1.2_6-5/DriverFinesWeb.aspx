<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DriverFinesWeb.aspx.cs" Inherits="DriverFinesWeb" %>

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
        <div class="carFines">
            <div class="carInfo" style="border-style: groove; border-width: medium"> 
                <table style="width: 100%; height: 218px; margin-top:50px;">
                    <tr>
                        <td align="center" valign="middle">
                            <asp:Image ID="DriverImage" runat="server" Height="120px" Width="120px" 
                                ImageUrl="~/src_image/cimg_3.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left:50px;">
                            <asp:Label ID="driverNamelabel" runat="server" Text="姓名："></asp:Label>
                            <asp:Label ID="driverName_label" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left:50px;">
                            <asp:Label ID="Label1" runat="server" Text="驾驶证号："></asp:Label>
                            <asp:Label ID="driverLicenseNo_label" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="finesInfo" align="center" 
                style="border-style: groove; vertical-align: middle">
                <div class="list_title">
                    交通违法未处理记录
                </div>
                <div class="GridViewList">
                <asp:GridView ID="driverFinesInfoList" runat="server"
                AllowPaging="True"
                CssClass="GridViewStyle" GridLines="Vertical" Width="90%" BackColor="White" 
                    BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    ForeColor="Black" Height="200px" PageSize="5" >
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                </div>
                <div class="list_title">
                办理历史
                </div>
                <div class="GridViewList">
                <asp:GridView ID="historyDriverFinesInfoList" runat="server"
                AllowPaging="True"
                CssClass="GridViewStyle" GridLines="Vertical" Width="90%" BackColor="White" 
                    BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    ForeColor="Black"
                    Height="200px" PageSize="5">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>

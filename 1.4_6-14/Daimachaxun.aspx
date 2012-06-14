<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Daimachaxun.aspx.cs" Inherits="Daimachaxun" %>

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
                                PostBackUrl="Daimachaxun.aspx">违规信息</asp:LinkButton>
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
        <div style="width:100%;padding-top:30px;padding-bottom:20px;text-align:center;">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" 
                Text="交通违章代码查询"></asp:Label>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" 
                DataSourceID="DaimachaxunObjectDataSource">
            </asp:GridView>
            <asp:ObjectDataSource ID="DaimachaxunObjectDataSource" runat="server"
            TypeName="DLLManager.FinesStyleRequery" SelectMethod="GetRecord">
            </asp:ObjectDataSource>
        </div>
    </div>
    </form>
</body>
</html>

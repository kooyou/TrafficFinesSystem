<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PayFinesWeb.aspx.cs" Inherits="PayFinesWeb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="DefaultStyle.css" type="text/css" />
    <title>交通违规罚款系统</title>
    <style type="text/css">
        .style7
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
     <div class="payFinesInfo">
     <div style="padding-top:30px;padding-bottom:20px;">
         <asp:Label ID="payfines_label" runat="server" Font-Bold="True" 
             Font-Size="Larger" Font-Strikeout="False" ForeColor="Black" Text="交通违规缴费信息"></asp:Label>
     </div>
     <div class="">
         <table style="width:100%;">
             <tr>
                 <td class="style7" style="text-align: right; padding-left: 5px;">
                     车牌号：<asp:TextBox 
                         ID="payCarNo_edit" runat="server" Font-Bold="True" ReadOnly="True"></asp:TextBox>
                 </td>
                 <td style="text-align: left; text-indent: 10px">
                     罚单编号：<asp:TextBox ID="payTicketNo_edit" runat="server" Font-Bold="True" 
                         ReadOnly="True"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="style7" style="text-align: right; padding-left: 5px;">
                     驾照号：<asp:TextBox ID="padLicenseNo_edit" runat="server" 
                         Font-Bold="True"></asp:TextBox>
                 </td>
                 <td style="text-align: left; text-indent: 10px">
                     违规类型：<asp:TextBox ID="payFinesStyle_edit" runat="server" Font-Bold="True" 
                         ReadOnly="True"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="style7" style="text-align: right">
                     <asp:Label ID="Label1" runat="server" Text="驾照缴费密码："></asp:Label>
                     <asp:TextBox ID="dlPayPsw_edit" runat="server" TextMode="Password"></asp:TextBox>
                 </td>
                 <td style="text-align: left; text-indent: 10px">
                     驾照扣分：<asp:TextBox ID="payDePoint_edit" runat="server" Font-Bold="True" 
                         ReadOnly="True"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="style7" style="text-align: right">
                     &nbsp;</td>
                 <td style="text-align: left; text-indent: 10px">
                     罚款金额：<asp:TextBox 
                         ID="payFinesMemoy_edit" runat="server" Font-Bold="True" ReadOnly="True"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="style7" style="padding: 10px 5px 10px 0px; text-align: center; vertical-align: top;" 
                     colspan="2">
                     验证码：<asp:TextBox ID="payAuthCode_edit" runat="server" 
                         Width="57px"></asp:TextBox>
                    
                     <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="CreateImg.aspx" />
                    
                 </td>
             </tr>
         </table>
     </div>
     <div>
         <asp:Label ID="payFinesErrorInfo_label" runat="server" ForeColor="Red"></asp:Label>
     </div>
     <div style="padding-top:10px;padding-bottom:70px;">

         <asp:Button ID="payAffirm_btn" runat="server" Height="30px" Text="确认" 
             Width="60px" onclick="payAffirm_btn_Click" />
         <asp:Button ID="payDelete_btn" runat="server" Height="30px" Text="取消" 
             Width="60px" />

     </div>
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

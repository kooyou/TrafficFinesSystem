using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void adminLogin_bt_Click(object sender, EventArgs e)
    {
        if (adminLoginAuthCode_edit.Text != (String)Session["check"])
        {
            adminLoginError_label.Text = "验证码输入有误！";
            return;
        }
        if (adminName_edit.Text != "admin" || 
            adminPsw_edit.Text != "admin")
        {
            return;
        }
        Session.Add("adminHandlerRegister", "OK");
        Response.Redirect("AdminHandlerWeb.aspx", true);
    }
}
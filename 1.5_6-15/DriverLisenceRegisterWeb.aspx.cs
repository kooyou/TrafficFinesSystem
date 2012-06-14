using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DLLManager;

public partial class DriverLisenceRegisterWeb : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        registerErrorInfo_label.Text = null;
        if ((String)Session["adminHandlerRegister"] != "OK")
        {
            Response.Redirect("AdminLogin.aspx", true);
        }
    }
    protected void DriverLisenceRegister_bt_Click(object sender, EventArgs e)
    {
        if (registerAuthCode_edit.Text != (String)Session["check"])
        {
            registerErrorInfo_label.Text = "验证码输入有误！";
            return;
        }
        if (registerPsw_edit.Text != registerPswConfirm_edit.Text)
        {
            registerErrorInfo_label.Text = "两次输入的密码不一致，请重新输入！";
            return;
        }

        //判断驾驶证号是否存在
        DriverLicense driverLicense = new DriverLicense();
        driverLicense.no = registerDriverLisence_edit.Text;
        driverLicense.name = registerName_edit.Text;

        if (!driverLicense.LoginCheck())
        {
            registerErrorInfo_label.Text = "注册错误：没有该驾驶证号！";
            return;
        }
        DriverLisencePayOnline drivreLisencePayOnline=new DriverLisencePayOnline();
        drivreLisencePayOnline.DriverLisenceNo = registerDriverLisence_edit.Text;
        drivreLisencePayOnline.Name = registerName_edit.Text;
        drivreLisencePayOnline.ID = registerID_edit.Text;
        drivreLisencePayOnline.psw = registerPsw_edit.Text;
        if (!drivreLisencePayOnline.InsertFinesInfo())
        {
            registerErrorInfo_label.Text = "注册错误：注册信息有误！";
            return;
        }
        Response.Write("<script>window.alert('注册成功！');</script>");
    }
}
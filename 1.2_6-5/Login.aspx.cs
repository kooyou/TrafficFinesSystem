using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DLLManager;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        InitCtrl();
    }

    private bool InitCtrl()
    {
        String[] carStyle = { "小型汽车", "大型汽车", "境外汽车", "外籍汽车","普通摩托车","轻便摩托车","境外摩托车","低速车","拖拉机","挂车","教练汽车","教练摩托车","临时入境汽车","临时入境摩托车","临时行驶车","原农机号牌","香港入出境车","澳门入出境车" };
        for(int i=0;i<18;i++)
        {
            ListItem listItem = new ListItem();
            listItem.Text = carStyle[i];
            carStyle_DropDownList.Items.Add(listItem);
        }

        return true;
    }
    protected void carNoCheck_btn_Click(object sender, EventArgs e)
    {
        Car car=new Car();
        car.carNo=carNo_edit.Text;
        car.carFrameNo=carFrame_edit.Text;
        car.carStyle=carStyle_DropDownList.Text;
        if (car.LoginCheck())
        {
            Session.Add("carLoginInfo", car);
            Response.Redirect("CarFinesWeb.aspx", true);
        }
        else
        {
            loginError_label.Text = "查询错误：没有该车牌号码！";
        }
    }
    protected void driverLicenceCheck_btn_Click(object sender, EventArgs e)
    {
        DriverLicense driverLicense = new DriverLicense();
        driverLicense.no = checkDriverLicenceNo_edit.Text;
        driverLicense.name = checkDriverLicenseName_edit.Text;

        if (driverLicense.LoginCheck())
        {
            Session.Add("DriverLoginInfo", driverLicense);
            Response.Redirect("DriverFinesWeb.aspx", true);
        }
        else
        {
            loginError_label.Text = "查询错误：没有该驾驶证号！";
        }
    }
}
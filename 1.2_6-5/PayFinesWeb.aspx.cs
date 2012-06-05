using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PayFinesWeb : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        InitCtr();
    }
    private void InitCtr()
    {
        if (null == Session["demandInfo"])
        {
            Response.Redirect("Login.aspx", true);
        }
        DemandInfo demandInfo = (DemandInfo)Session["demandInfo"];
        payCarNo_edit.Text = demandInfo.carNo;
        payTicketNo_edit.Text = demandInfo.payTicketNo;
        payFinesStyle_edit.Text = demandInfo.finesStyle;
        payDePoint_edit.Text = demandInfo.dePoint;
        payFinesMemoy_edit.Text = demandInfo.finesMemoy+"元";
    }

    protected void payAffirm_btn_Click(object sender, EventArgs e)
    {

    }
}
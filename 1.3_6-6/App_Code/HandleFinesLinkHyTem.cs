using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;

/// <summary>
///HandleFinesLinkHyTem 的摘要说明
/// </summary>
public class HandleFinesLinkHyTem : ITemplate
{
    public LinkButton linkButton;
    #region 
    public void InstantiateIn(Control container)
    {
        linkButton = new LinkButton();
        linkButton.Click
            += new EventHandler(lb_click);
        linkButton.CommandName = "Select";
        linkButton.Text = "去处理";
    //    linkButton.PostBackUrl = "PayFinesWeb.aspx";
        container.Controls.Add(linkButton);
    }
    #endregion
    public HandleFinesLinkHyTem()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    protected void lb_click(object sender, EventArgs e)
    {

    }
}
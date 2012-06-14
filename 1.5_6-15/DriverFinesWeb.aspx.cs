using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DLLManager;
using System.Data;
using System.Collections;

public partial class DriverFinesWeb : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (null == Session["DriverLoginInfo"])
            Response.Redirect("Login.aspx", true);

        DriverLicense driverLicense = (DriverLicense)Session["DriverLoginInfo"];
        Session.Remove("DriverLoginInfo");

          DriverFinesInfoQuery driverFinesInfoQuery = 
              new DriverFinesInfoQuery();
          List<String[]> list = driverFinesInfoQuery.QueryFinesInfo(driverLicense);
          if (null != list)
          {
              SetDriverInfo(driverLicense);
              InitInfoList(list);
          }
    }

    private bool SetDriverInfo(DriverLicense driverLicense)
    {
        driverName_label.Text = driverLicense.name;
        driverLicenseNo_label.Text = driverLicense.no;

        return true;
    }

    private bool InitInfoList(List<String[]> list)
    {
    /*    String[] headerStr = { "罚单编号", "违章类型", "罚款", 
                                 "扣分","违章时间" };

        for (int i = 0; i < 4; i++)
        {
            BoundField boundField = new BoundField();
            for(int j=0;j<list.Count;++j)
            {
                boundField.DataField.Insert(0,list[j][0]);
            }
            boundField.HeaderText = headerStr[i];
            driverFinesInfoList.Columns.Add(boundField);
        }

        HyperLinkField hyperLinkField = new HyperLinkField();
        for(int j=0;j<list.Count;++j)
        {
            hyperLinkField.Text = "wocao!";
            //hyperLinkField.DataTextField.Insert(0, list[j][0]);
        }
        hyperLinkField.HeaderText = "处理情况";
        driverFinesInfoList.Columns.Add(hyperLinkField);

        driverFinesInfoList.DataBind();

        return AddListData(list);*/

        //办理历史列表
        DataTable dtHistory = ReadGridView();
        DataTable dt = ReadGridView();

        int dtI = 0;
        int dtHistoryI = 0;
        for (int i = 0; i < list.Count; ++i)
        {
            if (list[i][5] != "已办理")
            {
                DataRow row = dt.NewRow();
                row.ItemArray = new object[] { list[i][0], list[i][1], list[i][2], list[i][3], list[i][4] };
                dt.Rows.InsertAt(row, dtI++);
            }
            else
            {
                DataRow row = dtHistory.NewRow();
                row.ItemArray = new object[] { list[i][0], list[i][1], list[i][2], list[i][3], list[i][4] };
                dtHistory.Rows.InsertAt(row, dtHistoryI++);
            }
        }
        dt.AcceptChanges();
        driverFinesInfoList.DataSource = dt;
        driverFinesInfoList.DataBind();

        //驾照没有支付罚款的功能
  /*      HyperLinkField hyperLinkField = new HyperLinkField();
        hyperLinkField.HeaderText = "处理情况";
        driverFinesInfoList.Columns.Add(hyperLinkField);
        hyperLinkField.Text = "未处理";
        hyperLinkField.NavigateUrl = "http://www.baidu.com";
        driverFinesInfoList.DataBind();*/

        dtHistory.AcceptChanges();
        historyDriverFinesInfoList.DataSource = dtHistory;
        historyDriverFinesInfoList.DataBind();

        return true;
    }

    private DataTable ReadGridView()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add(new DataColumn("罚单编号", typeof(string)));
        dt.Columns.Add(new DataColumn("违章类型", typeof(string)));
        dt.Columns.Add(new DataColumn("罚款", typeof(string)));
        dt.Columns.Add(new DataColumn("扣分", typeof(string)));
        dt.Columns.Add(new DataColumn("违章时间", typeof(string)));
        //     dt.Columns.Add(new DataColumn("办理情况", typeof(string)));
        return dt;
    }

    private bool AddListData(List<String[]> list)
    {
        return true;
    }
}
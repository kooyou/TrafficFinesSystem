using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;

using DLLManager;

public partial class CarFinesWeb : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (null == Session["carLoginInfo"])
        {
            Response.Redirect("Login.aspx", true);
        }
        //设置PayOnLine Session
        Session.Add("payonline", "payonline");

        Car car = (Car)Session["carLoginInfo"];
        CarFinesInfoQuery carFinesInfoQuery = new CarFinesInfoQuery();
        List<String[]> list = carFinesInfoQuery.QueryFinesInfo(car);
        if (null != list)
        {
            SetCarInfo(car);
            InitInfoList(list);
        }
    }

    private bool SetCarInfo(Car car)
    {
        carNoStyle_label.Text = car.carStyle;
        carNo_label.Text = "粤" + car.carNo;
        carFrameNo_label.Text = car.carFrameNo;
        return true;
    }

    private bool InitInfoList(List<String[]> list)
    {
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
        carFinesInfoList.DataSource = dt;
        carFinesInfoList.AllowPaging = true;
        carFinesInfoList.PageSize = 5;
        carFinesInfoList.EnableSortingAndPagingCallbacks = false;
        carFinesInfoList.DataBind();

        TemplateField tf = new TemplateField();
        tf.ItemTemplate = new HandleFinesLinkHyTem();
        tf.HeaderText = "处理情况";
        carFinesInfoList.Columns.Add(tf);
        carFinesInfoList.RowCommand += new GridViewCommandEventHandler(rowCommandEevnt);
        carFinesInfoList.DataBind();

        dtHistory.AcceptChanges();
        historyFinesInfoList.DataSource = dtHistory;
        historyFinesInfoList.DataBind();

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
        return dt;
    }

    protected void rowCommandEevnt(object sender, EventArgs e)
    {
    }
    protected void finesSelectedChanged(object sender, EventArgs e)
    {
        // Get the currently selected row using the SelectedRow property.
        GridViewRow row = carFinesInfoList.SelectedRow;
        DemandInfo demandInfo = new DemandInfo();
        demandInfo.payTicketNo = row.Cells[2].Text.ToString();
        demandInfo.finesStyle = row.Cells[3].Text;
        demandInfo.finesMemoy = row.Cells[4].Text;
        demandInfo.dePoint = row.Cells[5].Text;
        demandInfo.carNo = carNo_label.Text;
        Session.Add("demandInfo", demandInfo);
        Response.Redirect("PayFinesWeb.aspx", true);
    }
    protected void carFinesInfoListPageIndexChanged(object sender, EventArgs e)
    {

    }
    protected void carFinesInfoListPageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DLLManager;

public partial class AdminHandlerWeb : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void confirmAdd_bt_Click(object sender, EventArgs e)
    {
        FinesInfoData insertData = new FinesInfoData();
        insertData.finesTicketNo = finesTicketNo_edit.Text;
        insertData.finesType = finesStyle_edit.Text;
        insertData.finesTime = finesTime_edit.Text;
        insertData.finesPlace = finesPlace_edit.Text;
        insertData.finesCarNo = finesCarNo_edit.Text;
        insertData.finesDriverLisenceNo = 
            finesDriverLisence_edit.Text;
        if (havedHandle_check.Checked)
            insertData.isHandler = 1;
        else
            insertData.isHandler = 0;

        if (insertData.InsertFinesInfo())
        {
            if (addActionInfo_edit.Text == "还没有录入罚单。")
            {
                addActionInfo_edit.Text = "";
            }
            addActionInfo_edit.Text = DateTime.Now.ToString() +
                "\n录入成功。罚单信息：编号"
                + insertData.finesTicketNo + ",违规类型" +
                insertData.finesType + ",违规车辆"
                + insertData.finesCarNo + "\n" + 
                addActionInfo_edit.Text;
        }
        else
        {
            addActionInfo_edit.Text = DateTime.Now.ToString() +
                "\n录入失败！\n" +
                    addActionInfo_edit.Text;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataManager;

namespace DLLManager
{
    public class FinesInfoData
    {
        public String finesTicketNo { get; set; }
        public String finesType { get; set; }
        public String finesPlace { get; set; }
        public String finesTime { get; set; }
        public String finesCarNo { get; set; }
        public String finesDriverLisenceNo { get; set; }
        public int isHandler { get; set; }
        public bool InsertFinesInfo()
        {
            FinesInfoInsert finesInfoInsert = new FinesInfoInsert();
            FinesInfo finesInfo = new FinesInfo();
            finesInfo.ticketID = finesTicketNo;
            finesInfo.ticketNo = finesType;
            try
            {
                finesInfo.time = Convert.ToDateTime(finesTime);
            }
            catch
            {
                //finesInfo.time = null;
            }
            finesInfo.carNo = finesCarNo;
            finesInfo.driverLicenseNo = finesDriverLisenceNo;
            return finesInfoInsert.InsertFinesTicket(finesInfo);
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataManager;

namespace DLLManager
{
    public class DriverLisencePayOnline
    {
        public String DriverLisenceNo { get; set; }
        public String Name { get; set; }
        public String ID { get; set; }
        public String psw { get; set; }

        public bool InsertFinesInfo()
        {
            DLPayOnlineInfoInsert dlPayOnlineInfoInsert = new DLPayOnlineInfoInsert();
            DriverLisencePayOnlineInfo driverLisencePayOnlineInfo = new DriverLisencePayOnlineInfo();
            driverLisencePayOnlineInfo.DriverLisenceNo = DriverLisenceNo;
            driverLisencePayOnlineInfo.Name = Name;
            driverLisencePayOnlineInfo.ID = ID;
            driverLisencePayOnlineInfo.psw = psw;
            return dlPayOnlineInfoInsert.InsertDriverLisenceInfo(driverLisencePayOnlineInfo);
        }
    }
}

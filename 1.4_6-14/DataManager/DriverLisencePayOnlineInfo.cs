using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataManager
{
    public class DriverLisencePayOnlineInfo
    {
        public virtual String DriverLisenceNo { get; set; }
        public virtual String Name { get; set; }
        public virtual String ID { get; set; }
        public virtual String psw { get; set; }
        public DriverLisencePayOnlineInfo()
        {
        }
    }
}

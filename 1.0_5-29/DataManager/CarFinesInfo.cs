using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace DataManager
{
    public class CarFinesInfo
    {
        public virtual String ticketID { get; set; }
        public virtual String ticketNo { get; set; }
        public virtual int fines { get; set; }
        public virtual int deductions { get; set; }
        public virtual DateTime time { get; set; }
        public virtual String carNo { get; set; }
        public virtual bool isTransact { get; set; }

        public CarFinesInfo()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }
    }
}
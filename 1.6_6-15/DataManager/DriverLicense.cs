using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataManager;

namespace DataManager
{
    public class DriverLicense
    {
        public virtual String name{get;set;}
        public virtual String no{get;set;}
        public DriverLicense()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }
        public virtual bool LoginCheck(object sender, EventArgs e)
        {
            DataLoginCheck dataLoginCheck = 
                new DataLoginCheck();
        //    dataLoginCheck.LoginCheck();
      //      dataLoginCheck.LoginCheckDriverLiscense(this);
            return true;
        }
    }
}

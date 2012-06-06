using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataManager
{
    public class Car
    {
        public virtual String carNo { get; set; }
        public virtual String carStyle { get; set; }
        
        public virtual String carFrameNo { get; set; }
        public Car()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }
        public virtual bool LoginCheck(object sender, EventArgs e)
        {
            DataLoginCheck dataLoginCheck
                =new DataLoginCheck();
       //     dataLoginCheck.LoginCheckCar();
            return true;
        }
    }
}

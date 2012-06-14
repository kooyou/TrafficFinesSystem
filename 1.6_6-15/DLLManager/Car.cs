using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataManager;

namespace DLLManager
{
    public class Car :  Login
    {
        public String carStyle { get; set; }
        public String carNo { get; set; }
        public String carFrameNo { get; set; }
        public Car()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }
        public override bool LoginCheck()
        {
            DataLoginCheck dataLoginCheck
                =new DataLoginCheck();
            DataManager.Car dataCar= new DataManager.Car();
            dataCar.carNo = this.carNo;
            dataCar.carFrameNo = this.carFrameNo;
            dataCar.carStyle = this.carStyle;
            return dataLoginCheck.LoginCheck(dataCar, DataLoginCheck.carStyle);
        }
    }
}

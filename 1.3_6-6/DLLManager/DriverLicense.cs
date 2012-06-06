using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataManager;

namespace DLLManager
{
    public class DriverLicense : Login
    {
        public String name;
        public String no;
        public DriverLicense()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }
        public override bool LoginCheck()
        {
            DataLoginCheck dataLoginCheck = 
                new DataLoginCheck();
            DataManager.DriverLicense dataLicese = new DataManager.DriverLicense();
            dataLicese.no = this.no;
            dataLicese.name = this.name;
            return dataLoginCheck.LoginCheck(
                dataLicese, DataLoginCheck.driverLicenseStyle);
        }
    }
}

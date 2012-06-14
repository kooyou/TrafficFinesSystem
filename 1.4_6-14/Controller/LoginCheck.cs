using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DLLManager;

namespace Controller
{
    public class LoginCheck
    {
        public static int carStyle = 1;
        public static int driverLicenseStyle = 2;
        public Car car = new Car();
        public DriverLicense driverLicense = new DriverLicense();
        public bool CheckLogin(int checkStyle)
        {
            if (checkStyle == carStyle)
            {
                
                return car.LoginCheck();
            }
            else if(checkStyle == driverLicenseStyle)
            {
                return driverLicense.LoginCheck();
            }
            return false;
        }
    }
}

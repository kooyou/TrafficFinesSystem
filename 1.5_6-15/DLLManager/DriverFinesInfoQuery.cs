using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DLLManager
{
    public class DriverFinesInfoQuery
    {
        private DataManager.DriverFinesInfoCheck driverFinesInfoCheck;

        public DriverFinesInfoQuery()
        {
            driverFinesInfoCheck = new DataManager.DriverFinesInfoCheck();
        }

        public List<String[]> QueryFinesInfo(DriverLicense driverLicense)
        {
            driverFinesInfoCheck.driverLicense = 
                new DataManager.DriverLicense();
            driverFinesInfoCheck.driverLicense.no = driverLicense.no;
            driverFinesInfoCheck.driverLicense.name = 
                driverLicense.name;
            return driverFinesInfoCheck.GetCarFinesInfo();
        }
    }
}

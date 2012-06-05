using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using System.Collections;
using System.Diagnostics;

using NHibernate;
using NHibernate.Cfg;
using NHibernate.Dialect;
using NHibernate.Driver;
using NHibernate.Mapping.ByCode;

namespace DataManager
{
    public class DataLoginCheck : DBConnect
    {
        public static int carStyle = 1;
        public static int driverLicenseStyle = 2;

        public DataLoginCheck()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //

        }
        public bool LoginCheck(Object checkObject, int checkStyle)
        {
            String sqlStr;
            ISession session;
            if (checkStyle == 1)
            {
                Car car = (Car)checkObject;
                sqlStr = "from Car where carNo= '" + car.carNo + "' and  carFrameNo='" + car.carFrameNo + "' and carStyle='" + car.carStyle + "'";
                session = OpenSession(typeof(DataManager.Car));

            }
            else if (checkStyle == 2)
            {
                DriverLicense driverLicense =
                    (DriverLicense)checkObject;
                sqlStr = "from DriverLicense where no='" +
                    driverLicense.no +
                    "' and driverName = '" + driverLicense.name + "'";

                session = OpenSession(typeof(DataManager.DriverLicense));
            }
            else
            {
                return false;
            }

            // sqlStr = "from customer";s

            if (session != null)
            {
                IList results = session.CreateQuery(sqlStr).List();
                if (results.Count > 0)
                {
                    //        Car car = (Car)(results[0]);
                    //        Console.WriteLine(car);
                    return true;
                }
                session.Close();

                return false;
            }
            return false;
        }
    }
}

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
    public class DriverFinesInfoCheck : DBConnect
    {
        public DriverLicense driverLicense;
        public List<String[]> GetCarFinesInfo()
        {
            if (driverLicense == null)
                return null;

            String sqlStr;
            ISession session;
            session = OpenSession(typeof(DataManager.FinesInfo));
            //select ticketID,ticketNo,fines,time,isTransact
            sqlStr = "from FinesInfo where driverLicenseNo='" + 
                driverLicense.no + "'";
            if (session != null)
            {
                try
                {
                    IList results =
                        session.CreateQuery(sqlStr).List();
                    if (results.Count > 0)
                    {
                        List<String[]> carInfoList = 
                            new List<string[]>();
                        for (int i = 0; i < results.Count; i++)
                        {
                            String[] finesInfo = new String[6];
                            FinesInfo carFinesInfo = 
                                (FinesInfo)results[i];
                            finesInfo[0] = carFinesInfo.ticketID;
                            finesInfo[1] = carFinesInfo.ticketNo;
                            finesInfo[2] = 
                                carFinesInfo.fines.ToString();
                            finesInfo[3] = 
                                carFinesInfo.deductions.ToString();
                            finesInfo[4] = carFinesInfo.time.ToString();
                            if (carFinesInfo.isTransact)
                            {
                                finesInfo[5] = "已办理";
                            }
                            else
                            {
                                finesInfo[5] = "办理";
                            }

                            carInfoList.Add(finesInfo);
                        }
                        return carInfoList;
                    }
                }
                catch
                {
                }
                session.Close();
                return null;
            }
            return null;
        }
    }
}

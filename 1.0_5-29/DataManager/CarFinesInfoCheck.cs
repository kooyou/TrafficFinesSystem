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
    public class CarFinesInfoCheck : DBConnect
    {
        public Car car;
        public List<String[]> GetCarFinesInfo()
        {
            if (car == null)
                return null;

            String sqlStr;
            ISession session;
            session = OpenSession(typeof(DataManager.CarFinesInfo));
            sqlStr = "from CarFinesInfo where carNo='" + 
                car.carNo + "'";
            if (session != null)
            {
                try{
                    IList results =
                        session.CreateQuery(sqlStr).List();
                    if (results.Count > 0){
                        List<String[]> carInfoList=new List<string[]>();
                        for (int i = 0; i < results.Count; i++){
                            String[] carInfo = new String[6];
                            CarFinesInfo carFinesInfo=(CarFinesInfo)results[i];
                            carInfo[0] = carFinesInfo.ticketID;
                            carInfo[1] = carFinesInfo.ticketNo;
                            carInfo[2] = carFinesInfo.fines.ToString();
                            carInfo[3] = carFinesInfo.deductions.ToString();
                            carInfo[4] = carFinesInfo.time.ToString();
                            if (carFinesInfo.isTransact)
                            {
                                carInfo[5] = "已办理";
                            }
                            else
                            {
                                carInfo[5] = "办理";
                            }

                            carInfoList.Add(carInfo);
                        }
                        return carInfoList;
                    }
                }
                catch{
                }
                session.Close();
                return null;
            }
            return null;
        }
    }
}
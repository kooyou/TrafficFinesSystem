using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;

namespace DLLManager
{
    public class CarFinesInfoQuery
    {
        private DataManager.CarFinesInfoCheck carFinesInfoCheck;

        public CarFinesInfoQuery()
        {
            carFinesInfoCheck = new DataManager.CarFinesInfoCheck();
        }

        public List<String[]> QueryFinesInfo(Car car)
        {
            carFinesInfoCheck.car = new DataManager.Car();
            carFinesInfoCheck.car.carNo = car.carNo;
            carFinesInfoCheck.car.carFrameNo = car.carFrameNo;
            carFinesInfoCheck.car.carStyle = car.carStyle;
            return carFinesInfoCheck.GetCarFinesInfo();
        }
    }
}

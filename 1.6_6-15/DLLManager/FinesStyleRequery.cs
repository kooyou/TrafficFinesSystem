using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Collections;
using System.Data.Common;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.ComponentModel;
using DataManager;
using System.Reflection;

namespace DLLManager
{
    public class FinesStyleRequery
    {
        public DataTable GetRecord()
        {
            FinesStyleInfoRequery finesStyleInfo = new FinesStyleInfoRequery();
            IList iList=finesStyleInfo.FinesInfoRequery(null);
            if (iList == null)
                return null;

            DataTable result = new DataTable();
            if (iList.Count > 0)
            {
                PropertyInfo[] propertys = iList[0].GetType().GetProperties();
                foreach (PropertyInfo pi in propertys)
                {
                    result.Columns.Add(pi.Name, pi.PropertyType);
                }

                for (int i = 0; i < iList.Count; i++)
                {
                    ArrayList tempList = new ArrayList();
                    foreach (PropertyInfo pi in propertys)
                    {
                        object obj = pi.GetValue(iList[i], null);
                        tempList.Add(obj);
                    }
                    object[] array = tempList.ToArray();
                    result.LoadDataRow(array, true);
                }
            }
            return result;
        }
 
 

    }
}

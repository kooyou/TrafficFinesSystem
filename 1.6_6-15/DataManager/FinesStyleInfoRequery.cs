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
    public class FinesStyleInfoRequery : DBConnect
    {
        public virtual IList FinesInfoRequery(String finescode)
        {
            String sqlStr;
            if (finescode == null)
            {
                sqlStr = "from FinesCodeInfo";
            }
            else
            {
                sqlStr = "from daimachaxun where codeID='" +
                    finescode + "'";
            }
            ISession session;
            session = OpenSession(
                typeof(DataManager.FinesStyleInfo));
            if (session != null)
            {
                IList results = session.CreateQuery(sqlStr).List();
                session.Close();
                return results;
            }
            return null;
        }
    }
}

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
    public class DBConnect
    {
            private ISessionFactory sessionFactory = null;
            private void InitSessionFactory(Type classType)
            {
                if (sessionFactory == null)
                {
                    Configuration config = new Configuration();
                    config.AddClass(classType);
                    sessionFactory = config.BuildSessionFactory();
                    if (sessionFactory == null)
                    {
                        return;
                    }
                }

            }

            protected ISession OpenSession(Type classType)
            {
                if (sessionFactory == null)
                {
                    InitSessionFactory(classType);
                }
                if (sessionFactory == null)
                {
                    return null;
                }
                ISession session = sessionFactory.OpenSession();
                if (session == null)
                {
                    return null;
                }
                return session;
            }
    }
}

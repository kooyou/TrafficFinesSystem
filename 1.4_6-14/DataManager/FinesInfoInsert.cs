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
    public class FinesInfoInsert : DBConnect
    {
        public bool InsertFinesTicket(FinesInfo finesInfo)
        {
            ISession session;
            session = OpenSession(typeof(DataManager.FinesInfo));
            ITransaction vTransaction = session.BeginTransaction();
            //创建事物处理
            try
            {
                session.Save(finesInfo);//向数据库添加数据
                vTransaction.Commit();
                return true;
            }
            catch (Exception ex)
            {
                vTransaction.Rollback();
            }
            finally
            {
                session.Close();
            }
            return false;
        }
    }
}

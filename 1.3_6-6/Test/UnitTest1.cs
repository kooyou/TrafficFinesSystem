using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using DataManager;
using DLLManager;
using System.Collections;

namespace Test
{
    /// <summary>
    /// UnitTest1 的摘要说明
    /// </summary>
    [TestClass]
    public class UnitTest1
    {
        public UnitTest1()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }

        private TestContext testContextInstance;

        /// <summary>
        ///获取或设置测试上下文，该上下文提供
        ///有关当前测试运行及其功能的信息。
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region 附加测试特性
        //
        // 编写测试时，可以使用以下附加特性:
        //
        // 在运行类中的第一个测试之前使用 ClassInitialize 运行代码
        // [ClassInitialize()]
        // public static void MyClassInitialize(TestContext testContext) { }
        //
        // 在类中的所有测试都已运行之后使用 ClassCleanup 运行代码
        // [ClassCleanup()]
        // public static void MyClassCleanup() { }
        //
        // 在运行每个测试之前，使用 TestInitialize 来运行代码
        // [TestInitialize()]
        // public void MyTestInitialize() { }
        //
        // 在每个测试运行完之后，使用 TestCleanup 来运行代码
        // [TestCleanup()]
        // public void MyTestCleanup() { }
        //
        #endregion

        [TestMethod]
        public void TestCarData()
        {
            //
            // TODO: 在此处添加测试逻辑
            //
            DataLoginCheck dataLoginCheck = new DataLoginCheck();
            DataManager.Car car = new DataManager.Car();
            car.carNo = "ABC123";
            bool result=dataLoginCheck.LoginCheck(
                car, DataLoginCheck.carStyle);
            Assert.AreEqual(result,true);
        }

        [TestMethod]
        public void TestDLLData()
        {
            //
            // TODO: 在此处添加测试逻辑
            //
            DLLManager.Car car = new DLLManager.Car();
            car.carNo = "ABC123";
            car.LoginCheck();

            DataManager.CarFinesInfoCheck carFinesInfoCheck = new CarFinesInfoCheck();
            carFinesInfoCheck.car = new DataManager.Car();
            carFinesInfoCheck.car.carNo = "ABC123";
            IList iList=carFinesInfoCheck.GetCarFinesInfo();

            if(iList!=null)
                Assert.AreEqual(1, iList.Count);
        }
    }
}

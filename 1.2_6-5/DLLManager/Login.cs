using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DLLManager
{
    public class Login
    {
        public Login(){}
        ~Login(){}

        virtual public bool LoginCheck() { return false; }
    }
}

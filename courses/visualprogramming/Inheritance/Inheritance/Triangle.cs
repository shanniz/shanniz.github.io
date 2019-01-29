using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Inheritance
{
    class Triangle: TwoDShape
    {
        public Triangle()  : base(7) {            
            System.IO.File.AppendAllText("logs.txt",
                "\n derived class constructor called at " + DateTime.Now.ToString());
        }
    }
}

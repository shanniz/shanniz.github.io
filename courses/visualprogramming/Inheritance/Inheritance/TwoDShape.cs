using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Inheritance
{
    class TwoDShape
    {
        public int width;
        public int height;
        public TwoDShape() {
            this.width = this.height = 1;            
            System.IO.File.WriteAllText("logs.txt", 
                "parent class 0 args constructor called at "+ DateTime.Now.ToString());
        }

        public TwoDShape(int width = 5) {
            this.width = width;
            this.height = this.width * 2;
            System.IO.File.WriteAllText("logs.txt",
                "parent class 1 args constructor called at " + DateTime.Now.ToString());
        }

        public TwoDShape(int width = 2, int height = 2) {
            this.width = width;
            this.height = height;
            System.IO.File.WriteAllText("logs.txt",
                "parent class 2 args constructor called at " + DateTime.Now.ToString());
        }
        

        public string getDimensions() {
            string dim = "width = " + width.ToString();
            dim += ", height = " + height;
            return dim;
        }
    }
}

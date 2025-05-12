using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    public class Employee : Person
    {
        public Employee(string id, string name) : base(id, name)
        {
        }
        public override void Display()
        {
            Console.WriteLine($"Employee:id={id}, name:{name}");
        }
    }

    public class Manager : Employee
    {
        public Manager(string id, string name) : base(id, name)
        {
        }

    }
}

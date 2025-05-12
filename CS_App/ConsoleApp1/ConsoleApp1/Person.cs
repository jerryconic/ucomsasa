using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    internal class Person
    {
        protected string id, name;
        public Person(string id, string name)
        { this.id = id; this.name = name;}

        public virtual void Display()
        {
            Console.WriteLine($"id={id}, name={name}");
        }
    }
}

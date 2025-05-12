using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1;
internal class Person
{
    private string _id, _name;

    public Person(string id, string name)
    {
        _id = id;
        _name = name;
    }

    public void Display()
    {
        Console.WriteLine($"Id: {_id}, Name: {_name}");
    }
}

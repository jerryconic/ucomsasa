
/*
string id, name;
id = "C001";
name = "John";
Console.WriteLine($"id={id}, name={name}");
*/

using ConsoleApp1;

/*
Person p1 = new Person("C001", "John");
Person p2 = new Employee("C002", "Peter");
*/
List<Person> list = new List<Person> { 
    new Person("C001", "John"), 
    new Employee("C002", "Peter") 
}; 
foreach(Person p in list)
    p.Display();


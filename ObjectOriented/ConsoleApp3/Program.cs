using ConsoleApp3;

List<Entity> lst = new List<Entity> {
    new Point(3, 4),
    new Line(new Point(1, 1), new Point(4, 5)),
    new Circle(new Point(5, 5), 10)
};

foreach(Entity e in lst)
{
    Console.WriteLine(e.Detail());
}   
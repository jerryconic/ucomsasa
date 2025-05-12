using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApp3;

public class Circle:Entity
{
    private Point _center;
    private double _radius;
    public Circle(Point center, float radius)
    {
        _center = center;
        _radius = radius;
    }
    public override string Detail()
    {
        double area = Math.PI * _radius * _radius;
        return $"Circle: Center {_center.Detail()}, Radius {_radius}, Area:{area}";
    }
    public Point Center
    {
        get { return _center; }
        set { _center = value; }
    }
    public double Radius
    {
        get { return _radius; }
        set { _radius = value; }
    }
}
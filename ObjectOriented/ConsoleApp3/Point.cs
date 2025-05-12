using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApp3;

public class Point:Entity
{
    private double _x, _y;
    public Point(double x, double y)
    {
        _x = x;
        _y = y;
    }
    public override string Detail()
    {
        return $"Point:X={_x}, Y={_y}";
    }
    public double X
    {
        get { return _x; }
        set { _x = value; }
    }
    public double Y
    {
        get { return _y; }
        set { _y = value; }
    }
}

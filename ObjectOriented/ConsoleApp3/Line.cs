using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApp3;

public class Line:Entity
{
    private Point _start, _end;
    public Line(Point start, Point end)
    {
        _start = start;
        _end = end;
    }   
    public override string Detail()
    {
        double dx = _start.X - _end.X;
        double dy = _start.Y - _end.Y;
        return $"Line: Start {_start.Detail()}, End {_end.Detail()}, Length:{Math.Sqrt(dx*dx + dy* dy)}";
    }

}
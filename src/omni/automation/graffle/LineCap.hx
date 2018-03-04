package omni.automation.graffle;

@:native("LineCap")
extern class LineCap {

    // The line has a flat end cap, exactly at the end point of the line.
    static var Butt (default,null): LineCap;

    // The line has a round end cap, with the center at the end point of the
    // line, and radius of half its width.
    static var Round (default,null): LineCap;

    // The line has a flat end cap, extending half the line width past the end point.
    var Square (default,null): LineCap;
}

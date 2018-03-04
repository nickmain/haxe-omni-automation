package omni.automation.common;

@:native("Point")
extern class Point {

    // Returns a Point with coordinates (1, 0).
    static var unitX (default,null): Point;

    // Returns a Point with coordinates (0, 1).
    static var unitY (default,null): Point;

    // Returns the Point (0, 0), the origin.
    static var zero (default,null): Point;

    public function new(x: Float, y: Float);

    // Returns the distance between the receiver and the origin.
    var length (default,null): Float;

    // Returns the component-wise negative of the receiver.
    var negative (default,null): Point;

    // For a non-zero point, returns a point with a distance of one
    // from the origin, but in the same direction as the original.
    // For the zero point, this returns the receiver.
    var normalized (default,null): Point;

    // The horizontal axis coordinate of the Point.
    var x: Float;

    // The vertical axis coordinate of the Point.
    var y: Float;

    // Returns a new Point that is the component-wise sum of the
    // receiver and the argument Point.
    function add(point: Point): Point;

    // Returns a new Point that is the component-wise difference of the
    // receiver and the argument Point.
    function subtract(point: Point): Point;

    // Returns a new Point where each component is scaled by the given factor.
    function scale(factor: Float): Point;

    // Returns the distance between the receiver and the given Point.
    function distanceTo(point: Point): Float;

    // Returns the dot product between the receiver and the given Point.
    function dot(point: Point): Float;
}

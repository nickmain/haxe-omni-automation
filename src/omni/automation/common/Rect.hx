package omni.automation.common;

@:native("Rect")
extern class Rect {

    public function new(x: Float, y: Float, width: Float, height: Float);

    var center (default,null): Point;
    var height: Float;
    var integral (default,null): Rect;
    var isEmpty (default,null): Bool;
    var isInfinite (default,null): Bool;
    var isNull (default,null): Bool;
    var maxX (default,null): Float;
    var maxY (default,null): Float;
    var midX (default,null): Float;
    var midY (default,null): Float;
    var minX (default,null): Float;
    var minY (default,null): Float;
    var origin: Point;
    var size: Size;
    var standardized (default,null): Rect;
    var width: Float;
    var x: Float;
    var y: Float;

    function insetBy(dx: Float, dy: Float): Rect;
    function offsetBy(dx: Float, dy: Float): Rect;
    function union(rect: Rect): Rect;
    function intersect(rect: Rect): Rect;
    function containsRect(rect: Rect): Bool;
    function containsPoint(point: Point): Bool;
    function intersects(rect: Rect): Bool;
}

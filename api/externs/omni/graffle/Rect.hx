// Automatically generated. Do not edit.

package omni.graffle;

@:native("Rect")
extern class Rect {
    var center (default,never): omni.graffle.Point;
    var height: Float;
    var integral (default,never): omni.graffle.Rect;
    var isEmpty (default,never): Bool;
    var isInfinite (default,never): Bool;
    var isNull (default,never): Bool;
    var maxX (default,never): Float;
    var maxY (default,never): Float;
    var midX (default,never): Float;
    var midY (default,never): Float;
    var minX (default,never): Float;
    var minY (default,never): Float;
    var origin: omni.graffle.Point;
    var size: omni.graffle.Size;
    var standardized (default,never): omni.graffle.Rect;
    var width: Float;
    var x: Float;
    var y: Float;

    function new(x: Float, y: Float, width: Float, height: Float);

    function insetBy(dx: Float, dy: Float): omni.graffle.Rect;
    function offsetBy(dx: Float, dy: Float): omni.graffle.Rect;
    function union(rect: omni.graffle.Rect): omni.graffle.Rect;
    function intersect(rect: omni.graffle.Rect): omni.graffle.Rect;
    function containsRect(rect: omni.graffle.Rect): Bool;
    function containsPoint(point: omni.graffle.Point): Bool;
    function intersects(rect: omni.graffle.Rect): Bool;
}

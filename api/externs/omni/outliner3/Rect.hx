// Automatically generated. Do not edit.

package omni.outliner;

@:native("Rect")
extern class Rect {
    var center (default,never): omni.outliner.Point;
    var height: Float;
    var integral (default,never): omni.outliner.Rect;
    var isEmpty (default,never): Bool;
    var isInfinite (default,never): Bool;
    var isNull (default,never): Bool;
    var maxX (default,never): Float;
    var maxY (default,never): Float;
    var midX (default,never): Float;
    var midY (default,never): Float;
    var minX (default,never): Float;
    var minY (default,never): Float;
    var origin: omni.outliner.Point;
    var size: omni.outliner.Size;
    var standardized (default,never): omni.outliner.Rect;
    var width: Float;
    var x: Float;
    var y: Float;

    function new(x: Float, y: Float, width: Float, height: Float);

    function insetBy(dx: Float, dy: Float): omni.outliner.Rect;
    function offsetBy(dx: Float, dy: Float): omni.outliner.Rect;
    function union(rect: omni.outliner.Rect): omni.outliner.Rect;
    function intersect(rect: omni.outliner.Rect): omni.outliner.Rect;
    function containsRect(rect: omni.outliner.Rect): Bool;
    function containsPoint(point: omni.outliner.Point): Bool;
    function intersects(rect: omni.outliner.Rect): Bool;
}

// Automatically generated. Do not edit.

package omni.graffle;

@:native("Point")
extern class Point {
    static var unitX (default,never): omni.graffle.Point;
    static var unitY (default,never): omni.graffle.Point;
    static var zero (default,never): omni.graffle.Point;
    var length (default,never): Float;
    var negative (default,never): omni.graffle.Point;
    var normalized (default,never): omni.graffle.Point;
    var x: Float;
    var y: Float;

    function new(x: Float, y: Float);

    function add(point: omni.graffle.Point): omni.graffle.Point;
    function subtract(point: omni.graffle.Point): omni.graffle.Point;
    function scale(factor: Float): omni.graffle.Point;
    function distanceTo(point: omni.graffle.Point): Float;
    function dot(point: omni.graffle.Point): Float;
}

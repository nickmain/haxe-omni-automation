// Automatically generated. Do not edit.

package omni.outliner;

@:native("Point")
extern class Point {
    static var unitX (default,never): omni.outliner.Point;
    static var unitY (default,never): omni.outliner.Point;
    static var zero (default,never): omni.outliner.Point;
    var length (default,never): Float;
    var negative (default,never): omni.outliner.Point;
    var normalized (default,never): omni.outliner.Point;
    var x: Float;
    var y: Float;

    function new(x: Float, y: Float);

    function add(point: omni.outliner.Point): omni.outliner.Point;
    function subtract(point: omni.outliner.Point): omni.outliner.Point;
    function scale(factor: Float): omni.outliner.Point;
    function distanceTo(point: omni.outliner.Point): Float;
    function dot(point: omni.outliner.Point): Float;
}

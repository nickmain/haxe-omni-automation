// Automatically generated. Do not edit.

package omni.graffle;

@:native("NSWindow")
extern class NSWindow {
    var centerVisiblePoint: omni.graffle.Point;
    var selection (default,never): omni.graffle.Selection;
    var zoom: Float;

    function close(): Void;
    function setViewForCanvas(canvas: omni.graffle.Canvas, zoom: Float, center: omni.graffle.Point): Void;
}

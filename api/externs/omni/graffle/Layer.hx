// Automatically generated. Do not edit.

package omni.graffle;

@:native("Layer")
extern class Layer {
    var graphics (default,never): Array<omni.graffle.Graphic>;
    var locked: Bool;
    var name: String;
    var prints: Bool;
    var visible: Bool;

    function orderAbove(layer: omni.graffle.Layer): Void;
    function orderBelow(layer: omni.graffle.Layer): Void;
    function remove(): Void;
    function addShape(shapeName: String, bounds: omni.graffle.Rect): omni.graffle.Shape;
    function newShape(): omni.graffle.Shape;
}

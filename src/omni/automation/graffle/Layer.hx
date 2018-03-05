package omni.automation.graffle;

import omni.automation.common.Rect;

@:native("Layer")
extern class Layer {

    // All graphics in this layer.
    var graphics (default,null): Array<Graphic>;

    // Whether this layer is locked, effectively locking all graphics contained
    // in the layer.
    var locked: Bool;

    // Name of this layer.
    var name: String;

    // Whether graphics on this layer should be visible when this canvas is printed.
    var prints: Bool;

    // Whether graphics on this layer are visible.
    var visible: Bool;

    // Reorder this layer so that it is just above the given layer.
    function orderAbove(layer: Layer): Void;

    // Reorder this layer so that it is just below the given layer.
    function orderBelow(layer: Layer): Void;

    // Remove this layer from its canvas, deleting it.
    function remove(): Void;

    // Create a new graphic of a given shape and place it on this layer.
    function addShape(shapeName: String, bounds: Rect): Shape;

    // Create a zero-sized rectangle (presumably to be modified further) and place it on this layer.
    function newShape(): Shape;
}

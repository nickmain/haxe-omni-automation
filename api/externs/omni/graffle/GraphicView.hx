// Automatically generated. Do not edit.

package omni.graffle;

@:native("GraphicView")
extern class GraphicView {
    var canvas: omni.graffle.Canvas;
    var visibleRect: omni.graffle.Rect;

    function select(graphics: Array<omni.graffle.Graphic>, extending: Null<Bool>): Void;
    function deselect(graphics: Array<omni.graffle.Graphic>): Void;
    function edit(solid: omni.graffle.Solid): Void;
}

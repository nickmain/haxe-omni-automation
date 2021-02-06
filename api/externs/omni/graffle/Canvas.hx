// Automatically generated. Do not edit.

package omni.graffle;

@:native("Canvas")
extern class Canvas {
    var autosizesDown: Bool;
    var autosizesLeft: Bool;
    var autosizesRight: Bool;
    var autosizesUp: Bool;
    var background (default,never): omni.graffle.Solid;
    var canvasSizeIsMeasuredInPages: Bool;
    var canvasSizingMode: omni.graffle.CanvasSizingMode;
    var columnAlignment: omni.graffle.VerticalAlignment;
    var graphics (default,never): Array<omni.graffle.Graphic>;
    var grid (default,never): omni.graffle.Grid;
    var horizontalPages: Float;
    var id (default,never): Float;
    var layers (default,never): Array<omni.graffle.Layer>;
    var layoutInfo (default,never): omni.graffle.Layout;
    var name: String;
    var outlineRoot (default,never): omni.graffle.OGOutlineNode;
    var pageSize (default,never): omni.graffle.Size;
    var rowAlignment: omni.graffle.HorizontalAlignment;
    var shapes (default,never): Array<omni.graffle.Shape>;
    var size: omni.graffle.Size;
    var spaceBetweenObjectsInColumn: Float;
    var spaceBetweenObjectsInRow: Float;
    var verticalPages: Float;

    function layout(): Void;
    function layoutGraphics(graphics: Array<omni.graffle.Graphic>): Void;
    function addShape(shapeName: String, bounds: omni.graffle.Rect): omni.graffle.Shape;
    function newShape(): omni.graffle.Shape;
    function newLayer(): omni.graffle.Layer;
    function addLine(start: omni.graffle.Point, end: omni.graffle.Point): omni.graffle.Line;
    function newLine(): omni.graffle.Line;
    function addText(text: String, origin: omni.graffle.Point): omni.graffle.Solid;
    function connect(from: omni.graffle.Graphic, to: omni.graffle.Graphic): omni.graffle.Line;
    function duplicate(graphics: Array<omni.graffle.Graphic>): Array<omni.graffle.Graphic>;
    function orderBefore(model: omni.graffle.Canvas): Void;
    function orderAfter(model: omni.graffle.Canvas): Void;
    function remove(): Void;
    function graphicWithId(id: Float): Null<omni.graffle.Graphic>;
    function graphicWithName(name: String): Null<omni.graffle.Graphic>;
    function allGraphicsWithUserDataForKey(data: String, key: String): Array<omni.graffle.Graphic>;
    function graphicWithUserDataForKey(data: String, key: String): Null<omni.graffle.Graphic>;
    function combine(shapes: Array<omni.graffle.Shape>, operation: omni.graffle.ShapeCombination, replaceOriginal: Null<Bool>): Null<omni.graffle.Shape>;
    function onGraphicChanged(handler: omni.graffle.plugin.Handler): Null<omni.graffle.plugin.handler.Registration>;
}

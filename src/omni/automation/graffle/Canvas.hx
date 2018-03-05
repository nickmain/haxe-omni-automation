package omni.automation.graffle;

import omni.automation.common.Rect;
import omni.automation.common.Size;
import omni.automation.common.Point;

@:native("Canvas")
extern class Canvas {

    // Should the canvas automatically grow when graphics are added below the
    // current bounds.
    var autosizesDown: Bool;

    // Should the canvas automatically grow when graphics are added to the left
    // of the current bounds.
    var autosizesLeft: Bool;

    // Should the canvas automatically grow when graphics are added to the
    // right of the current bounds.
    var autosizesRight: Bool;

    // Should the canvas automatically grow when graphics are added above the
    // current bounds.
    var autosizesUp: Bool;

    // A solid graphic representing the canvas background. Its fill and image
    // properties determine the canvas background appearance.
    var background (default,null): Solid;

    // No documentation available.
    var canvasSizeIsMeasuredInPages: Bool;

    // No documentation available.
    var canvasSizingMode: CanvasSizingMode;

    // Setting for how graphics ought to be aligned vertically.
    var columnAlignment: VerticalAlignment;

    // All graphics upon this canvas.
    var graphics (default,null): Array<Graphic>;

    // Settings for the major and minor grids, if any.
    var grid (default,null): Grid;

    // Number of printer pages wide.
    var horizontalPages: Float;

    // A unique (within this document) identifying number for this canvas.
    var id (default,null): Float;

    // All layers of this canvas.
    var layers (default,null): Array<Layer>;

    // The automatic layout information describing how graphics should be arranged.
    var layoutInfo (default,null): Layout;

    // The title of this canvas.
    var name: String;

    // Builds a model of all shapes in the canvas as a hierarchical outline
    // (as in hierarchical auto layout) and returns the root of that outline.
    var outlineRoot (default,null): OGOutlineNode;

    // Size of each page in points.
    var pageSize (default,null): Size;

    // Setting for how graphics ought to be aligned horizontally.
    var rowAlignment: HorizontalAlignment;

    // Overall size in points.
    var size: Size;

    // Setting for how graphics ought to be spaced out vertically.
    var spaceBetweenObjectsInColumn: Float;

    // Setting for how graphics ought to be spaced out horizontally.
    var spaceBetweenObjectsInRow: Float;

    // Number of printer pages tall.
    var verticalPages: Float;


    // Perform automatic layout of all graphics on this canvas.
    function layout(): Void;

    // Perform automatic layout of only the given graphics (all of which need
    // to be on this canvas).
    function layoutGraphics(graphics: Array<Graphic>): Void;

    // Create a new graphic of a given shape and place it on the first visible
    // and unlocked layer.
    function addShape(shapeName: String, bounds: Rect): Shape;

    // Create a zero-sized rectangle (presumably to be modified further) and
    // place it on the first visible and unlocked layer.
    function newShape(): Shape;

    // Create a new (top-most) layer.
    function newLayer(): Layer;

    // Create a new line between two points and place it on the first visible layer.
    function addLine(start: Point, end: Point): Line;

    // Create a new zero-length line (presumably to be modified further) and place
    // it on the first visible layer.
    function newLine(): Line;

    // Create a new shape containing text (with no stroke or shadow) and place it
    // on the first visible layer.
    function addText(text: String, origin: Point): Solid;

    // Create a new line connecting two existing graphics.
    function connect(from: Graphic, to: Graphic): Line;

    // Duplicate existing graphics onto new graphics placed upon this canvas.
    // The original graphics may be from elsewhere - such as from another canvas,
    // a stencil, or another document.
    function duplicate(graphics: Array<Graphic>): Array<Graphic>;

    // Reorder this canvas to be before another canvas in this document.
    function orderBefore(model: Canvas): Void;

    // Reorder this canvas to be after another canvas in this document.
    function orderAfter(model: Canvas): Void;

    // Remove this canvas from the document, deleting it.
    function remove(): Void;

    // Get the graphic with the given id, if it exists on this canvas.
    function graphicWithId(id: Float): Null<Graphic>;

    // Get the first graphic with the given name, if any. Note that most graphics
    // do not have names unless they are explicitly set; instead they will be
    // displayed using a placeholder string (such as “Rectangle”) in the outline.
    function graphicWithName(name: String): Null<Graphic>;

    // Get all graphics with the given data string for the user data key.
    function allGraphicsWithUserDataForKey(data: String, key: String): Array<Graphic>;

    // Get the first graphic with the given data string for the user data key, if any.
    function graphicWithUserDataForKey(data: String, key: String): Null<Graphic>;

    // A handler called when any graphic on this canvas changes any properties.
    // TODO: function onGraphicChanged(handler: PlugInHandler): Null<PlugInHandlerRegistration>;
}

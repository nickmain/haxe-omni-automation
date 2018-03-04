package omni.automation.graffle;

import omni.automation.common.URL;
import omni.automation.common.Point;
import omni.automation.common.Rect;
import omni.automation.common.Color;

/**
 * An individual graphic element on a canvas. Graphic is an abstract
 * superclass (that is, no actual Graphic objects exist, only more
 * specialized sub-types of Graphic such as Line and Shape).
 */
@:native("Graphic")
extern class Graphic {

    // URL to be opened when this graphic is clicked/tapped with the action
    // tool or in presentation mode.
    var actionURL: Null<URL>;

    // Align edges or center to the grid.
    var alignsEdgesToGrid: Bool;

    // Allow line connections to this graphic.
    var allowsConnections: Bool;

    // An array of two strings, the first being the plugin id and the second
    // being the action id for an automation action. This automation action
    // is performed when this graphic is clicked/tapped with the action tool
    // or in presentation mode.
    var automationAction: Array<String>;

    // An array of all Line graphics connected to this graphic.
    var connectedLines (default,null): Array<Line>;

    // Corner radius of the stroke.
    var cornerRadius: Float;

    // Is this graphic flipped horizontally?
    var flippedHorizontally: Bool;

    // Is this graphic flipped vertically?
    var flippedVertically: Bool;

    // The bounds rectangle of this graphic.
    var geometry: Rect;

    // A unique identifier (within this canvas) of this graphic.
    // Note that this value is NOT persistent across
    // closing/reopening of the document.
    var id: Float;

    // A subset of the connected lines: those lines whose head are
    // connected to this graphic.
    var incomingLines (default,null): Array<Line>;

    // The layer this graphic is on.
    var layer: Null<Layer>;

    // Whether this graphic is locked.
    var locked: Bool;

    // The name of this graphic, if any. Note that most graphics do
    // not have names unless they are explicitly set; instead they
    // will be displayed using a placeholder string (such as “Rectangle”)
    // in the outline.
    var name: Null<String>;

    // Notes attached to this graphic.
    var notes: String;

    // A subset of the connected lines: those lines whose tail are
    // connected to this graphic.
    var outgoingLines (default,null): Array<Line>;

    // If the stroke style is plastic, this is the depth of curvature.
    var plasticCurve: Null<Float>;

    // If the stroke style is plastic, this is the highlight angle of
    // the “light” shining on the plastic.
    var plasticHighlightAngle: Null<Float>;

    // Rotation of this graphic.
    var rotation: Float;

    // Color of the shadow.
    var shadowColor: Null<Color>;

    // Fuzziness of the shadow.
    var shadowFuzziness: Float;

    // Direction and length of the shadow.
    var shadowVector: Point;

    // Type of end cap on the stroke.
    var strokeCap: LineCap;

    // Color of the stroke.
    var strokeColor: Null<Color>;

    // Type of join on segments of the stroke.
    var strokeJoin: LineJoin;

    // Dash pattern of the stroke.
    var strokePattern: StrokeDash;

    // Thickness of the stroke in points.
    var strokeThickness: Float;

    // Type of stroke (the outline around the graphic).
    var strokeType: Null<StrokeType>;

    // User data for this graphic
    var userData: Dynamic;

    // Reorder this graphic so that it is just above the given one.
    function orderAbove(graphic: Graphic): Void;

    // Reorder this graphic so that it is just below the given one.
    function orderBelow(graphic: Graphic): Void;

    // Remove this graphic from its canvas, deleting it.
    function remove(): Void;

    // Set the user data string attached to this graphic for a given key.
    function setUserData(key: String, value: Null<String>): Void;

    // A convenience method, this does the same thing as canvas.duplicate()
    // and then setting the geometry origin of the newly duplicated graphic.
    // The destination canvas parameter can be omitted entirely in order to
    // make a duplicate of the graphic to a different location of the same
    // canvas it is already on.
    function duplicateTo(location: Point, canvas: Null<Canvas>): Null<Graphic>;
}

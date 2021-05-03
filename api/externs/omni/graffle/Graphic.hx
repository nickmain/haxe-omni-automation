// Automatically generated. Do not edit.

package omni.graffle;

@:native("Graphic")
extern class Graphic {
    var actionURL: Null<omni.common.URL>;
    var alignsEdgesToGrid: Bool;
    var allowsConnections: Bool;
    var automationAction: Array<String>;
    var connectedLines (default,never): Array<omni.graffle.Line>;
    var cornerRadius: Float;
    var flippedHorizontally: Bool;
    var flippedVertically: Bool;
    var geometry: omni.graffle.Rect;
    var id (default,never): Float;
    var incomingLines (default,never): Array<omni.graffle.Line>;
    var layer: Null<omni.graffle.Layer>;
    var locked: Bool;
    var name: Null<String>;
    var notes: String;
    var outgoingLines (default,never): Array<omni.graffle.Line>;
    var plasticCurve: Null<Float>;
    var plasticHighlightAngle: Null<Float>;
    var rotation: Float;
    var shadowColor: Null<omni.common.Color>;
    var shadowFuzziness: Float;
    var shadowVector: omni.graffle.Point;
    var strokeCap: omni.graffle.LineCap;
    var strokeColor: Null<omni.common.Color>;
    var strokeJoin: omni.graffle.LineJoin;
    var strokePattern: omni.graffle.StrokeDash;
    var strokeThickness: Float;
    var strokeType: Null<omni.graffle.StrokeType>;
    var userData: Dynamic;

    function orderAbove(graphic: omni.graffle.Graphic): Void;
    function orderBelow(graphic: omni.graffle.Graphic): Void;
    function remove(): Void;
    function setUserData(key: String, value: Null<String>): Void;
    function duplicateTo(location: omni.graffle.Point, canvas: Null<omni.graffle.Canvas>): Null<omni.graffle.Graphic>;
}

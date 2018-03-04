package omni.automation.graffle;

@:native("LineJoin")
extern class LineJoin {

    // Line segments are joined with a squared-off end.
    static var Bevel (default,null): LineJoin;

    // Line segments are joined with a sharp (angled) corner.
    static var Miter (default,null): LineJoin;

    // Line segments are joined with a rounded end.
    static var Round (default,null): LineJoin;
}

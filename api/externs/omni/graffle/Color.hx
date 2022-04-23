// Automatically generated. Do not edit.

package omni.graffle;

@:native("Color")
extern class Color {
    static var black (default,never): omni.graffle.Color;
    static var blue (default,never): omni.graffle.Color;
    static var brown (default,never): omni.graffle.Color;
    static var clear (default,never): omni.graffle.Color;
    static var cyan (default,never): omni.graffle.Color;
    static var darkGray (default,never): omni.graffle.Color;
    static var gray (default,never): omni.graffle.Color;
    static var green (default,never): omni.graffle.Color;
    static var lightGray (default,never): omni.graffle.Color;
    static var magenta (default,never): omni.graffle.Color;
    static var orange (default,never): omni.graffle.Color;
    static var purple (default,never): omni.graffle.Color;
    static var red (default,never): omni.graffle.Color;
    static var white (default,never): omni.graffle.Color;
    static var yellow (default,never): omni.graffle.Color;
    static function RGB(r: Float, g: Float, b: Float, a: Null<Float>): omni.graffle.Color;
    static function HSB(h: Float, s: Float, b: Float, a: Null<Float>): omni.graffle.Color;
    static function White(w: Float, a: Null<Float>): omni.graffle.Color;
    var alpha (default,never): Float;
    var blue (default,never): Float;
    var brightness (default,never): Float;
    var colorSpace (default,never): omni.graffle.ColorSpace;
    var green (default,never): Float;
    var hue (default,never): Float;
    var red (default,never): Float;
    var saturation (default,never): Float;
    var white (default,never): Float;

    function blend(otherColor: omni.graffle.Color, fraction: Float): Null<omni.graffle.Color>;
}

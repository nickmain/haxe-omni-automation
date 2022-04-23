// Automatically generated. Do not edit.

package omni.focus;

@:native("Color")
extern class Color {
    static var black (default,never): omni.focus.Color;
    static var blue (default,never): omni.focus.Color;
    static var brown (default,never): omni.focus.Color;
    static var clear (default,never): omni.focus.Color;
    static var cyan (default,never): omni.focus.Color;
    static var darkGray (default,never): omni.focus.Color;
    static var gray (default,never): omni.focus.Color;
    static var green (default,never): omni.focus.Color;
    static var lightGray (default,never): omni.focus.Color;
    static var magenta (default,never): omni.focus.Color;
    static var orange (default,never): omni.focus.Color;
    static var purple (default,never): omni.focus.Color;
    static var red (default,never): omni.focus.Color;
    static var white (default,never): omni.focus.Color;
    static var yellow (default,never): omni.focus.Color;
    static function RGB(r: Float, g: Float, b: Float, a: Null<Float>): omni.focus.Color;
    static function HSB(h: Float, s: Float, b: Float, a: Null<Float>): omni.focus.Color;
    static function White(w: Float, a: Null<Float>): omni.focus.Color;
    var alpha (default,never): Float;
    var blue (default,never): Float;
    var brightness (default,never): Float;
    var colorSpace (default,never): omni.focus.ColorSpace;
    var green (default,never): Float;
    var hue (default,never): Float;
    var red (default,never): Float;
    var saturation (default,never): Float;
    var white (default,never): Float;

    function blend(otherColor: omni.focus.Color, fraction: Float): Null<omni.focus.Color>;
}

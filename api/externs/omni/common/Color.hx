// Automatically generated. Do not edit.

package omni.common;

@:native("Color")
extern class Color {
    static var black (default,never): omni.common.Color;
    static var blue (default,never): omni.common.Color;
    static var brown (default,never): omni.common.Color;
    static var clear (default,never): omni.common.Color;
    static var cyan (default,never): omni.common.Color;
    static var darkGray (default,never): omni.common.Color;
    static var gray (default,never): omni.common.Color;
    static var green (default,never): omni.common.Color;
    static var lightGray (default,never): omni.common.Color;
    static var magenta (default,never): omni.common.Color;
    static var orange (default,never): omni.common.Color;
    static var purple (default,never): omni.common.Color;
    static var red (default,never): omni.common.Color;
    static var white (default,never): omni.common.Color;
    static var yellow (default,never): omni.common.Color;
    static function RGB(r: Float, g: Float, b: Float, a: Null<Float>): omni.common.Color;
    static function HSB(h: Float, s: Float, b: Float, a: Null<Float>): omni.common.Color;
    static function White(w: Float, a: Null<Float>): omni.common.Color;
    var alpha (default,never): Float;
    var blue (default,never): Float;
    var brightness (default,never): Float;
    var colorSpace (default,never): omni.common.ColorSpace;
    var green (default,never): Float;
    var hue (default,never): Float;
    var red (default,never): Float;
    var saturation (default,never): Float;
    var white (default,never): Float;

    function blend(otherColor: omni.common.Color, fraction: Float): Null<omni.common.Color>;
}

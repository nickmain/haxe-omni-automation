// Automatically generated. Do not edit.

package omni.outliner;

@:native("Color")
extern class Color {
    static var black (default,never): omni.outliner.Color;
    static var blue (default,never): omni.outliner.Color;
    static var brown (default,never): omni.outliner.Color;
    static var clear (default,never): omni.outliner.Color;
    static var cyan (default,never): omni.outliner.Color;
    static var darkGray (default,never): omni.outliner.Color;
    static var gray (default,never): omni.outliner.Color;
    static var green (default,never): omni.outliner.Color;
    static var lightGray (default,never): omni.outliner.Color;
    static var magenta (default,never): omni.outliner.Color;
    static var orange (default,never): omni.outliner.Color;
    static var purple (default,never): omni.outliner.Color;
    static var red (default,never): omni.outliner.Color;
    static var white (default,never): omni.outliner.Color;
    static var yellow (default,never): omni.outliner.Color;
    static function RGB(r: Float, g: Float, b: Float, a: Null<Float>): omni.outliner.Color;
    static function HSB(h: Float, s: Float, b: Float, a: Null<Float>): omni.outliner.Color;
    static function White(w: Float, a: Null<Float>): omni.outliner.Color;
    var alpha (default,never): Float;
    var blue (default,never): Float;
    var brightness (default,never): Float;
    var colorSpace (default,never): omni.outliner.ColorSpace;
    var green (default,never): Float;
    var hue (default,never): Float;
    var red (default,never): Float;
    var saturation (default,never): Float;
    var white (default,never): Float;

    function blend(otherColor: omni.outliner.Color, fraction: Float): Null<omni.outliner.Color>;
}

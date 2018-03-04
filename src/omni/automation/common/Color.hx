package omni.automation.common;

@:native("Color")
extern class Color {

    // Makes a new color in the RGB colorspace, with the given components.
    // If the alpha component is not given, 1.0 is used.
    static function RGB(r: Float, g: Float, b: Float, ?a: Float): Color;

    // Makes a new color in the HSB colorspace, with the given components.
    // If the alpha component is not given, 1.0 is used.
    static function HSB(h: Float, s: Float, b: Float, ?a: Float): Color;

    // Makes a new color in the White colorspace, with the given components.
    // If the alpha component is not given, 1.0 is used.
    static function White(w: Float, ?a: Float): Color;

    // Returns a new color that is a linear combination of the receiver
    // and fraction of the other color (so, a fraction of 1.0 would just
    // return the otherColor. If the colors cannot be blended
    // (for example, if they cannot be converted to the same colorspace),
    // then null is returned.
    function blend(otherColor: Color, fraction: Float): Null<Color>;

    // Returns the alpha component of the color.
    var alpha (default,null): Float;

    // Returns the blue component of the color, after converting to a
    // RGB colorspace.
    var blue (default,null): Float;

    // Returns the brightness component of the color, after converting
    // to a HSB colorspace.
    var brightness (default,null): Float;

    // Returns the colorspace of the instance.
    var colorSpace (default,null): ColorSpace;

    // Returns the green component of the color, after converting to a
    // RGB colorspace.
    var green (default,null): Float;

    // Returns the hue component of the color, after converting to a
    // HSB colorspace.
    var hue (default,null): Float;

    // Returns the red component of the color, after converting to a
    // RGB colorspace.
    var red (default,null): Float;

    // Returns the saturation component of the color, after converting
    // to a HSB colorspace.
    var saturation (default,null): Float;

    // Returns the white component of the color, after converting to a
    // White colorspace.
    var white (default,null): Float;


    // A color in the White colorspace with white component of 0.0.
    static var black (default,null): Color;

    // A color in the RGB colorspace with components (0, 0, 1, 1).
    static var blue (default,null): Color;

    // A color in the RGB colorspace with components (0.6, 0.4, 0.2, 1).
    static var brown (default,null): Color;

    // A color in the White colorspace with white component of 0.0 and alpha of 0.0 (“transparent black”).
    static var clear (default,null): Color;

    // A color in the RGB colorspace with components (0, 1, 1, 1).
    static var cyan (default,null): Color;

    // A color in the White colorspace with white component of 0.333.
    static var darkGray (default,null): Color;

    // A color in the White colorspace with white component of 0.5.
    static var gray (default,null): Color;

    // A color in the RGB colorspace with components (0, 1, 0, 1).
    static var green (default,null): Color;

    // A color in the White colorspace with white component of 0.667.
    static var lightGray (default,null): Color;

    // A color in the RGB colorspace with components (1, 0, 1, 1).
    static var magenta (default,null): Color;

    // A color in the RGB colorspace with components (1, 0.5, 0, 1).
    static var orange (default,null): Color;

    // A color in the RGB colorspace with components (1, 0, 1, 1).
    static var purple (default,null): Color;

    // A color in the RGB colorspace with components (1, 0, 0, 1).
    static var red (default,null): Color;

    // A color in the White colorspace with white component of 1.0.
    static var white (default,null): Color;

    // A color in the RGB colorspace with components (1, 1, 0, 1).
    static var yellow (default,null): Color;

}

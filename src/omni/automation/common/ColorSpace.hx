package omni.automation.common;

@:native("ColorSpace")
extern class ColorSpace {

    // A colorspace with cyan, magenta, yellow, black, and alpha components.
    var CMYK (default,null): ColorSpace;

    // A colorspace with hue, saturation, and value (or brightness) components.
    var HSB (default,null): ColorSpace;

    // A space for named colors, like system defined colors, or specific
    // color palette spaces.
    var Named (default,null): ColorSpace;

    // A colorspace that wraps a pattern image.
    var Pattern (default,null): ColorSpace;

    // The sRGB colorspace with red, green, blue, and alpha components.
    var RGB (default,null): ColorSpace;

    // A colorspace with white and alpha components.
    var White (default,null): ColorSpace;
}

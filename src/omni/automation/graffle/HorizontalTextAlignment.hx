package omni.automation.graffle;

@:native("HorizontalTextAlignment")
class HorizontalTextAlignment {

    // Centered horizontally.
    static var Center (default,null): HorizontalTextAlignment;

    // Spacing adjusted to fill available horizontal space.
    static var Justify (default,null): HorizontalTextAlignment;

    // Aligned left.
    static var Left (default,null): HorizontalTextAlignment;

    // Aligned right.
    static var Right (default,null): HorizontalTextAlignment;
}

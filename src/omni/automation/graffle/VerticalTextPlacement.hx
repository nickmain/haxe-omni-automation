package omni.automation.graffle;

@:native("VerticalTextPlacement")
extern class VerticalTextPlacement {

    // Aligned to the bottom of the shape.
    static var Bottom (default,null): VerticalTextPlacement;

    // Centered in the vertical middle of the shape.
    static var Middle (default,null): VerticalTextPlacement;

    // Aligned to the top of the shape.
    static var Top (default,null): VerticalTextPlacement;
}

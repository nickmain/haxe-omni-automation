package omni.automation.graffle;

@:native("CanvasSizingMode")
extern class CanvasSizingMode {

    // Resizes to fit its contents.
    static var Fit (default,null): CanvasSizingMode;

    // Specific size in pages or in points.
    static var Fixed (default,null): CanvasSizingMode;

    // No specific size and no canvas edges.
    static var Infinite (default,null): CanvasSizingMode;
}

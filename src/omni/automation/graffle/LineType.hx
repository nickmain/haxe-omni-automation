package omni.automation.graffle;

@:native("LineType")
extern class LineType {

    // Bezier line.
    static var Bezier (default, null): LineType;

    // Curved line.
    static var Curved (default, null): LineType;

    // Orthogonal line.
    static var Orthogonal (default, null): LineType;

    //Straight line.
    static var Straight (default, null): LineType;
}

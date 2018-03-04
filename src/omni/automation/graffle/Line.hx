package omni.automation.graffle;

import omni.automation.common.Point;

/**
 * A graphic which is a line, potentially connecting two other graphics at
 * its head and tail ends.
 */
@:native("Line")
extern class Line {
    function new();

    static var allLineEndingTypes (default,null): Array<String>;

    // Array of bezier control points, or empty for non-bezier lines.
    // Each line point is first, followed by its control points. The first and last line point have a single control point, while any intermediate line points have two control points.
    var bezierPoints: Array<Point>;

    // Graphic attached to the head of this line.
    var head: Null<Graphic>;

    // Index of the magnet in the head graphic which this line is
    // connected to. Zero if not any particular magnet.
    var headMagnet: Float;

    // Scale of the line ending at the head end of this line.
    var headScale: Float;

    // Type of line ending at the head end of this line.
    var headType: String;

    // Style and behavior of line hops when this line passes over any
    // other line on this canvas.
    var hopType: HopType;

    // Line type of this line. (Straight, Curved, Orthogonal, Bezier.)
    var lineType: LineType;

    // Array of control points for this line in canvas coordinates.
    var points: Array<Point>;

    // Graphic attached to the tail of this line.
    var tail: Null<Graphic>;

    // Index of the magnet in the tail graphic which this line is connected to.
    // Zero if not any particular magnet.
    var tailMagnet: Float;

    // Scale of the line ending at the tail end of this line.
    var tailScale: Float;

    // Type of line ending at the tail end of this line.
    var tailType: String;
}

package omni.automation.graffle;

import omni.automation.common.Point;

/**
 * A ‘Solid’ graphic which has a particular shape, either one of the built-in shapes,
 * or a custom bezier shape.
 */
@:native("Shape")
extern class Shape extends Solid {

    // Name of the shape for this graphic.
    var shape: Null<String>;

    // The vertices and controlPoint1 & controlPoint2 of each bezier segment.
    // For straight line segments, both control points will be identical to
    // the vertex point.
    var shapeControlPoints: Array<Point>;

    // Array of vertices for this shape.
    var shapeVertices: Array<Point>;
}

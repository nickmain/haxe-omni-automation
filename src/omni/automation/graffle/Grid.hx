package omni.automation.graffle;

import omni.automation.common.Color;

/**
 * Holds the grid settings for a particular canvas.
 */
@:native("Grid")
extern class Grid {

    // Whether the grid draws in front of all graphics or behind them.
    var drawsInFront: Bool;

    // Color of the major grid lines.
    var majorColor: Color;

    // Number of minor grid squares between each major grid line.
    var majorSpacing: Float;

    // Color of the minor grid lines.
    var minorColor: Color;

    // Whether graphics on the canvas snap to the grid.
    var snaps: Bool;

    // Number of points of spacing between each minor grid line.
    // (Also the width and height of each minor grid square.)
    var spacing: Float;

    // Whether the grid is currently visible or invisible.
    var visible: Bool;
}

package omni.automation.graffle;

import omni.automation.common.Point;

/**
 * A set of grouped graphics represented by a single graphic.
 * Groups can contain more groups, et cetera.
 */
@:native("Group")
extern class Group {

    // Construct a new group containing the given graphics and replace those graphics on their
    // original canvas with the group graphic.
    public function new(graphics: Array<Graphic>);

    // Whether lines may connect to individual constituents or must connect to the
    // group as a whole.
    var connectToGroupOnly: Bool;

    // An array of graphics contained inside the group.
    var graphics (default,null): Array<Graphic>;

    // Connection magnets on the group.
    var magnets: Array<Point>;

    // Remove this group, putting all of the graphics inside back on the canvas the
    // group was previously upon. The group itself is deleted.
    function ungroup(): Array<Graphic>;
}

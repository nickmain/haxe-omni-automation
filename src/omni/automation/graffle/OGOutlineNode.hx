package omni.automation.graffle;

/**
 * An outline node is one element of a hierarchical organization of the canvas’s
 * graphics. Each node represents a single shape, with the lines between shapes
 * determining parent-child relationships. The outline structure is visualized
 * in the Mac applications ‘Outline’ sidebar tab.
 */
@:native("OGOutlineNode")
extern class OGOutlineNode {

    // Child nodes of this node.
    var children (default,null): Array<OGOutlineNode>;

    // Graphic that this outline node represents.
    var graphic (default,null): Null<Graphic>;
}

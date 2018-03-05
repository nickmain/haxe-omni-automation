package omni.automation.graffle;

@:native("LayoutType")
extern class LayoutType {

    // Tries to arrange sibling shapes in a circle around their parent.
    static var Circular (default,null): LayoutType;

    // Grows in semi-random directions from the center.
    static var ForceDirected (default,null): LayoutType;

    // Creates layers of equally-ranked objects, extending in one direction..
    static var Hierarchical (default,null): LayoutType;

    // Tries to arrange sibling shapes in arcs around their parent.
    static var Radial (default,null): LayoutType;
}

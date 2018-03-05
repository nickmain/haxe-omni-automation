package omni.automation.graffle;

@:native("HierarchicalDirection")
extern class HierarchicalDirection {

    // Root of the hierarchy is at the bottom and tree extends upwards.
    static var Bottom (default,null): HierarchicalDirection;

    // Root of the hierarchy is at the left and tree extends rightwards.
    static var Left (default,null): HierarchicalDirection;

    // Root of the hierarchy is at the right and tree extends leftwards.
    static var Right (default,null): HierarchicalDirection;

    // Root of the hierarchy is at the top and tree extends downwards.
    static var Top (default,null): HierarchicalDirection;
}

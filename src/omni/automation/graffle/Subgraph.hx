package omni.automation.graffle;

/**
 * A ‘Subgraph’ is a type of ‘Group’ that can be expanded and collapsed to show or
 * hide its contents.
 */
@:native("Subgraph")
extern class Subgraph {
    public function new(graphics: Array<Graphic>);

    // The background graphic which is shown behind the contents when expanded, and by itself when collapsed.
    var background (default,null): Solid;

    // Whether this subgraph is currently collapsed.
    var collapsed: Bool;

    // An array of graphics contained inside the subgraph.
    var subgraphics (default,null): Array<Graphic>;
}

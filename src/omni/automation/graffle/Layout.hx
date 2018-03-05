package omni.automation.graffle;

@:native("Layout")
class Layout {

    // Whether to re-layout automatically on every change to the canvas.
    var automaticLayout: Bool;

    // Optimum line length to try to achieve during circular layout.
    var circularLineLength: Float;

    // The hierarchical layout orientation.
    var direction: HierarchicalDirection;

    // Optimum line length to try to achieve during force-directed layout.
    var forceDirectedLineLength: Float;

    // Separation distance between graphics to try to achieve during
    // force-directed layout.
    var forceDirectedSeparation: Float;

    // Distance between graphics at the same level during hierarchical layout.
    var objectSeparation: Float;

    // Distance between graphics during radial layout.
    var radialSeparation: Float;

    // Distance between graphics from one level to an adjacent level
    // higher or lower during hierarchical layout.
    var rankSeparation: Float;

    // Type of layout to perform: hierarchical, circular, radial, or
    // force-directed.
    var type: LayoutType;
}

package omni.automation.graffle;

@:native("Selection")
extern class Selection {

    // The currently selected canvas.
    var canvas (default,null): Null<Canvas>;

    // The current document whose graphics are selected.
    var document (default,null): Null<GraffleDocument>;

    // The currently selected graphics.
    var graphics (default,null): Array<Graphic>;

    // The subset of the currently selected graphics which are lines.
    var lines (default,null): Array<Line>;

    // The subset of the currently selected graphics which are solids.
    var solids (default,null): Array<Solid>;

    // The current view containing the selection.
    var view (default,null): Null<GraphicView>;

}

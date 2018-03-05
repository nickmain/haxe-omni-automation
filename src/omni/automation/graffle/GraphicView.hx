package omni.automation.graffle;

import omni.automation.common.Rect;

/**
 * The view of the canvas in an OmniGraffle window.
 */
@:native("GraphicView")
extern class GraphicView {

    // The canvas currently being displayed in this view.
    var canvas: Canvas;

    // The rectangle of the canvas which is visible in the window.
    var visibleRect: Rect;
}

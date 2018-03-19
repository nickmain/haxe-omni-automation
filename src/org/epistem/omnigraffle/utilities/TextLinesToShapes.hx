package org.epistem.omnigraffle.utilities;

import omni.automation.common.Point;
import omni.automation.common.Rect;
import omni.automation.graffle.Canvas;
import omni.automation.graffle.Solid;
import omni.automation.graffle.Selection;

/**
 * Create a new shape for each line of text in a shape
 */
class TextLinesToShapes {

    public static function textToShapes(selection: Selection) {
        var canvas = selection.canvas;

        for(solid in selection.solids) {
            processSolid(solid, canvas);
        }
    }

    static function processSolid(solid: Solid, canvas: Canvas) {
        var text = solid.text;
        if(text == null || text.length == 0) return;

        var lines = text.split("\n");

        var bounds = solid.geometry;
        var newHeight = bounds.height / lines.length;
        var x = bounds.x;
        var y = bounds.y;
        var width = bounds.width;

        for(line in lines) {
            var newShape = cast(solid.duplicateTo(new Point(x, y), canvas), Solid);
            newShape.text = line;
            newShape.geometry = new Rect(x, y, width, newHeight);
            y += newHeight;
        }

        solid.remove();
    }
}

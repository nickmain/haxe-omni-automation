package samples;

import omni.automation.graffle.FillType;
import omni.automation.common.Color;
import omni.automation.graffle.Selection;
import omni.automation.graffle.Canvas;

@:expose
class HelloWorld {
    public static function helloWorld(selection: Selection) {
        var canvas: Canvas = selection.canvas;

        for(solid in selection.solids) {
            solid.text = "Hello";

            var rect = solid.geometry;
            var newRect = rect.offsetBy(rect.width + 20, 0);
            var circle = canvas.addShape("Circle", newRect);
            circle.text = "World";
            circle.shadowColor = null;
            circle.fillColor = Color.yellow;
            circle.fillType = FillType.Solid;

            circle.automationAction = ["org.epistem.omnigraffle.helloworld","helloWorld"];

            var line = canvas.connect(solid, circle);
            line.headType = "FilledArrow";
            line.shadowColor = null;
        }
    }

    public static function main() {}
}

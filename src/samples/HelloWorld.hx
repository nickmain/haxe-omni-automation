package samples;

import omni.automation.common.Console;
import omni.automation.common.PlugIn;
import omni.automation.common.Application;
import omni.automation.graffle.FillType;
import omni.automation.common.Color;
import omni.automation.graffle.Selection;
import omni.automation.graffle.Canvas;

@:expose
class HelloWorld {
    public static function helloWorld(selection: Selection) {
        var canvas: Canvas = selection.canvas;

        var plugin = PlugIn.all[0];
        Console.log("Plugin - " + plugin.identifier);
        var handler = plugin.handlers[0];
        Console.log("Handler - " + handler);
        //canvas.onGraphicChanged(handler);

        for(solid in selection.solids) {
            solid.text = "Hello";

            var rect = solid.geometry;
            var newRect = rect.offsetBy(rect.width + 20, 0);
            var circle = canvas.addShape("Circle", newRect);
            circle.text = "World";
            circle.shadowColor = null;
            circle.fillColor = Application.optionKeyDown ? Color.orange : Color.yellow;
            circle.fillType = FillType.Solid;

            circle.automationAction = ["org.epistem.omnigraffle.helloworld","helloWorld"];

            var line = canvas.connect(solid, circle);
            line.headType = "FilledArrow";
            line.shadowColor = null;
        }
    }

    public static function main() {}
}

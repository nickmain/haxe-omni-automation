package samples;

import omni.graffle.Rect;
import omni.graffle.Selection;
import epistem.omni.graffle.Action;
import omni.common.ToolbarItem;
import omni.common.MenuItem;
import epistem.typescript.Helpers.Union2;

@:expose
class Split extends Action {
    public function new() {
        super();
    }

    // Perform the action
    public function perform(selection: Selection, sender: Null<Union2<ToolbarItem, MenuItem>>) {

        try {
            final canvas = selection.canvas;
            if(canvas == null) return;

            if(selection.solids.length > 0) {
                for(solid in selection.solids) {
                    final text = solid.text;
                    final lines = text.split("\n");
                    if(lines.length < 2) continue;

                    final h = solid.geometry.height / lines.length;
                    final w = solid.geometry.width;
                    final x = solid.geometry.origin.x + 20;
                    var y = solid.geometry.origin.y;

                    for(i in 0...lines.length) {
                        final newShape = canvas.newShape();
                        newShape.text = lines[i];
                        newShape.geometry = new Rect(x, y, w, h);
                        newShape.shadowColor = null;
                        newShape.textWraps = false;
                        newShape.fontName = solid.fontName;
                        newShape.textSize = solid.textSize;
                        newShape.textHorizontalAlignment = solid.textHorizontalAlignment;
                        newShape.textVerticalPlacement = solid.textVerticalPlacement;
                        y += h + 3;
                    }
                }
            }

        } catch(e) {
            trace(e.message);
        }
    }

    // Determine whether this action can be invoked on the given selection
    override public function validate(selection: Selection, sender: Null<Union2<ToolbarItem, MenuItem>>): Bool {
        return true;
    }
}

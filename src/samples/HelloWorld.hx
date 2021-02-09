package samples;

import omni.graffle.LayoutType;
import omni.graffle.Selection;
import epistem.omni.graffle.Action;
import epistem.omni.graffle.Globals;
import omni.graffle.ToolbarItem;
import omni.graffle.MenuItem;
import epistem.typescript.Helpers.Union2;

@:expose
class HelloWorld extends Action {
    public function new() {
        super();
    }

    // Perform the action
    override public function perform(selection: Selection, sender: Null<Union2<ToolbarItem, MenuItem>>) {

        final canvas = Globals.document.portfolio.canvases[0];
        if(canvas != null) {
            final layoutInfo = canvas.layoutInfo;
            final allTypes = LayoutType.all;

            // rotate the layout type
            layoutInfo.type = allTypes[(allTypes.indexOf(layoutInfo.type) + 1) % allTypes.length];
            canvas.layout();
        }
    }

    // Determine whether this action can be invoked on the given selection
    override public function validate(selection: Selection, sender: Null<Union2<ToolbarItem, MenuItem>>): Bool {
        return true;
    }
}

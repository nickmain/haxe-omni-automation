package samples;

import omni.graffle.Timer;
import omni.graffle.HierarchicalDirection;
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
    public function perform(selection: Selection, sender: Null<Union2<ToolbarItem, MenuItem>>) {

        if(selection.solids.length > 0) {
            final solids = selection.solids.concat([]);
            final endY = solids[0].geometry.y + 100;

            Timer.repeating(0.03, (timer: Timer) -> {
                if(solids[0].geometry.y > endY) {
                    timer.cancel();
                    return;
                }

                for(solid in solids) {
                    solid.geometry = solid.geometry.offsetBy(0, 10);
                }
            });

            return;
        }

        final canvas = Globals.document.portfolio.canvases[0];
        if(canvas != null) {
            final layoutInfo = canvas.layoutInfo;

            // rotate hierarchical direction before rotating layout type
            if(layoutInfo.type == LayoutType.Hierarchical) {
                final dirs = HierarchicalDirection.all;
                final dirIndex = dirs.indexOf(layoutInfo.direction);
                if(dirIndex < (dirs.length - 1)) {
                    layoutInfo.direction = dirs[dirIndex + 1];
                    canvas.layout();
                    return;
                } else {
                    layoutInfo.direction = dirs[0];
                }
            }

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

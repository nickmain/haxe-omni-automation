package samples;

import omni.graffle.Selection;
import epistem.omni.graffle.Action;
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
        if(sender != null) {
            trace('sender is menu item: ${Std.isOfType(sender, MenuItem)}');
            trace('sender is toolbar  : ${Std.isOfType(sender, ToolbarItem)}');
        } else {
            trace("No sender");
        }

        if(selection.solids.length > 0) {
            for(solid in selection.solids) {
                trace('Selected --> ${solid.text}');
            }
        } else {
            trace("No solids selected");
        }
    }

    // Determine whether this action can be invoked on the given selection
    override public function validate(selection: Selection, sender: Null<Union2<ToolbarItem, MenuItem>>): Bool {
        return true;
    }
}

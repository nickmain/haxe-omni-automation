package samples;

import epistem.omni.graffle.Globals;
import omni.outliner.Application;
import omni.common.Color;
import omni.graffle.Selection;
import epistem.omni.graffle.Action;
import omni.common.ToolbarItem;
import omni.common.MenuItem;
import epistem.typescript.Helpers.Union2;

@:expose
class HScriptTest extends Action {
    public function new() {
        super();
    }

    // Perform the action
    public function perform(selection: Selection, sender: Null<Union2<ToolbarItem, MenuItem>>) {

        try {
            if(selection.solids.length > 0) {
                for(solid in selection.solids) {
                    if(Globals.app.optionKeyDown) {
                        final notes = solid.notes;
                        final text = solid.text;
                        solid.notes = text;
                        solid.text = notes;
                        continue;
                    }

                    var text = solid.notes;
                    if(text == "") text = solid.text;

                    var parser = new hscript.Parser();
                    parser.allowMetadata = true;
                    var ast = parser.parseString(text);
                    var interp = new hscript.Interp();
                    interp.variables["this"] = solid;
                    interp.varResolver = function(id: String): Dynamic {
                        return js.Lib.eval(id);
                    }
                    trace(interp.execute(ast));
                }

                return;
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

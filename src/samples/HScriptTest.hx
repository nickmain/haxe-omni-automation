package samples;

import epistem.omni.graffle.Globals;
import omni.graffle.Selection;
import epistem.omni.graffle.Action;
import omni.graffle.ToolbarItem;
import omni.graffle.MenuItem;
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
                    interp.variables["document"] = Globals.document;
                    interp.variables["app"] = Globals.app;
                    interp.variables["selection"] = selection;
                    interp.variables["Std"] = Std;
                    interp.varResolver = function(id: String): Dynamic {
                        // trace("Resolving: " + id);
                        return js.Lib.eval(id);
                    }

                    final result = interp.execute(ast);
                    if(result != null) trace(result);
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

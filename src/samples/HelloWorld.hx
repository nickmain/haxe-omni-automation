package samples;

import js.lib.intl.Collator;
import js.lib.Error;
import omni.graffle.Color;
import omni.graffle.Form;
import omni.graffle.form.field.StringField;
import omni.graffle.form.field.MultipleOptions;
import omni.graffle.Alert;
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

        try {
            if( Std.isOfType(sender, MenuItem)) {
                final form = new Form();
                form.addField(new StringField("name", "Name", "do not type capitals in this field", null), null);
                form.addField(new StringField("alias", "Alias", null, null), null);
                form.addField(new MultipleOptions("opts", "Things", [1,2,3], ["One", "Two", "Three"], [2]), null);
                form.validate = (form) -> {
                    form.values.alias = form.values.name;
                    
                    if(Std.string(form.values.name).toLowerCase() != form.values.name) {
                        throw new Error("No uppercase allowed!");
                    }

                    return true;
                };

                form.show("Test Form", "Do It")
                    .then(
                        (form: Form) -> trace(form.values.opts),
                        (err: Error) -> trace(err.message)
                    );

                // new Alert("Hello", "This is a test").show((index: Float) -> trace('Alert index: $index'));
                return;
            }

            if(selection.solids.length > 0) {
                for(solid in selection.solids) {
                    final color = solid.fillColor;
                    if(color != null) {
                        solid.fillColor = Color.RGB(color.green, color.blue, color.red, color.alpha);
                    }
                }

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
        } catch(e) {
            trace(e.message);
        }
    }

    // Determine whether this action can be invoked on the given selection
    override public function validate(selection: Selection, sender: Null<Union2<ToolbarItem, MenuItem>>): Bool {
        return true;
    }
}

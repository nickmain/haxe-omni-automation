package samples;

import js.lib.Error;
import omni.graffle.Color;
import omni.graffle.Form;
import omni.graffle.form.field.StringField;
import omni.graffle.form.field.MultipleOptions;
import omni.graffle.Pasteboard;
import omni.graffle.TypeIdentifier;
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
                form.addField(new StringField("alias", "Alias", "", null), null);
                form.addField(new MultipleOptions("opts", "Things", [1,2,3], ["One", "Two", "Three"], [2]), null);
                form.validate = (form) -> {

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

            if(selection.solids.length == 1) {
                final text = selection.solids[0].text;

                final graphic = '
                <?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>Color</key>
	<dict>
		<key>b</key>
		<string>1</string>
		<key>g</key>
		<string>1</string>
		<key>r</key>
		<string>1</string>
		<key>space</key>
		<string>srgb</string>
	</dict>
	<key>DocumentSettings</key>
	<dict>
		<key>ApplicationVersion</key>
		<array>
			<string>com.omnigroup.OmniGraffle7</string>
			<string>204.8.0</string>
		</array>
		<key>CreationDate</key>
		<string>2021-02-12 21:29:19 +0000</string>
		<key>Creator</key>
		<string>Nick Main</string>
		<key>FileName</key>
		<string>Untitled</string>
		<key>GraphDocumentVersion</key>
		<integer>16</integer>
		<key>ModelIndex</key>
		<integer>0</integer>
		<key>ModificationDate</key>
		<string>2021-02-14 03:40:21 +0000</string>
		<key>Modifier</key>
		<string>Nick Main</string>
		<key>SheetTitle</key>
		<string>Canvas 1</string>
	</dict>
	<key>GraphicsList</key>
	<array>
		<dict>
			<key>AbsoluteRotation</key>
			<true/>
			<key>Bounds</key>
			<string>{{360, 288}, {72, 72}}</string>
			<key>Class</key>
			<string>ShapedGraphic</string>
			<key>ID</key>
			<integer>52</integer>
			<key>LayerIndex</key>
			<integer>0</integer>
			<key>Shape</key>
			<string>AdjustableStar</string>
			<key>ShapeData</key>
			<dict>
				<key>innerRadius</key>
				<real>0.2258594207291687</real>
				<key>starPoints</key>
				<real>${text.length}</real>
			</dict>
			<key>Style</key>
			<dict>
				<key>shadow</key>
				<dict>
					<key>Draws</key>
					<string>NO</string>
				</dict>
			</dict>
			<key>Text</key>
			<dict>
				<key>Pad</key>
				<real>0.0</real>
				<key>Text</key>
				<string>{\\rtf1\\ansi\\ansicpg1252\\cocoartf2578
\\cocoatextscaling0\\cocoaplatform0{\\fonttbl\\f0\\fnil\\fcharset0 HelveticaNeue;}
{\\colortbl;\\red255\\green255\\blue255;\\red0\\green0\\blue0;}
{\\*\\expandedcolortbl;;\\csgray\\c0;}
\\pard\\tx560\\tx\\tx2800\\tx3360\\tx3920\\tx4480\\tx5040\\tx5600\\tx6160\\tx6720\\pardirnatural\\qc\\partightenfactor0

\\f0\\fs32 \\cf2 $text}</string>
				<key>TextAlongPathGlyphAnchor</key>
				<string>center</string>
				<key>VerticalPad</key>
				<real>0.0</real>
			</dict>
			<key>TextPlacement</key>
			<integer>2</integer>
			<key>TextRelativeArea</key>
			<string>{{-0.49999999999999994, 0.26000000000000001}, {2, 1}}</string>
		</dict>
	</array>
	<key>Layers</key>
	<array>
		<dict>
			<key>Artboards</key>
			<false/>
			<key>Lock</key>
			<false/>
			<key>Name</key>
			<string>Layer 1</string>
			<key>Print</key>
			<true/>
			<key>View</key>
			<true/>
		</dict>
	</array>
	<key>Origin</key>
	<string>{0, 0}</string>
	<key>Scale</key>
	<string>No scale</string>
	<key>ZoomLevel</key>
	<real>1</real>
</dict>
</plist>
';
                Pasteboard.general.clear();
                Pasteboard.general.setStringForType(graphic, new TypeIdentifier("com.omnigroup.OmniGraffle.GraphicType"));
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

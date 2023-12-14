package samples;

import omni.graffle.StringEncoding;
import omni.graffle.FileSaver;
import omni.graffle.Data;
import omni.graffle.URL;
import omni.graffle.FileWrapper;
import js.lib.Error;
import omni.graffle.Selection;
import epistem.omni.graffle.Action;
import epistem.omni.graffle.Globals;
import omni.graffle.ToolbarItem;
import omni.graffle.MenuItem;
import epistem.typescript.Helpers.Union2;

@:expose
class HelloWorld extends Action {
	var file: URL;

    public function new() {
        super();
    }

    // Perform the action
    public function perform(selection: Selection, sender: Null<Union2<ToolbarItem, MenuItem>>) {

		if(selection.solids.length > 0) {
			final text = selection.solids[0].text;

			final wrapper = FileWrapper.withContents("test.txt", Data.fromString(text, StringEncoding.UTF8));

			if(file == null) {
				new FileSaver().show(wrapper).then( (url: URL) -> {
					trace('url = $url');
					file = url;						
				});
			} else {
				trace('saving to $file');
				wrapper.write(file, null, null);
			}
		} else {
			Globals.document.makeFileWrapper("test.svg", "public.image-svg").then((fw: FileWrapper) -> {
				new FileSaver().show(fw);
			});
		}
    }

    // Determine whether this action can be invoked on the given selection
    override public function validate(selection: Selection, sender: Null<Union2<ToolbarItem, MenuItem>>): Bool {
        return true;
    }
}

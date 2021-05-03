// Automatically generated. Do not edit.

package omni.focus;

@:native("DatabaseDocument")
extern class DatabaseDocument extends omni.common.Document {
    var windows (default,never): Array<omni.focus.DocumentWindow>;

    function newWindow(): js.lib.Promise<omni.focus.DocumentWindow>;
    function newTabOnWindow(window: omni.focus.DocumentWindow): js.lib.Promise<omni.focus.DocumentWindow>;
}

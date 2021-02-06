// Automatically generated. Do not edit.

package omni.focus.plugin;

@:native("PlugIn.Action")
extern class Action {
    var description (default,never): String;
    var label (default,never): String;
    var longLabel (default,never): String;
    var mediumLabel (default,never): String;
    var name (default,never): String;
    var paletteLabel (default,never): String;
    var perform (default,never): js.lib.Function;
    var plugIn (default,never): omni.focus.PlugIn;
    var shortLabel (default,never): String;
    var validate: Null<js.lib.Function>;

    function new(perform: js.lib.Function);

}

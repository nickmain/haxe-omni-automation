// Automatically generated. Do not edit.

package omni.outliner.plugin;

@:native("PlugIn.Action")
extern class Action {
    var description (default,never): String;
    var label (default,never): String;
    var longLabel (default,never): String;
    var mediumLabel (default,never): String;
    var name (default,never): String;
    var paletteLabel (default,never): String;
    var perform (default,never): (Dynamic) -> Void;
    var plugIn (default,never): omni.outliner.PlugIn;
    var shortLabel (default,never): String;
    var validate: Null<(Dynamic) -> Void>;

    function new(perform: (Dynamic) -> Void);

}

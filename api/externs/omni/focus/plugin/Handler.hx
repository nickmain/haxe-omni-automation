// Automatically generated. Do not edit.

package omni.focus.plugin;

@:native("PlugIn.Handler")
extern class Handler {
    var invoke (default,never): js.lib.Function;
    var name (default,never): String;
    var plugIn (default,never): omni.focus.PlugIn;
    var willAttach: Null<js.lib.Function>;
    var willDetach: Null<js.lib.Function>;

    function new(invoke: js.lib.Function);

}

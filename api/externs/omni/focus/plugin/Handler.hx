// Automatically generated. Do not edit.

package omni.focus.plugin;

@:native("PlugIn.Handler")
extern class Handler {
    var invoke (default,never): (Dynamic) -> Void;
    var name (default,never): String;
    var plugIn (default,never): omni.focus.PlugIn;
    var willAttach: Null<(Dynamic) -> Void>;
    var willDetach: Null<(Dynamic) -> Void>;

    function new(invoke: (Dynamic) -> Void);

}

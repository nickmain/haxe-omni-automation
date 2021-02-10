// Automatically generated. Do not edit.

package omni.graffle.plugin;

@:native("PlugIn.Handler")
extern class Handler {
    var invoke (default,never): (Dynamic) -> Void;
    var name (default,never): String;
    var plugIn (default,never): omni.graffle.PlugIn;
    var willAttach: Null<(Dynamic) -> Void>;
    var willDetach: Null<(Dynamic) -> Void>;

    function new(invoke: (Dynamic) -> Void);

}

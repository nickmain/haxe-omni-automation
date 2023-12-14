// Automatically generated. Do not edit.

package omni.focus;

@:native("Notification")
extern class Notification {
    var subtitle: Null<String>;
    var title: String;

    function new(title: String);

    function show(): js.lib.Promise<omni.focus.Notification>;
}

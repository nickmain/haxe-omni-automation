// Automatically generated. Do not edit.

package omni.graffle;

@:native("Alert")
extern class Alert {

    function new(title: String, message: String);

    function show(callback: Null<js.lib.Function>): js.lib.Promise<Float>;
    function addOption(string: String): Void;
}

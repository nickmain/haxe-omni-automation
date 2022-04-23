// Automatically generated. Do not edit.

package omni.outliner;

@:native("Alert")
extern class Alert {

    function new(title: String, message: String);

    function show(callback: (option: Float) -> Null<Void>): js.lib.Promise<Float>;
    function addOption(string: String): Void;
}

// Automatically generated. Do not edit.

package omni.focus;

@:native("FilePicker")
extern class FilePicker {
    var folders: Bool;
    var message: String;
    var multiple: Bool;
    var types: Null<Array<omni.focus.TypeIdentifier>>;

    function new();

    function show(): js.lib.Promise<Array<omni.focus.URL>>;
}

// Automatically generated. Do not edit.

package omni.graffle;

@:native("FilePicker")
extern class FilePicker {
    var folders: Bool;
    var message: String;
    var multiple: Bool;
    var types: Null<Array<omni.graffle.TypeIdentifier>>;

    function new();

    function show(): js.lib.Promise<Array<omni.graffle.URL>>;
}

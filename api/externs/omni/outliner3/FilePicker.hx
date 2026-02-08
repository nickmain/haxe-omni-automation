// Automatically generated. Do not edit.

package omni.outliner;

@:native("FilePicker")
extern class FilePicker {
    var folders: Bool;
    var message: String;
    var multiple: Bool;
    var types: Null<Array<omni.outliner.TypeIdentifier>>;

    function new();

    function show(): js.lib.Promise<Array<omni.outliner.URL>>;
}

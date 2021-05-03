// Automatically generated. Do not edit.

package omni.common;

@:native("FilePicker")
extern class FilePicker {
    var folders: Bool;
    var message: String;
    var multiple: Bool;
    var types: Null<Array<omni.common.TypeIdentifier>>;

    function new();

    function show(): js.lib.Promise<Array<omni.common.URL>>;
}

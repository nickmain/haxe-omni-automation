// Automatically generated. Do not edit.

package omni.focus;

@:native("FileSaver")
extern class FileSaver {
    var message: String;
    var nameLabel: String;
    var prompt: String;
    var types: Null<Array<omni.focus.TypeIdentifier>>;

    function new();

    function show(fileWrapper: omni.focus.FileWrapper): js.lib.Promise<omni.focus.URL>;
}

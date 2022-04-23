// Automatically generated. Do not edit.

package omni.graffle;

@:native("FileSaver")
extern class FileSaver {
    var message: String;
    var nameLabel: String;
    var prompt: String;
    var types: Null<Array<omni.graffle.TypeIdentifier>>;

    function new();

    function show(fileWrapper: omni.graffle.FileWrapper): js.lib.Promise<omni.graffle.URL>;
}

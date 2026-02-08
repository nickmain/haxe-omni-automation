// Automatically generated. Do not edit.

package omni.outliner;

@:native("FileSaver")
extern class FileSaver {
    var message: String;
    var nameLabel: String;
    var prompt: String;
    var types: Null<Array<omni.outliner.TypeIdentifier>>;

    function new();

    function show(fileWrapper: omni.outliner.FileWrapper): js.lib.Promise<omni.outliner.URL>;
}

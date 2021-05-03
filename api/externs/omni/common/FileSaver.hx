// Automatically generated. Do not edit.

package omni.common;

@:native("FileSaver")
extern class FileSaver {
    var message: String;
    var nameLabel: String;
    var prompt: String;
    var types: Null<Array<omni.common.TypeIdentifier>>;

    function new();

    function show(fileWrapper: omni.common.FileWrapper): js.lib.Promise<omni.common.URL>;
}

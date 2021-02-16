// Automatically generated. Do not edit.

package omni.outliner.pasteboard;

@:native("Pasteboard.Item")
extern class Item {
    var types (default,never): Array<omni.outliner.TypeIdentifier>;

    function new();

    function dataForType(type: omni.outliner.TypeIdentifier): Null<omni.outliner.Data>;
    function setDataForType(data: omni.outliner.Data, type: omni.outliner.TypeIdentifier): Void;
    function stringForType(type: omni.outliner.TypeIdentifier): Null<String>;
    function setStringForType(string: String, type: omni.outliner.TypeIdentifier): Void;
}

// Automatically generated. Do not edit.

package omni.graffle.pasteboard;

@:native("Pasteboard.Item")
extern class Item {
    var types (default,never): Array<omni.graffle.TypeIdentifier>;

    function new();

    function dataForType(type: omni.graffle.TypeIdentifier): Null<omni.graffle.Data>;
    function setDataForType(data: omni.graffle.Data, type: omni.graffle.TypeIdentifier): Void;
    function stringForType(type: omni.graffle.TypeIdentifier): Null<String>;
    function setStringForType(string: String, type: omni.graffle.TypeIdentifier): Void;
}

// Automatically generated. Do not edit.

package omni.common.pasteboard;

@:native("Pasteboard.Item")
extern class Item {
    var types (default,never): Array<omni.common.TypeIdentifier>;

    function new();

    function dataForType(type: omni.common.TypeIdentifier): Null<omni.common.Data>;
    function setDataForType(data: omni.common.Data, type: omni.common.TypeIdentifier): Void;
    function stringForType(type: omni.common.TypeIdentifier): Null<String>;
    function setStringForType(string: String, type: omni.common.TypeIdentifier): Void;
}

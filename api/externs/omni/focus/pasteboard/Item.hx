// Automatically generated. Do not edit.

package omni.focus.pasteboard;

@:native("Pasteboard.Item")
extern class Item {
    var types (default,never): Array<omni.focus.TypeIdentifier>;

    function new();

    function dataForType(type: omni.focus.TypeIdentifier): Null<omni.focus.Data>;
    function setDataForType(data: omni.focus.Data, type: omni.focus.TypeIdentifier): Void;
    function stringForType(type: omni.focus.TypeIdentifier): Null<String>;
    function setStringForType(string: String, type: omni.focus.TypeIdentifier): Void;
}

// Automatically generated. Do not edit.

package omni.common;

@:native("Pasteboard")
extern class Pasteboard {
    static var general (default,never): omni.common.Pasteboard;
    static function makeUnique(): omni.common.Pasteboard;
    var URL: Null<omni.common.URL>;
    var URLs: Null<Array<omni.common.URL>>;
    var color: Null<omni.common.Color>;
    var colors: Null<Array<omni.common.Color>>;
    var hasColors (default,never): Bool;
    var hasImages (default,never): Bool;
    var hasStrings (default,never): Bool;
    var hasURLs (default,never): Bool;
    var image: Null<omni.common.Image>;
    var images: Null<Array<omni.common.Image>>;
    var items: Array<omni.common.pasteboard.Item>;
    var string: Null<String>;
    var strings: Null<Array<String>>;
    var types (default,never): Array<omni.common.TypeIdentifier>;

    function availableType(types: Array<omni.common.TypeIdentifier>): Null<omni.common.TypeIdentifier>;
    function addItems(items: Array<omni.common.pasteboard.Item>): Void;
    function clear(): Void;
    function dataForType(type: omni.common.TypeIdentifier): Null<omni.common.Data>;
    function setDataForType(data: omni.common.Data, type: omni.common.TypeIdentifier): Void;
    function stringForType(type: omni.common.TypeIdentifier): Null<String>;
    function setStringForType(string: String, type: omni.common.TypeIdentifier): Void;
}

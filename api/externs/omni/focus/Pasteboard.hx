// Automatically generated. Do not edit.

package omni.focus;

@:native("Pasteboard")
extern class Pasteboard {
    static var general (default,never): omni.focus.Pasteboard;
    static function makeUnique(): omni.focus.Pasteboard;
    var URL: Null<omni.focus.URL>;
    var URLs: Null<Array<omni.focus.URL>>;
    var color: Null<omni.focus.Color>;
    var colors: Null<Array<omni.focus.Color>>;
    var hasColors (default,never): Bool;
    var hasImages (default,never): Bool;
    var hasStrings (default,never): Bool;
    var hasURLs (default,never): Bool;
    var image: Null<omni.focus.Image>;
    var images: Null<Array<omni.focus.Image>>;
    var items: Array<omni.focus.pasteboard.Item>;
    var string: Null<String>;
    var strings: Null<Array<String>>;
    var types (default,never): Array<omni.focus.TypeIdentifier>;

    function availableType(types: Array<omni.focus.TypeIdentifier>): Null<omni.focus.TypeIdentifier>;
    function addItems(items: Array<omni.focus.pasteboard.Item>): Void;
    function clear(): Void;
    function dataForType(type: omni.focus.TypeIdentifier): Null<omni.focus.Data>;
    function setDataForType(data: omni.focus.Data, type: omni.focus.TypeIdentifier): Void;
    function stringForType(type: omni.focus.TypeIdentifier): Null<String>;
    function setStringForType(string: String, type: omni.focus.TypeIdentifier): Void;
}

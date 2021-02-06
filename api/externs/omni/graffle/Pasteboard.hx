// Automatically generated. Do not edit.

package omni.graffle;

@:native("Pasteboard")
extern class Pasteboard {
    static var general (default,never): omni.graffle.Pasteboard;
    static function makeUnique(): omni.graffle.Pasteboard;
    var URL: Null<omni.graffle.URL>;
    var URLs: Null<Array<omni.graffle.URL>>;
    var color: Null<omni.graffle.Color>;
    var colors: Null<Array<omni.graffle.Color>>;
    var hasColors (default,never): Bool;
    var hasImages (default,never): Bool;
    var hasStrings (default,never): Bool;
    var hasURLs (default,never): Bool;
    var image: Null<omni.graffle.Image>;
    var images: Null<Array<omni.graffle.Image>>;
    var items: Array<omni.graffle.pasteboard.Item>;
    var string: Null<String>;
    var strings: Null<Array<String>>;
    var types (default,never): Array<omni.graffle.TypeIdentifier>;

    function availableType(types: Array<omni.graffle.TypeIdentifier>): Null<omni.graffle.TypeIdentifier>;
    function addItems(items: Array<omni.graffle.pasteboard.Item>): Void;
    function clear(): Void;
    function dataForType(type: omni.graffle.TypeIdentifier): Null<omni.graffle.Data>;
    function setDataForType(data: omni.graffle.Data, type: omni.graffle.TypeIdentifier): Void;
    function stringForType(type: omni.graffle.TypeIdentifier): Null<String>;
    function setStringForType(string: String, type: omni.graffle.TypeIdentifier): Void;
}

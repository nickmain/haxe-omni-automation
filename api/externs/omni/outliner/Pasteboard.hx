// Automatically generated. Do not edit.

package omni.outliner;

@:native("Pasteboard")
extern class Pasteboard {
    static var general (default,never): omni.outliner.Pasteboard;
    static function makeUnique(): omni.outliner.Pasteboard;
    var URL: Null<omni.outliner.URL>;
    var URLs: Null<Array<omni.outliner.URL>>;
    var color: Null<omni.outliner.Color>;
    var colors: Null<Array<omni.outliner.Color>>;
    var hasColors (default,never): Bool;
    var hasImages (default,never): Bool;
    var hasStrings (default,never): Bool;
    var hasURLs (default,never): Bool;
    var image: Null<omni.outliner.Image>;
    var images: Null<Array<omni.outliner.Image>>;
    var items: Array<omni.outliner.pasteboard.Item>;
    var string: Null<String>;
    var strings: Null<Array<String>>;
    var types (default,never): Array<omni.outliner.TypeIdentifier>;

    function availableType(types: Array<omni.outliner.TypeIdentifier>): Null<omni.outliner.TypeIdentifier>;
    function addItems(items: Array<omni.outliner.pasteboard.Item>): Void;
    function clear(): Void;
    function dataForType(type: omni.outliner.TypeIdentifier): Null<omni.outliner.Data>;
    function setDataForType(data: omni.outliner.Data, type: omni.outliner.TypeIdentifier): Void;
    function stringForType(type: omni.outliner.TypeIdentifier): Null<String>;
    function setStringForType(string: String, type: omni.outliner.TypeIdentifier): Void;
}

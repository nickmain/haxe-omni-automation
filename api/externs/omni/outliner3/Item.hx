// Automatically generated. Do not edit.

package omni.outliner;

@:native("Item")
extern class Item {
    var after (default,never): omni.outliner.ItemPosition;
    var ancestors (default,never): Array<omni.outliner.Item>;
    var before (default,never): omni.outliner.ItemPosition;
    var beginning (default,never): omni.outliner.ItemPosition;
    var children (default,never): Array<omni.outliner.Item>;
    var childrenAreSections: Bool;
    var descendants (default,never): Array<omni.outliner.Item>;
    var descendents (default,never): Array<omni.outliner.Item>;
    var end (default,never): omni.outliner.ItemPosition;
    var followingSiblings (default,never): Array<omni.outliner.Item>;
    var hasChildren (default,never): Bool;
    var identifier (default,never): String;
    var index (default,never): Float;
    var leaves (default,never): Array<omni.outliner.Item>;
    var level (default,never): Float;
    var note: String;
    var outline (default,never): omni.outliner.Outline;
    var parent (default,never): Null<omni.outliner.Item>;
    var precedingSiblings (default,never): Array<omni.outliner.Item>;
    var sections (default,never): Array<omni.outliner.Item>;
    var state: Null<omni.outliner.State>;
    var style (default,never): omni.outliner.Style;
    var topic: String;

    function setValueForColumn(value: Null<Dynamic>, column: omni.outliner.Column): Void;
    function valueForColumn(column: omni.outliner.Column): Null<Dynamic>;
    function addChild(position: Null<omni.outliner.ItemPosition>, configure: (child: omni.outliner.Item) -> Null<Void>): omni.outliner.Item;
    function remove(): Void;
    function apply(f: (item: omni.outliner.Item) -> Null<omni.outliner.item.ApplyResult>): Void;
}

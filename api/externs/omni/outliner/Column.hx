// Automatically generated. Do not edit.

package omni.outliner;

@:native("Column")
extern class Column {
    var enumeration (default,never): Null<omni.outliner.Enumeration>;
    var formatter: Null<omni.common.Formatter>;
    var outline (default,never): omni.outliner.Outline;
    var style (default,never): omni.outliner.Style;
    var textAlignment: omni.outliner.TextAlignment;
    var title: String;
    var type (default,never): omni.outliner.column.Type;

    function remove(): Void;
}

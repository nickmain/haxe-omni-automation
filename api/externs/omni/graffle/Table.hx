// Automatically generated. Do not edit.

package omni.graffle;

@:native("Table")
extern class Table extends Group {
    static function withRowsColumns(rows: Float, columns: Float, graphics: Array<omni.graffle.Graphic>): omni.graffle.Table;
    var columns: Float;
    var rows: Float;

    function new(graphic: omni.graffle.Graphic);

    function graphicAt(row: Float, column: Float): Null<omni.graffle.Graphic>;
    function setRowHeight(pts: Float, ofRow: Float): Void;
    function setColumnWidth(pts: Float, ofColumn: Float): Void;
}

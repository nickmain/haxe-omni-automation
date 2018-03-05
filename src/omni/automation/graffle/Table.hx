package omni.automation.graffle;

/**
 * A ‘Table’ is a type of ‘Group’ where the graphics inside aren’t arranged arbitrarily,
 * but are instead in fixed rows and columns.
 */
@:native("Table")
extern class Table {
    public function new(graphic: Graphic);

    static function withRowsColumns(rows: Float, columns: Float, graphics: Array<Graphic>): Table;

    // Number of columns in the table.
    var columns: Float;

    // Number of rows in the table.
    var rows: Float;

    // Retrieve the contained graphic at the given row and column index.
    function graphicAt(row: Float, column: Float): Null<Graphic>;

    // Change the height of all graphics in the given row index so that the row itself
    // is the new height.
    function setRowHeight(pts: Float, ofRow: Float): Void;

    // Change the width of all graphics in the given column index so that the column
    // itself is the new width.
    function setColumnWidth(pts: Float, ofColumn: Float): Void;
}

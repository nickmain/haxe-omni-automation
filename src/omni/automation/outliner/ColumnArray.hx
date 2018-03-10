package omni.automation.outliner;

@native("ColumnArray")
extern class ColumnArray extends Array<Column> {

    // Return the first Column having the given title,
    // or null if no such column is in the array.
    function byTitle(title: String): Null<Column>;
}

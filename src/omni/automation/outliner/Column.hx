package omni.automation.outliner;

@:native("Column")
extern class Column {

    // If the column is a of type Column.Type.Enumeration, this returns the
    // Enumeration of members defined for use in cells in that column.
    var enumeration (default,null): Null<Enumeration>;

    // Controls the format used to display values displayed in this column.
    // Only some column types allow formatters, and the type of the formatter
    // must match the type of data in the column (for example, a column with
    // a type of Column.Type.Number should have a formatter of type
    // Formatter.Number.
    var formatter: Null<Formatter>;

    var outline (default,null): Outline;

    // The style used for cells in this column (which may be overridden by
    // individual rows and their cells).
    var style (default,null): Style;

    // Controls the TextAlignment of the contents of cells in the Column.
    var textAlignment: TextAlignment;

    var title: String;

    var type (default,null): ColumnType;

    // Removes a previously added column from its outline. Pre-defined columns
    // like the outline column, note column, and status column cannot be
    // removed. Calling remove() on them will throw an error.
    function remove(): Void;
}

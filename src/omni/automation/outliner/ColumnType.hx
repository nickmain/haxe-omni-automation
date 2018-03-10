package omni.automation.outliner;

@:native("Column.Type")
extern class ColumnType {

    static var Checkbox (default,null): ColumnType;
    static var Date (default,null): ColumnType;
    static var Duration (default,null): ColumnType;
    static var Enumeration (default,null): ColumnType;
    static var Number (default,null): ColumnType;
    static var Text (default,null): ColumnType;

    var identifier (default,null): String;
}

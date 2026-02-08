// Automatically generated. Do not edit.

package omni.outliner.namedstyle;

@:native("NamedStyle.List")
extern class List {
    var all (default,never): Array<omni.outliner.NamedStyle>;
    var beginning (default,never): omni.outliner.NamedStylePosition;
    var end (default,never): omni.outliner.NamedStylePosition;

    function add(name: Null<String>): omni.outliner.NamedStyle;
    function byName(name: String): Null<omni.outliner.NamedStyle>;
    function byIdentifier(identifier: String): Null<omni.outliner.NamedStyle>;
    function moveStyles(styles: Array<omni.outliner.NamedStyle>, position: omni.outliner.NamedStylePosition): Void;
    function duplicateStyles(styles: Array<omni.outliner.NamedStyle>, position: omni.outliner.NamedStylePosition): Array<omni.outliner.NamedStyle>;
}

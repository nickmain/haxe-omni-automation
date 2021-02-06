// Automatically generated. Do not edit.

package omni.focus.namedstyle;

@:native("NamedStyle.List")
extern class List {
    var all (default,never): Array<omni.focus.NamedStyle>;
    var beginning (default,never): omni.focus.NamedStylePosition;
    var end (default,never): omni.focus.NamedStylePosition;

    function add(name: Null<String>): omni.focus.NamedStyle;
    function byName(name: String): Null<omni.focus.NamedStyle>;
    function byIdentifier(identifier: String): Null<omni.focus.NamedStyle>;
    function moveStyles(styles: Array<omni.focus.NamedStyle>, position: omni.focus.NamedStylePosition): Void;
    function duplicateStyles(styles: Array<omni.focus.NamedStyle>, position: omni.focus.NamedStylePosition): Array<omni.focus.NamedStyle>;
}

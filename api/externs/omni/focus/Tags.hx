// Automatically generated. Do not edit.

package omni.focus;

@:native("Tags")
extern class Tags extends TagArray {
    var beginning (default,never): omni.focus.tag.ChildInsertionLocation;
    var ending (default,never): omni.focus.tag.ChildInsertionLocation;

    function apply(f: js.lib.Function): Null<omni.focus.ApplyResult>;
}

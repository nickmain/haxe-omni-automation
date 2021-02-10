// Automatically generated. Do not edit.

package omni.focus;

@:native("Tags")
extern class Tags extends TagArray {
    var beginning (default,never): omni.focus.tag.ChildInsertionLocation;
    var ending (default,never): omni.focus.tag.ChildInsertionLocation;

    function apply(f: (Dynamic) -> Void): Null<omni.focus.ApplyResult>;
}

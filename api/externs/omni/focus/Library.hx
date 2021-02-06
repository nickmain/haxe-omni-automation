// Automatically generated. Do not edit.

package omni.focus;

@:native("Library")
extern class Library extends SectionArray {
    var beginning (default,never): omni.focus.folder.ChildInsertionLocation;
    var ending (default,never): omni.focus.folder.ChildInsertionLocation;

    function apply(f: js.lib.Function): Null<omni.focus.ApplyResult>;
}

// Automatically generated. Do not edit.

package omni.focus;

@:native("Inbox")
extern class Inbox extends TaskArray {
    var beginning (default,never): omni.focus.task.ChildInsertionLocation;
    var ending (default,never): omni.focus.task.ChildInsertionLocation;

    function apply(f: (Dynamic) -> Void): Null<omni.focus.ApplyResult>;
}

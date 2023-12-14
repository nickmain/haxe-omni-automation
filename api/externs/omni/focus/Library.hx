// Automatically generated. Do not edit.

package omni.focus;

@:native("Library")
extern class Library extends SectionArray {
    var beginning (default,never): omni.focus.folder.ChildInsertionLocation;
    var ending (default,never): omni.focus.folder.ChildInsertionLocation;

    function apply(f: (section: epistem.typescript.Helpers.Union2<omni.focus.Project, omni.focus.Folder>) -> Null<omni.focus.ApplyResult>): Null<omni.focus.ApplyResult>;
}

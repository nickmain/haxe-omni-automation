// Automatically generated. Do not edit.

package omni.focus;

@:native("Folder")
extern class Folder extends ActiveObject {
    static function byIdentifier(identifier: String): Null<omni.focus.Folder>;
    var after (default,never): omni.focus.folder.ChildInsertionLocation;
    var before (default,never): omni.focus.folder.ChildInsertionLocation;
    var beginning (default,never): omni.focus.folder.ChildInsertionLocation;
    var children (default,never): omni.focus.SectionArray;
    var ending (default,never): omni.focus.folder.ChildInsertionLocation;
    var flattenedChildren (default,never): omni.focus.SectionArray;
    var flattenedFolders (default,never): omni.focus.FolderArray;
    var flattenedProjects (default,never): omni.focus.ProjectArray;
    var flattenedSections (default,never): omni.focus.SectionArray;
    var folders (default,never): omni.focus.FolderArray;
    var name: String;
    var parent (default,never): Null<omni.focus.Folder>;
    var projects (default,never): omni.focus.ProjectArray;
    var sections (default,never): omni.focus.SectionArray;
    var status: omni.focus.folder.Status;

    function new(name: String, position: Null<epistem.typescript.Helpers.Union2<omni.focus.Folder, omni.focus.folder.ChildInsertionLocation>>);

    function folderNamed(name: String): Null<omni.focus.Folder>;
    function projectNamed(name: String): Null<omni.focus.Project>;
    function sectionNamed(name: String): Null<epistem.typescript.Helpers.Union2<omni.focus.Project, omni.focus.Folder>>;
    function childNamed(name: String): Null<epistem.typescript.Helpers.Union2<omni.focus.Project, omni.focus.Folder>>;
    function apply(f: (Dynamic) -> Void): Null<omni.focus.ApplyResult>;
}

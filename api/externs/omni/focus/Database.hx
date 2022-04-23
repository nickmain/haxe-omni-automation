// Automatically generated. Do not edit.

package omni.focus;

@:native("Database")
extern class Database {
    var app (default,never): omni.focus.Application;
    var canRedo (default,never): Bool;
    var canUndo (default,never): Bool;
    var console (default,never): omni.focus.Console;
    var document (default,never): Null<omni.focus.DatabaseDocument>;
    var flattenedFolders (default,never): omni.focus.FolderArray;
    var flattenedProjects (default,never): omni.focus.ProjectArray;
    var flattenedSections (default,never): omni.focus.SectionArray;
    var flattenedTags (default,never): omni.focus.TagArray;
    var flattenedTasks (default,never): omni.focus.TaskArray;
    var folders (default,never): omni.focus.FolderArray;
    var inbox (default,never): omni.focus.Inbox;
    var library (default,never): omni.focus.Library;
    var projects (default,never): omni.focus.ProjectArray;
    var settings (default,never): omni.focus.Settings;
    var tags (default,never): omni.focus.Tags;

    function tagNamed(name: String): Null<omni.focus.Tag>;
    function folderNamed(name: String): Null<omni.focus.Folder>;
    function projectNamed(name: String): Null<omni.focus.Project>;
    function projectsMatching(search: String): Array<omni.focus.Project>;
    function foldersMatching(search: String): Array<omni.focus.Folder>;
    function tagsMatching(search: String): Array<omni.focus.Tag>;
    function taskNamed(name: String): Null<omni.focus.Task>;
    function save(): Void;
    function moveTasks(tasks: Array<omni.focus.Task>, position: epistem.typescript.Helpers.Union3<omni.focus.Project, omni.focus.Task, omni.focus.task.ChildInsertionLocation>): Void;
    function duplicateTasks(tasks: Array<omni.focus.Task>, position: epistem.typescript.Helpers.Union3<omni.focus.Project, omni.focus.Task, omni.focus.task.ChildInsertionLocation>): omni.focus.TaskArray;
    function convertTasksToProjects(tasks: Array<omni.focus.Task>, position: epistem.typescript.Helpers.Union2<omni.focus.Folder, omni.focus.folder.ChildInsertionLocation>): Array<omni.focus.Project>;
    function moveSections(sections: Array<epistem.typescript.Helpers.Union2<omni.focus.Project, omni.focus.Folder>>, position: epistem.typescript.Helpers.Union2<omni.focus.Folder, omni.focus.folder.ChildInsertionLocation>): Void;
    function duplicateSections(sections: Array<epistem.typescript.Helpers.Union2<omni.focus.Project, omni.focus.Folder>>, position: epistem.typescript.Helpers.Union2<omni.focus.Folder, omni.focus.folder.ChildInsertionLocation>): omni.focus.SectionArray;
    function moveTags(tags: Array<omni.focus.Tag>, position: epistem.typescript.Helpers.Union2<omni.focus.Tag, omni.focus.tag.ChildInsertionLocation>): Void;
    function duplicateTags(tags: Array<omni.focus.Tag>, position: epistem.typescript.Helpers.Union2<omni.focus.Tag, omni.focus.tag.ChildInsertionLocation>): omni.focus.TagArray;
    function cleanUp(): Void;
    function undo(): Void;
    function redo(): Void;
    function deleteObject(object: omni.focus.DatabaseObject): Void;
    function copyTasksToPasteboard(tasks: Array<omni.focus.Task>, pasteboard: omni.focus.Pasteboard): Void;
    function canPasteTasks(pasteboard: omni.focus.Pasteboard): Bool;
    function pasteTasksFromPasteboard(pasteboard: omni.focus.Pasteboard): Array<omni.focus.Task>;
}

// Automatically generated. Do not edit.

package omni.focus;

@:native("Project")
extern class Project extends DatabaseObject {
    static function byIdentifier(identifier: String): Null<omni.focus.Project>;
    var after (default,never): omni.focus.folder.ChildInsertionLocation;
    var attachments: Array<omni.common.FileWrapper>;
    var before (default,never): omni.focus.folder.ChildInsertionLocation;
    var beginning (default,never): omni.focus.task.ChildInsertionLocation;
    var children (default,never): omni.focus.TaskArray;
    var completed (default,never): Bool;
    var completedByChildren: Bool;
    var completionDate: Null<js.lib.Date>;
    var containsSingletonActions: Bool;
    var defaultSingletonActionHolder: Bool;
    var deferDate: Null<js.lib.Date>;
    var dropDate: Null<js.lib.Date>;
    var dueDate: Null<js.lib.Date>;
    var effectiveCompletedDate (default,never): Null<js.lib.Date>;
    var effectiveDeferDate (default,never): Null<js.lib.Date>;
    var effectiveDropDate (default,never): Null<js.lib.Date>;
    var effectiveDueDate (default,never): Null<js.lib.Date>;
    var effectiveFlagged (default,never): Bool;
    var ending (default,never): omni.focus.task.ChildInsertionLocation;
    var estimatedMinutes: Null<Float>;
    var flagged: Bool;
    var flattenedChildren (default,never): omni.focus.TaskArray;
    var flattenedTasks (default,never): omni.focus.TaskArray;
    var hasChildren (default,never): Bool;
    var lastReviewDate: Null<js.lib.Date>;
    var linkedFileURLs (default,never): Array<omni.common.URL>;
    var name: String;
    var nextReviewDate: Null<js.lib.Date>;
    var nextTask (default,never): Null<omni.focus.Task>;
    var note: String;
    var notifications (default,never): Array<omni.focus.task.Notification>;
    var parentFolder (default,never): Null<omni.focus.Folder>;
    var repetitionRule: Null<omni.focus.task.RepetitionRule>;
    var reviewInterval: omni.focus.project.ReviewInterval;
    var sequential: Bool;
    var shouldUseFloatingTimeZone: Bool;
    var status: omni.focus.project.Status;
    var tags (default,never): omni.focus.TagArray;
    var task (default,never): omni.focus.Task;
    var taskStatus (default,never): omni.focus.task.Status;
    var tasks (default,never): omni.focus.TaskArray;

    function new(name: String, position: Null<epistem.typescript.Helpers.Union2<omni.focus.Folder, omni.focus.folder.ChildInsertionLocation>>);

    function taskNamed(name: String): Null<omni.focus.Task>;
    function appendStringToNote(stringToAppend: String): Void;
    function addAttachment(attachment: omni.common.FileWrapper): Void;
    function removeAttachmentAtIndex(index: Float): Void;
    function markComplete(date: Null<js.lib.Date>): omni.focus.Task;
    function markIncomplete(): Void;
    function addNotification(info: epistem.typescript.Helpers.Union2<Float, js.lib.Date>): omni.focus.task.Notification;
    function removeNotification(notification: omni.focus.task.Notification): Void;
    function addTag(tag: omni.focus.Tag): Void;
    function addTags(tags: Array<omni.focus.Tag>): Void;
    function removeTag(tag: omni.focus.Tag): Void;
    function removeTags(tags: Array<omni.focus.Tag>): Void;
    function clearTags(): Void;
    function addLinkedFileURL(url: omni.common.URL): Void;
    function removeLinkedFileWithURL(url: omni.common.URL): Void;
}

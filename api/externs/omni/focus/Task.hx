// Automatically generated. Do not edit.

package omni.focus;

@:native("Task")
extern class Task extends ActiveObject {
    static function byParsingTransportText(text: String, singleTask: Null<Bool>): Array<omni.focus.Task>;
    static function byIdentifier(identifier: String): Null<omni.focus.Task>;
    var after (default,never): omni.focus.task.ChildInsertionLocation;
    var assignedContainer: epistem.typescript.Helpers.Union4<omni.focus.Project, omni.focus.Task, omni.focus.Inbox, omni.focus.null>;
    var attachments: Array<omni.focus.FileWrapper>;
    var before (default,never): omni.focus.task.ChildInsertionLocation;
    var beginning (default,never): omni.focus.task.ChildInsertionLocation;
    var children (default,never): omni.focus.TaskArray;
    var completed (default,never): Bool;
    var completedByChildren: Bool;
    var completionDate (default,never): Null<js.lib.Date>;
    var containingProject (default,never): Null<omni.focus.Project>;
    var deferDate: Null<js.lib.Date>;
    var dropDate (default,never): Null<js.lib.Date>;
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
    var inInbox (default,never): Bool;
    var linkedFileURLs (default,never): Array<omni.focus.URL>;
    var name: String;
    var note: String;
    var notifications (default,never): Array<omni.focus.task.Notification>;
    var parent (default,never): Null<omni.focus.Task>;
    var project (default,never): Null<omni.focus.Project>;
    var repetitionRule: Null<omni.focus.task.RepetitionRule>;
    var sequential: Bool;
    var shouldUseFloatingTimeZone: Bool;
    var tags (default,never): omni.focus.TagArray;
    var taskStatus (default,never): omni.focus.task.Status;
    var tasks (default,never): omni.focus.TaskArray;

    function new(name: String, position: epistem.typescript.Helpers.Union4<omni.focus.Project, omni.focus.Task, omni.focus.task.ChildInsertionLocation, omni.focus.null>);

    function taskNamed(name: String): Null<omni.focus.Task>;
    function childNamed(name: String): Null<omni.focus.Task>;
    function appendStringToNote(stringToAppend: String): Void;
    function addLinkedFileURL(url: omni.focus.URL): Void;
    function removeLinkedFileWithURL(url: omni.focus.URL): Void;
    function addAttachment(attachment: omni.focus.FileWrapper): Void;
    function removeAttachmentAtIndex(index: Float): Void;
    function addTag(tag: omni.focus.Tag): Void;
    function addTags(tags: Array<omni.focus.Tag>): Void;
    function removeTag(tag: omni.focus.Tag): Void;
    function removeTags(tags: Array<omni.focus.Tag>): Void;
    function clearTags(): Void;
    function markComplete(date: Null<js.lib.Date>): omni.focus.Task;
    function markIncomplete(): Void;
    function drop(allOccurrences: Bool): Void;
    function apply(f: (Dynamic) -> Void): Null<omni.focus.ApplyResult>;
    function addNotification(info: epistem.typescript.Helpers.Union2<Float, js.lib.Date>): omni.focus.task.Notification;
    function removeNotification(notification: omni.focus.task.Notification): Void;
}

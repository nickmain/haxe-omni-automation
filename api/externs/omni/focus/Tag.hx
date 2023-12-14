// Automatically generated. Do not edit.

package omni.focus;

@:native("Tag")
extern class Tag extends ActiveObject {
    static var forecastTag (default,never): Null<omni.focus.Tag>;
    static function byIdentifier(identifier: String): Null<omni.focus.Tag>;
    var after (default,never): omni.focus.tag.ChildInsertionLocation;
    var allowsNextAction: Bool;
    var availableTasks (default,never): omni.focus.TaskArray;
    var before (default,never): omni.focus.tag.ChildInsertionLocation;
    var beginning (default,never): omni.focus.tag.ChildInsertionLocation;
    var beginningOfTasks (default,never): omni.focus.tag.TaskInsertionLocation;
    var children (default,never): omni.focus.TagArray;
    var ending (default,never): omni.focus.tag.ChildInsertionLocation;
    var endingOfTasks (default,never): omni.focus.tag.TaskInsertionLocation;
    var flattenedChildren (default,never): omni.focus.TagArray;
    var flattenedTags (default,never): omni.focus.TagArray;
    var name: String;
    var parent (default,never): Null<omni.focus.Tag>;
    var projects (default,never): omni.focus.ProjectArray;
    var remainingTasks (default,never): omni.focus.TaskArray;
    var status: omni.focus.tag.Status;
    var tags (default,never): omni.focus.TagArray;
    var tasks (default,never): omni.focus.TaskArray;

    function new(name: String, position: Null<epistem.typescript.Helpers.Union2<omni.focus.Tag, omni.focus.tag.ChildInsertionLocation>>);

    function tagNamed(name: String): Null<omni.focus.Tag>;
    function childNamed(name: String): Null<omni.focus.Tag>;
    function beforeTask(task: Null<omni.focus.Task>): omni.focus.tag.TaskInsertionLocation;
    function afterTask(task: Null<omni.focus.Task>): omni.focus.tag.TaskInsertionLocation;
    function moveTask(task: omni.focus.Task, location: omni.focus.tag.TaskInsertionLocation): Void;
    function moveTasks(tasks: Array<omni.focus.Task>, location: omni.focus.tag.TaskInsertionLocation): Void;
    function apply(f: (tag: omni.focus.Tag) -> Null<omni.focus.ApplyResult>): Null<omni.focus.ApplyResult>;
}

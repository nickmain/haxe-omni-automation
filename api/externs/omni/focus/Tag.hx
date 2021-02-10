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
    var children (default,never): omni.focus.TagArray;
    var ending (default,never): omni.focus.tag.ChildInsertionLocation;
    var flattenedChildren (default,never): omni.focus.TagArray;
    var flattenedTags (default,never): omni.focus.TagArray;
    var name: String;
    var parent (default,never): Null<omni.focus.Tag>;
    var projects (default,never): omni.focus.ProjectArray;
    var remainingTasks (default,never): omni.focus.TaskArray;
    var status: omni.focus.tag.Status;
    var tags (default,never): omni.focus.TagArray;
    var tasks (default,never): omni.focus.TaskArray;

    function new(name: String, position: epistem.typescript.Helpers.Union3<omni.focus.Tag, omni.focus.tag.ChildInsertionLocation, omni.focus.null>);

    function tagNamed(name: String): Null<omni.focus.Tag>;
    function childNamed(name: String): Null<omni.focus.Tag>;
    function apply(f: (Dynamic) -> Void): Null<omni.focus.ApplyResult>;
}

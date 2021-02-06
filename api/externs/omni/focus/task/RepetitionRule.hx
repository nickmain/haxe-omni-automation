// Automatically generated. Do not edit.

package omni.focus.task;

@:native("Task.RepetitionRule")
extern class RepetitionRule {
    var method (default,never): omni.focus.task.RepetitionMethod;
    var ruleString (default,never): String;

    function new(ruleString: String, method: omni.focus.task.RepetitionMethod);

    function firstDateAfterDate(date: js.lib.Date): js.lib.Date;
}

// Automatically generated. Do not edit.

package omni.focus.task;

@:native("Task.Notification")
extern class Notification extends omni.focus.DatedObject {
    var absoluteFireDate: js.lib.Date;
    var initialFireDate (default,never): js.lib.Date;
    var isSnoozed (default,never): Bool;
    var kind (default,never): omni.focus.task.notification.Kind;
    var nextFireDate (default,never): Null<js.lib.Date>;
    var relativeFireOffset: Float;
    var repeatInterval: Float;
    var task (default,never): Null<omni.focus.Task>;
    var usesFloatingTimeZone (default,never): Bool;

}

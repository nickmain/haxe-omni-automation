// Automatically generated. Do not edit.

package omni.focus;

@:native("Timer")
extern class Timer {
    static function once(interval: Float, action: js.lib.Function): omni.focus.Timer;
    static function repeating(interval: Float, action: js.lib.Function): omni.focus.Timer;
    var interval (default,never): Float;

    function cancel(): Void;
}

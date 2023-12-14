// Automatically generated. Do not edit.

package omni.focus;

@:native("Timer")
extern class Timer {
    static function once(interval: Float, action: (timer: omni.focus.Timer) -> Void): omni.focus.Timer;
    static function repeating(interval: Float, action: (timer: omni.focus.Timer) -> Void): omni.focus.Timer;
    var interval (default,never): Float;

    function cancel(): Void;
}

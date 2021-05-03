// Automatically generated. Do not edit.

package omni.common;

@:native("Timer")
extern class Timer {
    static function once(interval: Float, action: (Timer) -> Void): omni.common.Timer;
    static function repeating(interval: Float, action: (Timer) -> Void): omni.common.Timer;
    var interval (default,never): Float;

    function cancel(): Void;
}

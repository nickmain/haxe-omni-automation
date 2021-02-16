// Automatically generated. Do not edit.

package omni.outliner;

@:native("Timer")
extern class Timer {
    static function once(interval: Float, action: (Timer) -> Void): omni.outliner.Timer;
    static function repeating(interval: Float, action: (Timer) -> Void): omni.outliner.Timer;
    var interval (default,never): Float;

    function cancel(): Void;
}

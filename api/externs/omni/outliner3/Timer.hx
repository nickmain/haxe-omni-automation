// Automatically generated. Do not edit.

package omni.outliner;

@:native("Timer")
extern class Timer {
    static function once(interval: Float, action: (timer: omni.outliner.Timer) -> Void): omni.outliner.Timer;
    static function repeating(interval: Float, action: (timer: omni.outliner.Timer) -> Void): omni.outliner.Timer;
    var interval (default,never): Float;

    function cancel(): Void;
}

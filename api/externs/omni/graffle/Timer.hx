// Automatically generated. Do not edit.

package omni.graffle;

@:native("Timer")
extern class Timer {
    static function once(interval: Float, action: (Dynamic) -> Void): omni.graffle.Timer;
    static function repeating(interval: Float, action: (Dynamic) -> Void): omni.graffle.Timer;
    var interval (default,never): Float;

    function cancel(): Void;
}

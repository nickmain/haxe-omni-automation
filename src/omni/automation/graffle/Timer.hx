package omni.automation.graffle;

@:native("Timer")
extern class Timer {
    // Makes a new Timer that will fire once, after the specified interval
    // (in seconds from the current time). When the Timer fires, the passed
    // in Function is called, passing the Timer as its argument.
    static function once(interval: Float, action: Timer -> Void): Timer;

    // Makes a new Timer that will fire repeatedly with the specified interval
    // (in seconds, with the first invocation happening that interval after the
    // current time). When the Timer fires, the passed in Function is called,
    // passing the Timer as its argument.
    static function repeating(interval: Float, action: Timer -> Void): Timer;

    var interval (default,null): Float;

    function cancel(): Void;
}

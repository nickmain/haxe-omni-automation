package omni.automation.graffle;

import omni.automation.common.Point;

@:native("NSWindow")
extern class NSWindow {

    var centerVisiblePoint: Point;

    var selection (default,null): Selection;

    function close(): Void;
}

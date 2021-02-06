// Automatically generated. Do not edit.

package omni.focus;

@:native("ForecastDay")
extern class ForecastDay {
    static var badgeCountsIncludeDeferredItems: Bool;
    var badgeCount (default,never): Float;
    var date (default,never): js.lib.Date;
    var deferredCount (default,never): Float;
    var kind (default,never): omni.focus.forecastday.Kind;
    var name (default,never): String;

    function badgeKind(): omni.focus.forecastday.Status;
}

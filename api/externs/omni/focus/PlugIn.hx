// Automatically generated. Do not edit.

package omni.focus;

@:native("PlugIn")
extern class PlugIn {
    static var all (default,never): Array<omni.focus.PlugIn>;
    static function find(identifier: String, minimumVersion: Null<omni.focus.Version>): Null<omni.focus.PlugIn>;
    var URL (default,never): Null<omni.focus.URL>;
    var actions (default,never): Array<omni.focus.plugin.Action>;
    var author (default,never): String;
    var description (default,never): String;
    var displayName (default,never): String;
    var handlers (default,never): Array<omni.focus.plugin.Handler>;
    var identifier (default,never): String;
    var libraries (default,never): Array<omni.focus.plugin.Library>;
    var version (default,never): omni.focus.Version;

    function library(identifier: String): Null<Dynamic>;
    function action(identifier: String): Null<omni.focus.plugin.Action>;
    function handler(identifier: String): Null<omni.focus.plugin.Handler>;
    function resourceNamed(name: String): Null<omni.focus.URL>;
    function imageNamed(name: String): Null<omni.focus.Image>;
}

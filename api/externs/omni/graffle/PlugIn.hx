// Automatically generated. Do not edit.

package omni.graffle;

@:native("PlugIn")
extern class PlugIn {
    static var all (default,never): Array<omni.graffle.PlugIn>;
    static function find(identifier: String, minimumVersion: Null<omni.graffle.Version>): Null<omni.graffle.PlugIn>;
    var URL (default,never): Null<omni.graffle.URL>;
    var actions (default,never): Array<omni.graffle.plugin.Action>;
    var author (default,never): String;
    var description (default,never): String;
    var displayName (default,never): String;
    var handlers (default,never): Array<omni.graffle.plugin.Handler>;
    var identifier (default,never): String;
    var libraries (default,never): Array<omni.graffle.plugin.Library>;
    var version (default,never): omni.graffle.Version;

    function library(identifier: String): Null<omni.graffle.plugin.Library>;
    function action(identifier: String): Null<omni.graffle.plugin.Action>;
    function handler(identifier: String): Null<omni.graffle.plugin.Handler>;
    function resourceNamed(name: String): Null<omni.graffle.URL>;
    function imageNamed(name: String): Null<omni.graffle.Image>;
    function localizedResourceNamed(filename: String): Null<omni.graffle.FileWrapper>;
}

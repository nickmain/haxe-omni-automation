// Automatically generated. Do not edit.

package omni.common;

@:native("PlugIn")
extern class PlugIn {
    static var all (default,never): Array<omni.common.PlugIn>;
    static function find(identifier: String, minimumVersion: Null<omni.common.Version>): Null<omni.common.PlugIn>;
    var URL (default,never): Null<omni.common.URL>;
    var actions (default,never): Array<omni.common.plugin.Action>;
    var author (default,never): String;
    var description (default,never): String;
    var displayName (default,never): String;
    var handlers (default,never): Array<omni.common.plugin.Handler>;
    var identifier (default,never): String;
    var libraries (default,never): Array<omni.common.plugin.Library>;
    var version (default,never): omni.common.Version;

    function library(identifier: String): Null<omni.common.plugin.Library>;
    function action(identifier: String): Null<omni.common.plugin.Action>;
    function handler(identifier: String): Null<omni.common.plugin.Handler>;
    function resourceNamed(name: String): Null<omni.common.URL>;
    function imageNamed(name: String): Null<omni.common.Image>;
}

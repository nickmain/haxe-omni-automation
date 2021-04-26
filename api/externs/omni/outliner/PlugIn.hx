// Automatically generated. Do not edit.

package omni.outliner;

@:native("PlugIn")
extern class PlugIn {
    static var all (default,never): Array<omni.outliner.PlugIn>;
    static function find(identifier: String, minimumVersion: Null<omni.outliner.Version>): Null<omni.outliner.PlugIn>;
    var URL (default,never): Null<omni.outliner.URL>;
    var actions (default,never): Array<omni.outliner.plugin.Action>;
    var author (default,never): String;
    var description (default,never): String;
    var displayName (default,never): String;
    var handlers (default,never): Array<omni.outliner.plugin.Handler>;
    var identifier (default,never): String;
    var libraries (default,never): Array<omni.outliner.plugin.Library>;
    var version (default,never): omni.outliner.Version;

    function library(identifier: String): Null<omni.outliner.plugin.Library>;
    function action(identifier: String): Null<omni.outliner.plugin.Action>;
    function handler(identifier: String): Null<omni.outliner.plugin.Handler>;
    function resourceNamed(name: String): Null<omni.outliner.URL>;
    function imageNamed(name: String): Null<omni.outliner.Image>;
}

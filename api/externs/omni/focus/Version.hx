// Automatically generated. Do not edit.

package omni.focus;

@:native("Version")
extern class Version {
    var versionString (default,never): String;

    function new(versionString: String);

    function equals(version: omni.focus.Version): Bool;
    function atLeast(version: omni.focus.Version): Bool;
    function isAfter(version: omni.focus.Version): Bool;
    function isBefore(version: omni.focus.Version): Bool;
}

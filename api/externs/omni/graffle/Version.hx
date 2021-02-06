// Automatically generated. Do not edit.

package omni.graffle;

@:native("Version")
extern class Version {
    var versionString (default,never): String;

    function new(versionString: String);

    function equals(version: omni.graffle.Version): Bool;
    function atLeast(version: omni.graffle.Version): Bool;
    function isAfter(version: omni.graffle.Version): Bool;
    function isBefore(version: omni.graffle.Version): Bool;
}

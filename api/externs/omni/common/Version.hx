// Automatically generated. Do not edit.

package omni.common;

@:native("Version")
extern class Version {
    var versionString (default,never): String;

    function new(versionString: String);

    function equals(version: omni.common.Version): Bool;
    function atLeast(version: omni.common.Version): Bool;
    function isAfter(version: omni.common.Version): Bool;
    function isBefore(version: omni.common.Version): Bool;
}

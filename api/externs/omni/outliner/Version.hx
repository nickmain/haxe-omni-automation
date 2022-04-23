// Automatically generated. Do not edit.

package omni.outliner;

@:native("Version")
extern class Version {
    var versionString (default,never): String;

    function new(versionString: String);

    function equals(version: omni.outliner.Version): Bool;
    function atLeast(version: omni.outliner.Version): Bool;
    function isAfter(version: omni.outliner.Version): Bool;
    function isBefore(version: omni.outliner.Version): Bool;
}

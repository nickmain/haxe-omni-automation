package omni.automation.common;

@:native("Version")
extern class Version {
    public function new(versionString: String);

    // Returns as an opaque string representation of the Version,
    // suitable for display or logging.
    // This should never be used in comparisons of any sort.
    var versionString (default,null): String;

    // Returns true if the receiving Version is equal to the argument Version.
    function equals(version: Version): Bool;

    // Returns true if the receiving Version is at the same as or newer than
    // the argument Version.
    function atLeast(version: Version): Bool;

    // Returns true if the receiving Version is strictly after the argument Version.
    function isAfter(version: Version): Bool;

    // Returns true if the receiving Version is strictly before the argument Version.
    function isBefore(version: Version): Bool;
}

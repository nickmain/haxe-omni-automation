package omni.automation.common;

@:native("PlugIn")
extern class PlugIn {

    static function find(identifier: String, ?minimumVersion: Version): Null<PlugIn>;

    static var all (default,null): Array<PlugIn>;

    // Returns the original URL from whence this PlugIn came, if known.
    var URL (default,null): Null<URL>;

    // No documentation available.
    // TODO: var actions → Array of PlugIn.Action read-only

    // Returns the localized, human-readable name for the PlugIn.
    var displayName (default,null): String;

    // No documentation available.
    var handlers (default,null): Array<PlugInHandler>;

    // The unique identifier of the PlugIn.
    var identifier (default,null): String;

    // No documentation available.
    // TODO: var libraries → Array of PlugIn.Library read-only

    // Returns the current Version for the PlugIn.
    var version (default,null): Version;
}

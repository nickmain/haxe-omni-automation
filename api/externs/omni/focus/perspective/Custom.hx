// Automatically generated. Do not edit.

package omni.focus.perspective;

@:native("Perspective.Custom")
extern class Custom extends omni.focus.DatedObject {
    static var all (default,never): Array<omni.focus.perspective.Custom>;
    static function byName(name: String): Null<omni.focus.perspective.Custom>;
    static function byIdentifier(identifier: String): Null<omni.focus.perspective.Custom>;
    var identifier (default,never): String;
    var name (default,never): String;

    function fileWrapper(): omni.common.FileWrapper;
    function writeFileRepresentationIntoDirectory(parentURL: omni.common.URL): omni.common.URL;
}

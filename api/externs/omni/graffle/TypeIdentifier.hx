// Automatically generated. Do not edit.

package omni.graffle;

@:native("TypeIdentifier")
extern class TypeIdentifier {
    static var URL (default,never): omni.graffle.TypeIdentifier;
    static var binaryPropertyList (default,never): omni.graffle.TypeIdentifier;
    static var csv (default,never): omni.graffle.TypeIdentifier;
    static var editableTypes (default,never): Array<omni.graffle.TypeIdentifier>;
    static var gif (default,never): omni.graffle.TypeIdentifier;
    static var image (default,never): omni.graffle.TypeIdentifier;
    static var jpeg (default,never): omni.graffle.TypeIdentifier;
    static var json (default,never): omni.graffle.TypeIdentifier;
    static var pdf (default,never): omni.graffle.TypeIdentifier;
    static var plainText (default,never): omni.graffle.TypeIdentifier;
    static var png (default,never): omni.graffle.TypeIdentifier;
    static var propertyList (default,never): omni.graffle.TypeIdentifier;
    static var readableTypes (default,never): Array<omni.graffle.TypeIdentifier>;
    static var rtf (default,never): omni.graffle.TypeIdentifier;
    static var rtfd (default,never): omni.graffle.TypeIdentifier;
    static var tiff (default,never): omni.graffle.TypeIdentifier;
    static var writableTypes (default,never): Array<omni.graffle.TypeIdentifier>;
    static var xmlPropertyList (default,never): omni.graffle.TypeIdentifier;
    var displayName (default,never): String;
    var identifier (default,never): String;
    var pathExtensions (default,never): Array<String>;

    function new(identifier: String);

    function conformsTo(other: omni.graffle.TypeIdentifier): Bool;
}

// Automatically generated. Do not edit.

package omni.outliner;

@:native("TypeIdentifier")
extern class TypeIdentifier {
    static var URL (default,never): omni.outliner.TypeIdentifier;
    static var binaryPropertyList (default,never): omni.outliner.TypeIdentifier;
    static var csv (default,never): omni.outliner.TypeIdentifier;
    static var editableTypes (default,never): Array<omni.outliner.TypeIdentifier>;
    static var gif (default,never): omni.outliner.TypeIdentifier;
    static var image (default,never): omni.outliner.TypeIdentifier;
    static var jpeg (default,never): omni.outliner.TypeIdentifier;
    static var json (default,never): omni.outliner.TypeIdentifier;
    static var pdf (default,never): omni.outliner.TypeIdentifier;
    static var plainText (default,never): omni.outliner.TypeIdentifier;
    static var png (default,never): omni.outliner.TypeIdentifier;
    static var propertyList (default,never): omni.outliner.TypeIdentifier;
    static var readableTypes (default,never): Array<omni.outliner.TypeIdentifier>;
    static var rtf (default,never): omni.outliner.TypeIdentifier;
    static var rtfd (default,never): omni.outliner.TypeIdentifier;
    static var tiff (default,never): omni.outliner.TypeIdentifier;
    static var writableTypes (default,never): Array<omni.outliner.TypeIdentifier>;
    static var xmlPropertyList (default,never): omni.outliner.TypeIdentifier;
    var displayName (default,never): String;
    var identifier (default,never): String;
    var pathExtensions (default,never): Array<String>;

    function new(identifier: String);

    function conformsTo(other: omni.outliner.TypeIdentifier): Bool;
}

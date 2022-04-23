// Automatically generated. Do not edit.

package omni.graffle;

@:native("TypeIdentifier")
extern class TypeIdentifier {
    var displayName (default,never): String;
    var identifier (default,never): String;
    var pathExtensions (default,never): Array<String>;

    function new(identifier: String);

    function conformsTo(other: omni.graffle.TypeIdentifier): Bool;
}

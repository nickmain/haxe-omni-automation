// Automatically generated. Do not edit.

package omni.outliner;

@:native("Style")
extern class Style {
    var fontFillColor: omni.outliner.Color;
    var link (default,never): Null<omni.outliner.URL>;
    var locallyDefinedAttributes (default,never): Array<omni.outliner.style.Attribute>;
    var namedStyles (default,never): Array<omni.outliner.NamedStyle>;

    function set(attribute: omni.outliner.style.Attribute, value: Null<Dynamic>): Bool;
    function get(attribute: omni.outliner.style.Attribute): Null<Dynamic>;
    function localValueForAttribute(attribute: omni.outliner.style.Attribute): Null<Dynamic>;
    function addNamedStyle(namedStyle: omni.outliner.NamedStyle): Void;
    function removeNamedStyle(namedStyle: omni.outliner.NamedStyle): Void;
    function influencedBy(otherStyle: omni.outliner.Style): Bool;
    function setStyle(style: omni.outliner.Style): Void;
    function clear(): Void;
}

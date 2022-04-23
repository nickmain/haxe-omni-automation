// Automatically generated. Do not edit.

package omni.focus;

@:native("Style")
extern class Style {
    var fontFillColor: omni.focus.Color;
    var link (default,never): Null<omni.focus.URL>;
    var locallyDefinedAttributes (default,never): Array<omni.focus.style.Attribute>;
    var namedStyles (default,never): Array<omni.focus.NamedStyle>;

    function set(attribute: omni.focus.style.Attribute, value: Null<Dynamic>): Bool;
    function get(attribute: omni.focus.style.Attribute): Null<Dynamic>;
    function localValueForAttribute(attribute: omni.focus.style.Attribute): Null<Dynamic>;
    function addNamedStyle(namedStyle: omni.focus.NamedStyle): Void;
    function removeNamedStyle(namedStyle: omni.focus.NamedStyle): Void;
    function influencedBy(otherStyle: omni.focus.Style): Bool;
    function setStyle(style: omni.focus.Style): Void;
    function clear(): Void;
}

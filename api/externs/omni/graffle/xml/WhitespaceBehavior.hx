// Automatically generated. Do not edit.

package omni.graffle.xml;

@:native("XML.WhitespaceBehavior")
extern class WhitespaceBehavior {
    var defaultBehavior (default,never): omni.graffle.xml.whitespacebehavior.Type;

    function new(defaultBehavior: omni.graffle.xml.whitespacebehavior.Type);

    function setBehaviorForElementName(behavior: omni.graffle.xml.whitespacebehavior.Type, elementName: String): Void;
    function behaviorForElementName(elementName: String): omni.graffle.xml.whitespacebehavior.Type;
}

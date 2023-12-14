// Automatically generated. Do not edit.

package omni.focus.xml;

@:native("XML.WhitespaceBehavior")
extern class WhitespaceBehavior {
    var defaultBehavior (default,never): omni.focus.xml.whitespacebehavior.Type;

    function new(defaultBehavior: omni.focus.xml.whitespacebehavior.Type);

    function setBehaviorForElementName(behavior: omni.focus.xml.whitespacebehavior.Type, elementName: String): Void;
    function behaviorForElementName(elementName: String): omni.focus.xml.whitespacebehavior.Type;
}

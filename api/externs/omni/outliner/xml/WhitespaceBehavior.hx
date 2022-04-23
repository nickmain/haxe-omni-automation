// Automatically generated. Do not edit.

package omni.outliner.xml;

@:native("XML.WhitespaceBehavior")
extern class WhitespaceBehavior {
    var defaultBehavior (default,never): omni.outliner.xml.whitespacebehavior.Type;

    function new(defaultBehavior: omni.outliner.xml.whitespacebehavior.Type);

    function setBehaviorForElementName(behavior: omni.outliner.xml.whitespacebehavior.Type, elementName: String): Void;
    function behaviorForElementName(elementName: String): omni.outliner.xml.whitespacebehavior.Type;
}

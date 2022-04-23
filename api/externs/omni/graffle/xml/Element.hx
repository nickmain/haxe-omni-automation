// Automatically generated. Do not edit.

package omni.graffle.xml;

@:native("XML.Element")
extern class Element {
    var attributeCount (default,never): Float;
    var attributeNames (default,never): Array<String>;
    var children: Array<epistem.typescript.Helpers.Union2<String, omni.graffle.xml.Element>>;
    var childrenCount (default,never): Float;
    var lastChild (default,never): Null<epistem.typescript.Helpers.Union2<String, omni.graffle.xml.Element>>;
    var name (default,never): String;
    var stringContents (default,never): String;

    function new(name: String);

    function childAtIndex(childIndex: Float): Null<epistem.typescript.Helpers.Union2<String, omni.graffle.xml.Element>>;
    function insertChild(child: epistem.typescript.Helpers.Union2<String, omni.graffle.xml.Element>, childIndex: Float): Void;
    function appendChild(child: epistem.typescript.Helpers.Union2<String, omni.graffle.xml.Element>): Void;
    function removeChildAtIndex(childIndex: Float): Void;
    function removeAllChildren(): Void;
    function firstChildNamed(name: String): Null<omni.graffle.xml.Element>;
    function firstChildAtPath(path: String): Null<omni.graffle.xml.Element>;
    function firstChildWithAttribute(attribute: String, value: String): Null<omni.graffle.xml.Element>;
    function attributeNamed(name: String): Null<String>;
    function setAttribute(name: String, value: Null<String>): Void;
    function apply(f: (node: epistem.typescript.Helpers.Union2<String, omni.graffle.xml.Element>) -> Null<Dynamic>): Null<Dynamic>;
}

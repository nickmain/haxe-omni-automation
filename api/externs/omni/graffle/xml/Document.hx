// Automatically generated. Do not edit.

package omni.graffle.xml;

@:native("XML.Document")
extern class Document {
    static function fromData(data: omni.graffle.Data, whitespaceBehavior: Null<omni.graffle.xml.WhitespaceBehavior>): omni.graffle.xml.Document;
    var dtdPublicID (default,never): Null<String>;
    var dtdSystemID (default,never): Null<omni.graffle.URL>;
    var rootElement (default,never): omni.graffle.xml.Element;
    var schemaID (default,never): Null<omni.graffle.URL>;
    var schemaNamespace (default,never): Null<String>;
    var stringEncoding (default,never): omni.graffle.StringEncoding;
    var topElement (default,never): omni.graffle.xml.Element;
    var whitespaceBehavior (default,never): omni.graffle.xml.WhitespaceBehavior;

    function new(rootElement: epistem.typescript.Helpers.Union2<String, omni.graffle.xml.Element>, configuration: Null<omni.graffle.xml.document.Configuration>);

    function xmlData(): omni.graffle.Data;
    function addElement(name: String, f: () -> Null<Void>): Void;
    function appendString(string: String): Void;
    function setAttribute(attribute: String, value: Null<String>): Void;
}

// Automatically generated. Do not edit.

package omni.focus.xml;

@:native("XML.Document")
extern class Document {
    static function fromData(data: omni.focus.Data, whitespaceBehavior: Null<omni.focus.xml.WhitespaceBehavior>): omni.focus.xml.Document;
    var dtdPublicID (default,never): Null<String>;
    var dtdSystemID (default,never): Null<omni.focus.URL>;
    var rootElement (default,never): omni.focus.xml.Element;
    var schemaID (default,never): Null<omni.focus.URL>;
    var schemaNamespace (default,never): Null<String>;
    var stringEncoding (default,never): omni.focus.StringEncoding;
    var topElement (default,never): omni.focus.xml.Element;
    var whitespaceBehavior (default,never): omni.focus.xml.WhitespaceBehavior;

    function new(rootElement: epistem.typescript.Helpers.Union2<String, omni.focus.xml.Element>, configuration: Null<omni.focus.xml.document.Configuration>);

    function xmlData(): omni.focus.Data;
    function addElement(name: String, f: () -> Null<Void>): Void;
    function appendString(string: String): Void;
    function setAttribute(attribute: String, value: Null<String>): Void;
}

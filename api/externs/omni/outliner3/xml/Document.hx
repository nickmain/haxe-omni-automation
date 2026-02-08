// Automatically generated. Do not edit.

package omni.outliner.xml;

@:native("XML.Document")
extern class Document {
    static function fromData(data: omni.outliner.Data, whitespaceBehavior: Null<omni.outliner.xml.WhitespaceBehavior>): omni.outliner.xml.Document;
    var dtdPublicID (default,never): Null<String>;
    var dtdSystemID (default,never): Null<omni.outliner.URL>;
    var rootElement (default,never): omni.outliner.xml.Element;
    var schemaID (default,never): Null<omni.outliner.URL>;
    var schemaNamespace (default,never): Null<String>;
    var stringEncoding (default,never): omni.outliner.StringEncoding;
    var topElement (default,never): omni.outliner.xml.Element;
    var whitespaceBehavior (default,never): omni.outliner.xml.WhitespaceBehavior;

    function new(rootElement: epistem.typescript.Helpers.Union2<String, omni.outliner.xml.Element>, configuration: Null<omni.outliner.xml.document.Configuration>);

    function xmlData(): omni.outliner.Data;
    function addElement(name: String, f: () -> Null<Void>): Void;
    function appendString(string: String): Void;
    function setAttribute(attribute: String, value: Null<String>): Void;
}

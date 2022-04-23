// Automatically generated. Do not edit.

package omni.outliner;

@:native("Text")
extern class Text {
    static function makeFileAttachment(fileWrapper: omni.outliner.FileWrapper, style: omni.outliner.Style): omni.outliner.Text;
    var attachments (default,never): Array<omni.outliner.Text>;
    var attributeRuns (default,never): Array<omni.outliner.Text>;
    var characters (default,never): Array<omni.outliner.Text>;
    var end (default,never): omni.outliner.text.Position;
    var fileWrapper (default,never): Null<omni.outliner.FileWrapper>;
    var paragraphs (default,never): Array<omni.outliner.Text>;
    var range (default,never): omni.outliner.text.Range;
    var sentences (default,never): Array<omni.outliner.Text>;
    var start (default,never): omni.outliner.text.Position;
    var string: String;
    var style (default,never): omni.outliner.Style;
    var words (default,never): Array<omni.outliner.Text>;

    function new(string: String, style: omni.outliner.Style);

    function textInRange(range: omni.outliner.text.Range): omni.outliner.Text;
    function styleForRange(range: omni.outliner.text.Range): omni.outliner.Style;
    function ranges(component: omni.outliner.TextComponent, useEnclosingRange: Null<Bool>): Array<omni.outliner.text.Range>;
    function replace(range: omni.outliner.text.Range, with_: omni.outliner.Text): Void;
    function append(text: omni.outliner.Text): Void;
    function insert(position: omni.outliner.text.Position, text: omni.outliner.Text): Void;
    function remove(range: omni.outliner.text.Range): Void;
    function find(string: String, options: Null<Array<omni.outliner.text.FindOption>>, range: Null<omni.outliner.text.Range>): Null<omni.outliner.text.Range>;
}

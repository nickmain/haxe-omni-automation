// Automatically generated. Do not edit.

package omni.focus;

@:native("Text")
extern class Text {
    static function makeFileAttachment(fileWrapper: omni.common.FileWrapper, style: omni.focus.Style): omni.focus.Text;
    var attachments (default,never): Array<omni.focus.Text>;
    var attributeRuns (default,never): Array<omni.focus.Text>;
    var characters (default,never): Array<omni.focus.Text>;
    var end (default,never): omni.focus.text.Position;
    var fileWrapper (default,never): Null<omni.common.FileWrapper>;
    var paragraphs (default,never): Array<omni.focus.Text>;
    var range (default,never): omni.focus.text.Range;
    var sentences (default,never): Array<omni.focus.Text>;
    var start (default,never): omni.focus.text.Position;
    var string: String;
    var style (default,never): omni.focus.Style;
    var words (default,never): Array<omni.focus.Text>;

    function new(string: String, style: omni.focus.Style);

    function textInRange(range: omni.focus.text.Range): omni.focus.Text;
    function styleForRange(range: omni.focus.text.Range): omni.focus.Style;
    function ranges(component: omni.focus.TextComponent, useEnclosingRange: Null<Bool>): Array<omni.focus.text.Range>;
    function replace(range: omni.focus.text.Range, with_: omni.focus.Text): Void;
    function append(text: omni.focus.Text): Void;
    function insert(position: omni.focus.text.Position, text: omni.focus.Text): Void;
    function remove(range: omni.focus.text.Range): Void;
    function find(string: String, options: Null<Array<omni.focus.text.FindOption>>, range: Null<omni.focus.text.Range>): Null<omni.focus.text.Range>;
}

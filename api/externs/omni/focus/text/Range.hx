// Automatically generated. Do not edit.

package omni.focus.text;

@:native("Text.Range")
extern class Range {
    var end (default,never): omni.focus.text.Position;
    var isEmpty (default,never): Bool;
    var start (default,never): omni.focus.text.Position;

    function new(start: omni.focus.text.Position, end: omni.focus.text.Position);

}

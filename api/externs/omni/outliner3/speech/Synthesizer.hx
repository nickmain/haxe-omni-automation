// Automatically generated. Do not edit.

package omni.outliner.speech;

@:native("Speech.Synthesizer")
extern class Synthesizer {
    var paused (default,never): Bool;
    var speaking (default,never): Bool;

    function new();

    function speakUtterance(utterance: omni.outliner.speech.Utterance): Void;
    function stopSpeaking(boundary: omni.outliner.speech.Boundary): Bool;
    function pauseSpeaking(boundary: omni.outliner.speech.Boundary): Bool;
    function continueSpeaking(): Bool;
}

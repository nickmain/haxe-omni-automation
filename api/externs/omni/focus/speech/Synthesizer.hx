// Automatically generated. Do not edit.

package omni.focus.speech;

@:native("Speech.Synthesizer")
extern class Synthesizer {
    var paused (default,never): Bool;
    var speaking (default,never): Bool;

    function new();

    function speakUtterance(utterance: omni.focus.speech.Utterance): Void;
    function stopSpeaking(boundary: omni.focus.speech.Boundary): Bool;
    function pauseSpeaking(boundary: omni.focus.speech.Boundary): Bool;
    function continueSpeaking(): Bool;
}

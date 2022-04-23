// Automatically generated. Do not edit.

package omni.graffle.speech;

@:native("Speech.Synthesizer")
extern class Synthesizer {
    var paused (default,never): Bool;
    var speaking (default,never): Bool;

    function new();

    function speakUtterance(utterance: omni.graffle.speech.Utterance): Void;
    function stopSpeaking(boundary: omni.graffle.speech.Boundary): Bool;
    function pauseSpeaking(boundary: omni.graffle.speech.Boundary): Bool;
    function continueSpeaking(): Bool;
}

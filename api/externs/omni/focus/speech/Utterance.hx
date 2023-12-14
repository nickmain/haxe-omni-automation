// Automatically generated. Do not edit.

package omni.focus.speech;

@:native("Speech.Utterance")
extern class Utterance {
    static var defaultSpeechRate (default,never): Float;
    static var maximumSpeechRate (default,never): Float;
    static var minimumSpeechRate (default,never): Float;
    var pitchMultiplier: Float;
    var postUtteranceDelay: Float;
    var preUtteranceDelay: Float;
    var prefersAssistiveTechnologySettings: Bool;
    var rate: Float;
    var string (default,never): Null<String>;
    var voice: Null<omni.focus.speech.Voice>;
    var volume: Float;

    function new(string: String);

}

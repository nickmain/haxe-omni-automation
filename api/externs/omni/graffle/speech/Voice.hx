// Automatically generated. Do not edit.

package omni.graffle.speech;

@:native("Speech.Voice")
extern class Voice {
    static var allVoices (default,never): Array<omni.graffle.speech.Voice>;
    static var currentLanguageCode (default,never): String;
    static function withLanguage(code: Null<String>): Null<omni.graffle.speech.Voice>;
    static function withIdentifier(identifier: String): Null<omni.graffle.speech.Voice>;
    var gender (default,never): omni.graffle.speech.voice.Gender;
    var identifier (default,never): String;
    var language (default,never): String;
    var name (default,never): String;

}

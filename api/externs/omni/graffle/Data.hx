// Automatically generated. Do not edit.

package omni.graffle;

@:native("Data")
extern class Data {
    static function fromString(string: String, encoding: Null<omni.graffle.StringEncoding>): omni.graffle.Data;
    static function fromBase64(string: String): omni.graffle.Data;
    var length (default,never): Float;
    var toObject (default,never): Null<Dynamic>;

    function toString(encoding: Null<omni.graffle.StringEncoding>): String;
    function toBase64(): String;
}

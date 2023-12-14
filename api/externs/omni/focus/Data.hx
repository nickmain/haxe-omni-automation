// Automatically generated. Do not edit.

package omni.focus;

@:native("Data")
extern class Data {
    static function fromString(string: String, encoding: Null<omni.focus.StringEncoding>): omni.focus.Data;
    static function fromBase64(string: String): omni.focus.Data;
    var length (default,never): Float;
    var toObject (default,never): Null<Dynamic>;

    function toString(encoding: Null<omni.focus.StringEncoding>): String;
    function toBase64(): String;
}

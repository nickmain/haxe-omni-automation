// Automatically generated. Do not edit.

package omni.common;

@:native("Data")
extern class Data {
    static function fromString(string: String): omni.common.Data;
    static function fromBase64(string: String): omni.common.Data;
    var length (default,never): Float;
    var toObject (default,never): Null<Dynamic>;

    function toString(): String;
    function toBase64(): String;
}

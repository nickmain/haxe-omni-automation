// Automatically generated. Do not edit.

package omni.outliner;

@:native("Data")
extern class Data {
    static function fromString(string: String, encoding: Null<omni.outliner.StringEncoding>): omni.outliner.Data;
    static function fromBase64(string: String): omni.outliner.Data;
    var length (default,never): Float;
    var toObject (default,never): Null<Dynamic>;

    function toString(encoding: Null<omni.outliner.StringEncoding>): String;
    function toBase64(): String;
}

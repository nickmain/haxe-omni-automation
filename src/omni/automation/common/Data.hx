package omni.automation.common;

@:native("Data")
extern class Data {

    // Convert from a String to the UTF8 encoding of that string as Data
    static function fromString(string: String): Data;

    static function fromBase64(string:String): Data;

    // Number of bytes in this data.
    var length (default,null): Null<Float>;

    // Convert to a String, assuming that this Data is encoded as UTF8.
    function toString(): String;

    // Convert to a Base–64 encoded string.
    function toBase64(): String;
}

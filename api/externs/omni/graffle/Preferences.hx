// Automatically generated. Do not edit.

package omni.graffle;

@:native("Preferences")
extern class Preferences {
    var identifier (default,never): String;

    function new(identifier: Null<String>);

    function read(key: String): Null<Dynamic>;
    function readBoolean(key: String): Bool;
    function readString(key: String): Null<String>;
    function readNumber(key: String): Float;
    function readDate(key: String): Null<js.lib.Date>;
    function readData(key: String): Null<omni.graffle.Data>;
    function write(key: String, value: Null<epistem.typescript.Helpers.Union5<Bool, String, Float, js.lib.Date, omni.graffle.Data>>): Void;
    function remove(key: String): Void;
}
